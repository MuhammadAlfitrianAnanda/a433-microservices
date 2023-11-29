# Gunakan base image Node.js versi 14 dengan sistem operasi Alpine Linux yang ringan.
FROM node:14-alpine

# Tentukan working directory di dalam container sebagai /app.
WORKDIR /app

# Salin semua source code proyek ke dalam working directory di dalam container.
COPY . /app

# Atur environment variables agar aplikasi berjalan dalam mode produksi
# dan menggunakan container dengan nama item-db sebagai host database.
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Instal dependencies yang diperlukan untuk produksi dan lakukan build aplikasi.
RUN npm install --production --unsafe-perm && npm run build

# Ekspos bahwa aplikasi akan menggunakan port 8080 di dalam container.
EXPOSE 8080

# Ketika container diluncurkan, jalankan server dengan perintah npm start.
CMD ["npm", "start"]
