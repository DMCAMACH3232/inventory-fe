FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Expone el puerto 3000 que espera Cloud Run por defecto
EXPOSE 3000

# Pasa el puerto 3000 al servidor dev
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "3000"]
