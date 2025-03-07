<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Контакты | IT Solutions</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .contact-card {
                transition: all 0.3s ease;
                border: none;
                border-radius: 15px;
                overflow: hidden;
            }
            .contact-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            }
            .map-container {
                height: 400px;
                border-radius: 15px;
                overflow: hidden;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }
            .contact-icon {
                width: 60px;
                height: 60px;
                background: #007bff;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 1.5rem;
            }
        </style>
    </head>

    <body class="bg-light">

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
                            <a class="nav-link active" href="/contacts">Контакты</a>
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
                <h1 class="display-4 fw-bold mb-3">Наши контакты</h1>
                <p class="lead text-muted">Свяжитесь с нами удобным для вас способом</p>
            </div>

            <div class="row g-4 mb-5">
                <!-- Контактные карточки -->
                <div class="col-md-4">
                    <div class="contact-card bg-white p-4 text-center h-100">
                        <div class="contact-icon mx-auto">
                            <i class="fas fa-map-marker-alt fa-2x text-white"></i>
                        </div>
                        <h4>Офис в Москве</h4>
                        <p class="text-muted">ул. Тверская, 18<br>БЦ "Стандарт", 5 этаж</p>
                        <a href="#" class="btn btn-outline-primary">Посмотреть на карте</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-card bg-white p-4 text-center h-100">
                        <div class="contact-icon mx-auto">
                            <i class="fas fa-headset fa-2x text-white"></i>
                        </div>
                        <h4>Телефонная поддержка</h4>
                        <p class="text-muted">+7 (495) 123-45-67<br>Пн-Пт: 9:00 - 18:00</p>
                        <a href="tel:+74951234567" class="btn btn-outline-primary">Позвонить сейчас</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="contact-card bg-white p-4 text-center h-100">
                        <div class="contact-icon mx-auto">
                            <i class="fas fa-envelope fa-2x text-white"></i>
                        </div>
                        <h4>Электронная почта</h4>
                        <p class="text-muted">info@itsolutions.ru<br>support@itsolutions.ru</p>
                        <a href="mailto:info@itsolutions.ru" class="btn btn-outline-primary">Написать письмо</a>
                    </div>
                </div>
            </div>

            <div class="row g-4">
                <div class="col-lg-6">
                    <div class="map-container">
                        <iframe src="https://yandex.ru/map-widget/v1/?um=constructor%3Aad9d6c0a3b3b3b3b3b3b3b3b3b3b3b3b3&amp;source=constructor"
                                width="100%"
                                height="100%"
                                frameborder="0">
                        </iframe>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="bg-white p-4 rounded-3 shadow">
                        <h3 class="mb-4">Быстрая связь</h3>
                        <form>
                            <div class="mb-3">
                                <input type="text" class="form-control form-control-lg" placeholder="Ваше имя">
                            </div>
                            <div class="mb-3">
                                <input type="tel" class="form-control form-control-lg" placeholder="Телефон">
                            </div>
                            <div class="mb-3">
                                <textarea class="form-control" rows="4" placeholder="Сообщение"></textarea>
                            </div>
                            <button class="btn btn-primary w-100 btn-lg">
                                <i class="fas fa-paper-plane me-2"></i>Отправить запрос
                            </button>
                        </form>
                    </div>
                </div>
            </div>

            <section class="my-5 pt-5">
                <h2 class="text-center mb-5">Частые вопросы</h2>
                <div class="accordion" id="faqAccordion">
                    <div class="accordion-item">
                        <h3 class="accordion-header">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#faq1">
                                Как добраться до офиса?
                            </button>
                        </h3>
                        <div id="faq1" class="accordion-collapse collapse show" data-bs-parent="#faqAccordion">
                            <div class="accordion-body">
                                Наш офис находится в 5 минутах ходьбы от метро Тверская.
                                При выходе из метро поверните направо и идите прямо до БЦ "Стандарт".
                            </div>
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
                        <a href="                    <!-- Добавьте другие вопросы -->#" class="text-white me-3"><i class="fab fa-vk"></i></a>
                        <a href="#" class="text-white me-3"><i class="fab fa-telegram"></i></a>
                        <a href="#" class="text-white"><i class="fab fa-github"></i></a>
                    </div>
                </div>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>