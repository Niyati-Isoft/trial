# ---------- Base image ----------
FROM python:3.11-slim

# ---------- Environment ----------
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV STREAMLIT_SERVER_PORT=8501
ENV STREAMLIT_SERVER_ADDRESS=0.0.0.0

# ---------- Workdir ----------
WORKDIR /app

# ---------- Install deps ----------
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# ---------- Copy app ----------
COPY . .

# ---------- Expose Streamlit port ----------
EXPOSE 8501

# ---------- Run Streamlit ----------
CMD ["streamlit", "run", "app.py"]
