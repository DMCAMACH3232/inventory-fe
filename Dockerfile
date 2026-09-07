FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Compila la aplicación frontend para producción
RUN npm run build

# Expone el puerto (por defecto 8000)
EXPOSE 8000

# Usa 'vite preview' o el servidor de producción usando la variable $PORT
CMD ["npx", "vite", "preview", "--host", "0.0.0.0", "--port", "8000"]
