
FROM python:3.8-slim

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8501

ENV NAME World

# Run app2.py when the container launches
CMD ["streamlit", "run", "app2.py"]