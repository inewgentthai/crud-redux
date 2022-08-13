FROM node:alpine as builder

# Working Directory (WORKDIR)
WORKDIR /usr/app

# Copy package.json (ส่วนนี้ไม่ค่อยมีการเปลี่ยนแปลงจะดึงจาก cache ในรอบถัดไป)
COPY ./package.json .
RUN npm install
COPY . .
# RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "dev"]
