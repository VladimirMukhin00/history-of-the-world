<!doctype html>
<html lang="ru">
  <head>
    <!-- Обязательные метатеги -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <!-- Font Awesome-->
    <script src="https://kit.fontawesome.com/f4f71e6e13.js" crossorigin="anonymous"></script>

    <!-- Custom Styling-->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Carlito:ital,wght@0,400;0,700;1,400;1,700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    <title>History of the World</title>
  </head>
  <body>
    <header class="container-fluid">
      <div class="container">
        <div class="row">
          <div class="col-4 iii">
            <h1>
              <a href="/">History of the World</a>
            </h1>
          </div>
          <nav class="col-8">
            <ul>
              <li><a href="#">Главная</a> </li>
              <li><a href="#">Галерея</a> </li>
              <li><a href="#">О сайте</a> </li>
              
              <li>
                <a href="#">
                  <i class="fa fa-user"></i>
                  Кабинет
                </a>
                <ul>
                  <li><a href="#">Админ панель</a> </li>
                  <li><a href="#">Выход</a> </li>
                </ul>
              </li>
            </ul>
          </nav>
        </div>

      </div>
    </header>
        
    <!--Блок карусели (начало)-->
    <div class="container">
      <div class="row">
        <h2 class="slider-title">Самые популярные статьи</h2>
      </div>
      <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/image1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="">Первый слайдик!</a></h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/image2.png" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="">Второй слайдик!</a></h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/image3.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="">Третий слайдик!вау</a></h5>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>

    <!--Блок карусели (конец)-->
    <!--Основная часть сайта под каруселькой (начало)-->
    <div class="container">
      <div class="content row">
        <!--Главный контент-->
        <div class="main-content col-md-9 col-12">
          <h2>Последнии публикации</h2>

          <div class="post row">
            <div class="img col-12 col-md-4">
              <img src="images/image4.jpg" alt="" class="img-thumbnail">
            </div>
            <div class="post_text col-12 col-md-8">
                <h3>
                    <a href="#">Не стоит прогибаться под изменчивый мир</a>
                </h3>
                <i class="far fa-user"> Владимир Мухин</i>
                <i class="far fa-calendar"> 31 октября, 2024</i>
                <p class="previem-text">
                  Папампапам парамапам вот так вот парампампам турум пум пум.
                  Вот этот его а тот его оооууууу ужасс как же можно так.
                  Ну короче вы поняли... (сайтик ещё совсем маленький и только учится делать 
                  свои первые шажочки:)

                </p>
            </div>
          </div>

          <div class="post row">
            <div class="img col-12 col-md-4">
              <img src="images/image4.jpg" alt="" class="img-thumbnail">
            </div>
            <div class="post_text col-12 col-md-8">
                <h3>
                    <a href="#">Не стоит прогибаться под изменчивый мир</a>
                </h3>
                <i class="far fa-user"> Владимир Мухин</i>
                <i class="far fa-calendar"> 31 октября, 2024</i>
                <p class="previem-text">
                  Папампапам парамапам вот так вот парампампам турум пум пум.
                  Вот этот его а тот его оооууууу ужасс как же можно так.
                  Ну короче вы поняли... (сайтик ещё совсем маленький и только учится делать 
                  свои первые шажочки:)

                </p>
            </div>
          </div>

        </div>
        <!--Сайтбар-контент-->
        <div class="sidebar col-md-3 col-12">

          <div class="section search">
            <h3>Поиск по сайту</h3>
            <form action="index1.html" method="post">
              <input type="text" name="search-term" class="text-input" placeholder="Введите запросик...">
            </form>
          </div>

          <div class="section topics">
            <h3>Разделы</h3>
            <ul>
              <li><a href="">Раздел 1</a></li>
              <li><a href="">Раздел 1</a></li>
              <li><a href="">Раздел 1</a></li>
              <li><a href="">Раздел 1</a></li>
              <li><a href="">Раздел 1</a></li>
              <li><a href="">Раздел 1</a></li>
              <li><a href="">Раздел 1</a></li>
            </ul>
          </div>

        </div>
      </div>
    </div>
    <!--Основная часть сайта под каруселькой (конец)-->
    <!--Фуутер-->
    <div class="footer container-fluid">
      <div class="footer-content container">
        <div class="row">
          <div class="footer-section about col-md-4 col-12">
            <h3 class="logo-text">History of the World</h3>
            <p>
              History of the World - это блог сделанный с целью информационного
              просвещения человечества по предмету "История".
            </p>
            <div class="contact">
              <span><i class="fas fa-phone"> &nbsp; +79243317792</i></span>
              <span><i class="fas fa-envelope"> &nbsp; vladimir.zed30@gmail.com</i></span>
            </div>
            <div class="socials">
              <a href="https://vk.com/id519143923"><i class="fab fa-vk"></i></a>
            </div>
          </div>

          <div class="footer-section links col-md-4 col-12">
            <h3>Ссылочки</h3>
            <br>
            <ul>
              <a href="">
                <li>Главная</li>
              </a>
              <a href="">
                <li>оооооооооооооооо</li>
              </a>
              <a href="">
                <li>Только скажи куда</li>
              </a>
              <a href="">
                <li>Только скажи куда</li>
              </a>
              <a href="https://github.com/VladimirMukhin00/history-of-the-world.git">
                <li>Репозиторий GitHub</li>
              </a>
            </ul>
          </div>

          <div class="footer-section contact-form col-md-4 col-12">
            <h3>Обратная связь</h3>
            <br>
            <form action="index1.html" method="post">
              <input type="email" name="email" class="text-input contact-input" placeholder="Введите ваш email">
              <textarea rows="4" name="message" class="text-input contact-input" placeholder="Введите сообщение"></textarea>
              <button type="submit" class="btn btn-big contact-btn">
                <i class="fas fa-envelope"></i>
                Отправить
              </button>
            </form>
          </div>

        <div>

        <div class="footer-bottom container-fluid">
          &copy; HistoryWorld.com | Designed by Vladimir_Mukhin
        </div>
      </div>
    </div>
    <!-- Необязательный JavaScript; выберите один из двух! -->

    <!-- Вариант 1: пакет Bootstrap с Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Вариант 2: отдельные JS для Popper и Bootstrap -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
</html>