# Usar una imagen base con Python 3.11.4
FROM python:3.11.4-slim-bullseye

# Directorio de trabajo en el contenedor
WORKDIR /Frontend

# Copiar los archivos necesarios al contenedor
COPY app_streamlit.py /Frontend/app_streamlit.py
COPY Churn_model.pkl /Frontend/Churn_model.pkl
COPY Churn_modelling.csv /Frontend/Churn_modelling.csv
COPY modelo.py /Frontend/modelo.py
COPY requirements.txt /Frontend/requirements.txt


# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer los puertos para Streamlit
EXPOSE 8501

# Comando para ejecutar la aplicación Flask
CMD ["streamlit", "run", "app_streamlit.py"]


