# Use uma imagem base do Python
FROM python:3.11-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o contêiner
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instale as dependências
RUN pip install -r requirements.txt

# Exponha a porta em que a aplicação irá rodar
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]