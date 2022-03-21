import pandas as pd
import streamlit as st

import waste

st.title('Austin Waste Management')

@st.cache
def get_data():
    df_clean = waste.get_clean_data()
    return df_clean

df = get_data()
st.dataframe(df.head())