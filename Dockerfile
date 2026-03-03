#Imagen base de Python
FROM python:3.13.2-alpine3.21

# Establecer el directorio de trabajo del contenedor
WORKDIR /app

# Copiar los archivos de la aplicación al contenedor
COPY . /app

# Instalar las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que la aplicación se ejecutará
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

