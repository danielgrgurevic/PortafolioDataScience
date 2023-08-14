# Importamos las bibliotecas necesarias
import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
import pickle

# Leemos el dataset
df=pd.read_csv('Churn Modeling.csv')

# Eliminar filas innecesarias
df.drop(['RowNumber','CustomerId','Surname'], axis=1, inplace=True)

# Asignar variables numéricas
geography_mapping = {
    'Spain': 1,
    'France': 2,
    'Germany': 3
}
# Utilizamos la función replace para hacer el reemplazo
df['Geography'] = df['Geography'].replace(geography_mapping)

género = {
    'Female': 0,
    'Male': 1
}
# Utilizamos la función replace para hacer el reemplazo
df['Gender'] = df['Gender'].replace(género)

# Asignar variables
X = df.drop('Exited', axis=1)
y = df['Exited']

# Definir set de entrenamiento y test
std_scaler = StandardScaler()
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)
X_train = std_scaler.fit_transform(X_train)
X_test = std_scaler.transform(X_test)

# Entrenar modelo
clf = RandomForestClassifier()  # Crear una instancia de Random Forest Classifier
clf.fit(X_train, y_train)   # Ajustar modelo

# Guardamos el modelo entrenado en un archivo pkl
pickle.dump(clf,open('Churn_model.pkl','wb'))