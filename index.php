<?php session_start();
    include("path.php"); 
    // include("app/database/db.php");

?>

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
    <!--Куки-->

    <div class="cookie-block">
    <p>Можно взять ваши кукиес?</p>
    <button class="ok">Конечно</button>
    <button class="no">Нельзя!</button>
    </div>
    <script src="assets/js/scripts.js"></script>
    
    <!--Куки (конец)-->

    <!--Шапка-->
    <?php
    include("app/include/header.php"); // подключение шапки
    // $posts = selectAll('posts', ['status' => 1]);  // берем статьи с БД со статусом 1 - опубликованы
    $posts = selectAllFromPostsWithUsersOnIndex('posts', 'users');
    ?>
    <!--Шапка (конец)-->
    
    <!--Блок карусели (начало)-->
    <div class="container">
      <div class="row">
        <h2 class="slider-title">Топ публикации</h2>
      </div>
      <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="assets/images/image1.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="about.php">О сайте</a></h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="assets/images/posts/1734597058__mmydDVce5c.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="<?= BASE_URL . "single.php?post=18"?>">Мировоззрение - система взглядов и представлений о мире</a></h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="assets/images/posts/1734598060_4278-5.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="<?= BASE_URL . "single.php?post=19"?>">Версии происхождения Вселенной и Земли</a></h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="assets/images/posts/1734598592_orient.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="<?= BASE_URL . "single.php?post=20"?>">Цивилизации Древнего Востока</a></h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="assets/images/posts/1734600476_scale_1200.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
              <h5><a href="<?= BASE_URL . "single.php?post=21"?>">Древний Египет</a></h5>
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

          <?php foreach($posts as $post): ?>   <!--ВЫВОД СОЗДАННЫХ СТАТЕЙ С АДМИНКИ-->
          <div class="post row">
            <div class="img col-12 col-md-4">
              <img src="<?=BASE_URL . 'assets/images/posts/' . $post['img'] ?>" alt="<?=$post['title'];?>" class="img-thumbnail">
            </div>
            <div class="post_text col-12 col-md-8">
                <h3>
                    <a href="<?=BASE_URL . 'single.php?post=' . $post['id']; ?>"><?=substr($post['title'], 0, 120) . '...' ?></a>
                </h3>
                <i class="far fa-user"><?=$post['username'] ?></i>
                <i class="far fa-calendar"><?=$post['created_date'] ?></i>
                <div class="previem-text">
                <p class="previem-text">
                  <?=$post['content']?>
                </p> 
                </div>
            </div>
          </div>
          <?php endforeach; ?>

        </div>

        <!--Сайтбар-контент-->
        <?php
        include("app/include/sitebar.php"); // подключение сайтбара
        ?>
        <!--Сайтбар-контент (конец)-->

      </div>
    </div>
    <!--Основная часть сайта под каруселькой (конец)-->
    <!--Фуутер-->
    <?php
    include("app/include/footer.php"); // подключение подвальчика
    ?>
    <!--Фуутер (конец)-->

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