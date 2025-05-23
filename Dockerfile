# Use official Python base image
FROM python:3.10
# Set working directory
WORKDIR /app
# Copy your app files into the container
COPY . /app
# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# Expose the Streamlit default port
EXPOSE 8501
# Run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.enableCORS=false"]
