FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar primero las dependencias
COPY requirements.txt .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código
COPY . .

# Mover los archivos desde el subdirectorio 'App' al directorio raíz del contenedor
WORKDIR /app/App

EXPOSE 5000

# Ejecutar el archivo correctamente
CMD ["python", "app.py"]
