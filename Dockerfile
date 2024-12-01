# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de requisitos e instala las dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación Flask al contenedor
COPY . .

# Expón el puerto en el que la app Flask va a escuchar
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "proyecto_final.py"]
