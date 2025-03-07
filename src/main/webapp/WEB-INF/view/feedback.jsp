<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Обратная связь | IT Solutions</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            .feedback-section {
                background: url('https://source.unsplash.com/random/1920x1080/?contact') center/cover;
                position: relative;
                z-index: 1;
            }
            .feedback-section::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(255,255,255,0.93);
                z-index: -1;
            }
            .form-card {
                border: none;
                border-radius: 20px;
                box-shadow: 0 15px 40px rgba(0,0,0,0.12);
                overflow: hidden;
                background: rgba(255,255,255,0.95);
            }
            .input-icon {
                position: absolute;
                left: 20px;
                top: 50%;
                transform: translateY(-50%);
                color: #6c757d;
                z-index: 4;
            }
            .form-control-lg {
                padding-left: 50px !important;
            }
            .contact-method-card {
                transition: all 0.3s ease;
                border: 2px solid transparent;
            }
            .contact-method-card:hover {
                transform: translateY(-5px);
                border-color: #007bff;
            }
            .step-indicator {
                display: flex;
                justify-content: center;
                margin-bottom: 2rem;
            }
            .step-dot {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                background: #dee2e6;
                margin: 0 5px;
                transition: all 0.3s ease;
            }
            .step-dot.active {
                background: #007bff;
                width: 30px;
                border-radius: 15px;
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
                            <a class="nav-link" href="/about_us">О нас</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="/feedback">Обратная связь</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main class="feedback-section py-5 mt-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="form-card p-4 p-md-5">
                            <div class="text-center mb-5">
                                <h1 class="display-5 fw-bold mb-3">Свяжитесь с нами</h1>
                            </div>

                            <div class="row g-5">
                                <div class="col-lg-5">
                                    <div class="h-100 p-4">
                                        <h4 class="mb-4">Контактные данные</h4>
                                        <div class="contact-method-card bg-light p-4 rounded-3 mb-4">
                                            <div class="d-flex align-items-center">
                                                <i class="fas fa-map-marker-alt fa-2x text-primary me-3"></i>
                                                <div>
                                                    <h6>Адрес офиса</h6>
                                                    <p class="mb-0 text-muted small">г. Москва, ул. Тверская, 18</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="contact-method-card bg-light p-4 rounded-3 mb-4">
                                            <div class="d-flex align-items-center">
                                                <i class="fas fa-phone fa-2x text-primary me-3"></i>
                                                <div>
                                                    <h6>Телефон</h6>
                                                    <p class="mb-0 text-muted small">+7 (495) 123-45-67</p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="contact-method-card bg-light p-4 rounded-3 mb-4">
                                            <div class="d-flex align-items-center">
                                                <i class="fas fa-envelope fa-2x text-primary me-3"></i>
                                                <div>
                                                    <h6>Электронная почта</h6>
                                                    <p class="mb-0 text-muted small">info@itsolutions.ru</p>
                                                </div>
                                            </div>
                                        </div>

                                        <hr class="my-4">

                                        <h5 class="mb-3">Социальные сети</h5>
                                        <div class="d-flex gap-3">
                                            <a href="#" class="btn btn-outline-dark btn-icon rounded-circle">
                                                <i class="fab fa-vk"></i>
                                            </a>
                                            <a href="#" class="btn btn-outline-dark btn-icon rounded-circle">
                                                <i class="fab fa-telegram"></i>
                                            </a>
                                            <a href="#" class="btn btn-outline-dark btn-icon rounded-circle">
                                                <i class="fab fa-github"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <form class="needs-validation" novalidate>
                                        <div class="row g-4">
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <input type="text"
                                                           class="form-control"
                                                           id="name"
                                                           placeholder="Иван Иванов"
                                                           required>
                                                    <label for="name">Ваше имя</label>
                                                    <div class="invalid-feedback">
                                                        Пожалуйста, введите ваше имя
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <input type="email"
                                                           class="form-control"
                                                           id="email"
                                                           placeholder="name@example.com"
                                                           required>
                                                    <label for="email">Email адрес</label>
                                                    <div class="invalid-feedback">
                                                        Пожалуйста, введите корректный email
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-floating">
                                                    <select class="form-select" id="subject" required>
                                                        <option value="">Выберите тему</option>
                                                        <option>Техническая поддержка</option>
                                                        <option>Коммерческое предложение</option>
                                                        <option>Жалоба</option>
                                                        <option>Сотрудничество</option>
                                                        <option>Другое</option>
                                                    </select>
                                                    <label for="subject">Тема обращения</label>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-floating">
                                                        <textarea class="form-control"
                                                                  id="message"
                                                                  style="height: 150px"
                                                                  placeholder="Ваше сообщение"
                                                                  required></textarea>
                                                    <label for="message">Сообщение</label>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="form-check">
                                                    <input class="form-check-input"
                                                           type="checkbox"
                                                           id="terms"
                                                           required>
                                                    <label class="form-check-label small text-muted" for="terms">
                                                        Согласен с <a href="#" class="text-decoration-none">политикой конфиденциальности</a>
                                                        и обработкой персональных данных
                                                    </label>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <button class="btn btn-primary w-100 py-3">
                                                    <i class="fas fa-paper-plane me-2"></i>Отправить сообщение
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <section class="mt-5 pt-4">
                                <h5 class="mb-4">Частые вопросы</h5>
                                <div class="accordion" id="faqAccordion">
                                    <div class="accordion-item">
                                        <h6 class="accordion-header">
                                            <button class="accordion-button"
                                                    type="button"
                                                    data-bs-toggle="collapse"
                                                    data-bs-target="#faqOne">
                                                Сколько времени занимает ответ?
                                            </button>
                                        </h6>
                                        <div id="faqOne"
                                             class="accordion-collapse collapse show"
                                             data-bs-parent="#faqAccordion">
                                            <div class="accordion-body small">
                                                Мы отвечаем на все обращения в течение 24 часов в рабочие дни.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
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
        <script>
            const steps = document.querySelectorAll('.step-dot');
            steps.forEach((step, index) => {
                step.addEventListener('click', () => {
                    steps.forEach(s => s.classList.remove('active'));
                    step.classList.add('active');
                });
            });

            (() => {
                'use strict'
                const forms = document.querySelectorAll('.needs-validation')
                Array.from(forms).forEach(form => {
                    form.addEventListener('submit', event => {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }
                        form.classList.add('was-validated')
                    }, false)
                })
            })()
        </script>
    </body>
</html>