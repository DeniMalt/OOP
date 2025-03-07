<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Услуги | IT Solutions</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .service-card {
                transition: all 0.3s ease;
                border: none;
                border-radius: 15px;
                overflow: hidden;
            }
            .service-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            }
            .service-icon {
                width: 80px;
                height: 80px;
                background: #007bff;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: -10px auto 20px;
            }
            .tech-stack img {
                height: 40px;
                margin: 0 10px;
                opacity: 0.7;
                transition: opacity 0.3s;
            }
            .tech-stack img:hover {
                opacity: 1;
            }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-lg fixed-top">
            <div class="container">
                <a class="navbar-brand" href="/">IT Solutions</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link active" href="/">Главная</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/contacts">Контакты</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/about_us">О нас</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/feedback">Обратная связь</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main class="container pt-5 mt-5">
            <div class="text-center mb-5 py-5">
                <h1 class="display-4 fw-bold mb-3">Наши услуги</h1>
                <p class="lead text-muted">Профессиональные решения для вашего бизнеса</p>
            </div>

            <div class="row g-4 mb-5">
                <div class="col-md-4">
                    <div class="service-card bg-white p-4 text-center h-100">
                        <div class="service-icon">
                            <i class="fas fa-code fa-3x text-white"></i>
                        </div>
                        <h4>Веб-разработка</h4>
                        <p class="text-muted">Полный цикл создания современных веб-приложений</p>
                        <div class="tech-stack mt-3">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original.svg" alt="React">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg" alt="Node.js">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/django/django-plain.svg" alt="Django">
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="service-card bg-white p-4 text-center h-100">
                        <div class="service-icon">
                            <i class="fas fa-mobile-alt fa-3x text-white"></i>
                        </div>
                        <h4>Мобильные приложения</h4>
                        <p class="text-muted">Кроссплатформенная разработка для iOS и Android</p>
                        <div class="tech-stack mt-3">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg" alt="Flutter">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swift/swift-original.svg" alt="Swift">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kotlin/kotlin-original.svg" alt="Kotlin">
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="service-card bg-white p-4 text-center h-100">
                        <div class="service-icon">
                            <i class="fas fa-cloud fa-3x text-white"></i>
                        </div>
                        <h4>Облачные решения</h4>
                        <p class="text-muted">Развертывание и оптимизация облачной инфраструктуры</p>
                        <div class="tech-stack mt-3">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="AWS">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" alt="Docker">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kubernetes/kubernetes-plain.svg" alt="Kubernetes">
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="service-card bg-white p-4 text-center h-100">
                        <div class="service-icon">
                            <i class="fas fa-shield-alt fa-3x text-white"></i>
                        </div>
                        <h4>Кибербезопасность</h4>
                        <p class="text-muted">Полная защита ваших цифровых активов</p>
                        <div class="tech-stack mt-3">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" alt="Linux">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nginx/nginx-original.svg" alt="Nginx">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/firebase/firebase-plain.svg" alt="Firebase">
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="service-card bg-white p-4 text-center h-100">
                        <div class="service-icon">
                            <i class="fas fa-tools fa-3x text-white"></i>
                        </div>
                        <h4>Техническая поддержка</h4>
                        <p class="text-muted">Круглосуточная поддержка и обслуживание</p>
                        <div class="tech-stack mt-3">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jira/jira-original.svg" alt="Jira">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/slack/slack-original.svg" alt="Slack">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/trello/trello-plain.svg" alt="Trello">
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="service-card bg-white p-4 text-center h-100">
                        <div class="service-icon">
                            <i class="fas fa-chalkboard-teacher fa-3x text-white"></i>
                        </div>
                        <h4>Обучение</h4>
                        <p class="text-muted">Профессиональные курсы и тренинги</p>
                        <div class="tech-stack mt-3">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" alt="Python">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" alt="Java">
                            <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/go/go-original.svg" alt="Go">
                        </div>
                    </div>
                </div>
            </div>

            <section class="bg-light py-5 rounded-3 mb-5">
                <div class="container">
                    <h2 class="text-center mb-5">Почему выбирают нас?</h2>
                    <div class="row g-4">
                        <div class="col-md-3 text-center">
                            <div class="h1 text-primary mb-3"><i class="fas fa-award"></i></div>
                            <h5>10 лет опыта</h5>
                            <p class="text-muted">Работаем с 2013 года</p>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="h1 text-primary mb-3"><i class="fas fa-users"></i></div>
                            <h5>150+ проектов</h5>
                            <p class="text-muted">Успешно реализовано</p>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="h1 text-primary mb-3"><i class="fas fa-shield-alt"></i></div>
                            <h5>Гарантии</h5>
                            <p class="text-muted">12 месяцев поддержки</p>
                        </div>
                        <div class="col-md-3 text-center">
                            <div class="h1 text-primary mb-3"><i class="fas fa-headset"></i></div>
                            <h5>Поддержка 24/7</h5>
                            <p class="text-muted">Круглосуточная помощь</p>
                        </div>
                    </div>
                </div>
            </section>
        </main>

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
    </body>
</html>