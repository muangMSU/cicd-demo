FROM nginx:alpine

# ก๊อปปี้ไฟล์หน้าเว็บไปใส่ใน Nginx
COPY index.html /usr/share/nginx/html/index.html

# เปลี่ยนพอร์ตเริ่มต้นของ Nginx จาก 80 เป็น 3000 ตามที่ NPM ของอาจารย์ตั้งไว้
RUN sed -i 's/listen       80;/listen       3000;/g' /etc/nginx/conf.d/default.conf

EXPOSE 3000