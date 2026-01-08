import streamlit as st

st.set_page_config(page_title="DI App", layout="wide")
st.title("✅ Decision Intelligence App")

st.write("Streamlit is running in Azure 🎉")

st.write("OPENAI_KEY exists:", bool(__import__("os").getenv("OPENAI_API_KEY")))
