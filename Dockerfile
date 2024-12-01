# Usa una imagen base de Python optimizada
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requerimientos y la aplicación
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Expón el puerto que utiliza Flask (puerto interno del contenedor)
EXPOSE 5000

# Comando para iniciar la aplicación
CMD ["python", "run.py"]
