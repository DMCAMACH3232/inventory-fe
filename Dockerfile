FROM node:20-alpine

WORKDIR /app

# Instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar código fuente
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para iniciar en modo desarrollo
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "8000"]
