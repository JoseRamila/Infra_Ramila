# Usa una imagen oficial de Python como base
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt y el código fuente al contenedor
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

# Exponer el puerto 5000 que Flask usará
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "proyecto_final.py"]
