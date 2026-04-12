FROM python:3.8

WORKDIR /app
COPY . .

RUN python -m pip install --upgrade pip setuptools wheel

RUN pip install --no-cache-dir \
    -i https://pypi.org/simple \
    --trusted-host pypi.org \
    -r requirements.txt

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]