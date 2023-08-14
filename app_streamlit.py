# app_streamlit.py
import sklearn
import streamlit as st
import pandas as pd
import numpy as np
import pickle

# Configuramos la página de Streamlit
st.set_page_config(page_title="App de Predicción",
                   layout="centered",
                   initial_sidebar_state="auto")

# Definimos el título y la descripción de la aplicación 
st.title("App de predicción de fuga de clientes bancarios")
st.markdown("""Ésta aplicación predice la fuga de clientes bancarios.""")
st.markdown("""---""")

# Añadimos un encabezado para la sección de datos del usario en la barra lateral 
st.sidebar.header("Datos ingresados por el usuario")

# Permitimos al usuario cargar archivos csv o ingresar datos manualmente 
uploaded_file=st.sidebar.file_uploader("Cargue su archivo CSV",type=["csv"])

if uploaded_file is not None:
    input_df=pd.read_csv(uploaded_file)
else:
    def user_input_features():
        # Creamos controles deslizantes y cuadros de selección para que el usario ingrese datos
        CreditScore=st.sidebar.slider("Puntaje Crediticio",350,850)
        Geography=st.sidebar.slider("Geografía (España=1, Francia=2, Alemania=3)",1,2,3)
        Gender=st.sidebar.slider("Género (Mujer=0, Hombre=1)",0,1)
        Age=st.sidebar.slider("Edad",18,92)
        Tenure=st.sidebar.slider("Antiguedad del cliente",0,10)
        Balance=st.sidebar.slider("Balance de cuenta del cliente",0,250000)
        NumOfProducts=st.sidebar.slider("Número de productos bancarios",1,2,3)
        HasCrCard=st.sidebar.slider("Posee tarjeta de crédito (Si=1, No=0)",0,1)
        IsActiveMember=st.sidebar.slider("Miembro activo (Si=1, No=0)",0,1)
        EstimatedSalary=st.sidebar.slider("Salario",0,200000)

        # Creamos un diccionario con los datos ingresados por el usuario
        data = {
        'Puntaje Crediticio': CreditScore,
        'Geografía': Geography,
        'Género': Gender,
        'Edad': Age,
        'Años de Antiguedad': Tenure,
        'Balance cuenta [Euros]': Balance,
        'N° Productos bancarios': NumOfProducts,
        'Tarjeta de Crédito': HasCrCard,
        'Miembro Activo': IsActiveMember,
        'Salario': EstimatedSalary
          }
        
        # Convertimos el diccionario en un dataframe
        features=pd.DataFrame(data,index=[0])
        return features
    input_df=user_input_features()

# Seleccionamos sólo la primera fila
input_df=input_df[:1]
# Mostramos los datos ingresados por el usario en la página principal
st.subheader('Datos ingresados por el usario')

if uploaded_file is not None:
    st.write[input_df]
else:
    st.write('A la espera que se cargue el archivo CSV')
    st.write(input_df)

# Cargamos el modelo de clasificación previamente entrenado
load_clf=pickle.load(open('Churn_model.pkl','rb'))

#Aplicamos el modelo para realizar predicciones en base a los datos ingresados
prediction=load_clf.predict(input_df)
prediction_proba=load_clf.predict_proba(input_df)

col1,col2=st.columns(2)

with col1:
    st.subheader('Prediction')
    st.write(prediction)

with col2:
    st.subheader('Probabilidad de predicción')
    st.write(prediction_proba)

if prediction ==0:
    st.subheader('El cliente no se irá del banco')    
else:
    st.subheader('El cliente se irá del banco')
st.markdown("""---""")