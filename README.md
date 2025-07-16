# BeMusic (Dockerized Version)

## 🐳 How to Run with Docker

1. Clone the repository:
   ```bash
   git clone https://github.com/yourname/BeMusic.git
   cd BeMusic
   ```

2. Build and run Docker containers:
   ```bash
   docker-compose up --build
   ```

3. Enter the container and run Laravel setup:
   ```bash
   docker exec -it laravel-app bash
   php artisan key:generate
   php artisan migrate
   ```

4. Access the app:
   - Laravel backend: http://localhost:8000
   - React frontend: http://localhost:5173
