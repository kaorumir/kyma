# Imagen base con Nginx
FROM nginx:alpine

# Remueve la página por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia el build de SAPUI5 al directorio público de Nginx
COPY dist/ /usr/share/nginx/html/

# Expone el puerto 80 (por defecto en Nginx)
EXPOSE 80

# Comando por defecto para iniciar el servidor
CMD ["nginx", "-g", "daemon off;"]
