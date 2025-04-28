# Usa nginx oficial
FROM nginx:alpine

# Elimina el default.conf
RUN rm /etc/nginx/conf.d/default.conf

# Copia tu propia configuración de nginx
COPY nginx.conf /etc/nginx/conf.d

# Copia tu carpeta dist al folder de nginx
COPY dist/ /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
