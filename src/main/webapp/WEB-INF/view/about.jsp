<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>О нас</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .hero-section {
                background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
                url('https://source.unsplash.com/random/1920x1080/?office');
                background-size: cover;
                color: white;
                padding: 120px 0;
            }
            .team-member img {
                width: 200px;
                height: 200px;
                object-fit: cover;
                border-radius: 50%;
            }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">IT Solutions</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/">Главная</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/contacts">Контакты</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/about_us">О нас</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/feedback">Обратная связь</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="hero-section text-center">
            <h1 class="display-4 mb-4">Кто мы такие?</h1>
            <p class="lead">Более 10 лет создаем цифровые решения для бизнеса</p>
        </div>

        <div class="container py-5">
            <div class="row g-5">
                <div class="col-md-6">
                    <h2>Наша история</h2>
                    <p class="lead">Начав с маленькой команды в 2013 году, мы выросли в международную компанию с офисами в 5 странах. Специализируемся на веб-разработке, мобильных приложениях и AI-решениях.</p>
                    <div class="mt-4">
                        <div class="progress mb-3">
                            <div class="progress-bar bg-success" style="width: 95%">Веб-разработка</div>
                        </div>
                        <div class="progress mb-3">
                            <div class="progress-bar bg-info" style="width: 80%">Мобильные приложения</div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar bg-warning" style="width: 65%">AI решения</div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <img src="https://avatars.mds.yandex.net/get-altay/10700095/2a0000018a9d4baa67cf914288d0d277f066/orig"
                         alt="Наш офис"
                         class="img-fluid rounded-3 shadow">
                </div>
            </div>

            <h2 class="text-center mt-5 mb-4">Команда</h2>
            <div class="row g-4">
                <div class="col-md-3 text-center">
                    <div class="team-member">
                        <img src="https://obj.altapress.ru/picture/575902/900x.jpg"
                             alt="Иван Петров"
                             class="mb-3">
                        <h5>Иван Петров</h5>
                        <p>CEO, Основатель</p>
                    </div>
                </div>
            </div>
        </div>

        <footer class="bg-dark text-white py-4 mt-auto">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p>&copy; 2023 IT Solutions. Все права защищены.</p>
                    </div>
                    <div class="col-md-6 text-end">
                        <a href="#" class="text-white me-3"><i class="fab fa-vk"></i></a>
                        <a href="#" class="text-white me-3"><i class="fab fa-telegram"></i></a>
                        <a href="#" class="text-white"><i class="fab fa-github"></i></a>
                    </div>
                </div>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://kit.fontawesome.com/ваш-код.js" crossorigin="anonymous"></script>
    </body>
</html>