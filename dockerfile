# dockerfile para correr una app flask en un contenedor de docker

# Imagen base comparible con raspberry pi
FROM arm32v7/python:3.7.3-stretch

# Directorio de trabajo
WORKDIR /app

# Copiar el archivo de requerimientos
COPY requirements.txt .

# Instalar las dependencias
RUN pip install -r requirements.txt

# Copiar el resto de archivos
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Comando para correr la app
CMD ["python", "app.py"]
