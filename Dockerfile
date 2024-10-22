FROM python:3.13

RUN mkdir /usr/src/app

COPY src/main.py /usr/src/app

COPY requirements.txt /usr/src/app

WORKDIR /usr/src/app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the FastAPI app runs on
EXPOSE 80

CMD ["fastapi", "run", "main.py", "--port", "80"]