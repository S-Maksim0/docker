# Используем базовый образ Node.js
FROM node:18.15.0

# Установка рабочей директории внутри контейнера
WORKDIR /app

# Копирование зависимостей и исходного кода внутрь контейнера
COPY package*.json ./
COPY server.js .

# Установка зависимостей
RUN npm install

# Определение порта, который будет прослушиваться внутри контейнера
EXPOSE 3000

# Запуск приложения при старте контейнера
CMD [ "node", "server.js" ]
