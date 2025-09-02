# HydroBus
   api ของ hydrobus app ควบคุม solanoin swicht ควบคุมนํ้า
   จุดเด่นคือ 
   - วางโครสร้างเเบบ cleanAcitecture
   - unittest ได้ทุกส่วน
     
      

## 🛠️ Tech Stack
- ภาษา / Framework / Library ที่ใช้
  node.js
  exprass
  prisma(orm)
  jest(unittesting)
- ฐานข้อมูล
  postgres 
- container
  Docker 

## ⚙️ Installation
วิธีติดตั้งโปรเจกต์บนเครื่องตัวเอง

```bash
# Clone repo
git clone https://github.com/username/repo.git
cd repo

# ติดตั้ง dependencies
npm install

# สร้าง database
docker compose up -d

# รันโปรเจกต์
npm start
