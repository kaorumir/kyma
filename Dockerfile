# Imagen base con Nginx
FROM nginx:alpine

# Copiamos la aplicación SAPUI5 generada en /dist al directorio de Nginx
COPY dist/ /usr/share/nginx/html

# (Opcional) Reemplaza el default.conf si necesitas redirecciones específicas
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto (por si lo necesitas en local o Docker Desktop)
EXPOSE 80
