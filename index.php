<!DOCTYPE html>
<html>
<head>
    <title>Лабораторная работа №5</title>
    <style>
        .table-wrapper {
            margin-bottom: 20px;
        }
        
        /* Стили для таблицы */
        table {
            border-collapse: collapse;
            width: 100%;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        /* Стили для контейнера с картинками */
        .box {
            display: flex;
            flex-wrap: wrap;
        }
        
        /* Стили для изображений */
        .img-widget {
            width: 200px;
            height: 200px;
            object-fit: cover;
            object-position: center;
            border-radius: 8px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<?php
    define('DB_HOST', 'localhost'); // Адрес
    define('DB_USER', 'root'); // Имя пользователя
    define('DB_PASSWORD', ''); // Пароль
    define('DB_NAME', 'mysql'); // Имя БД

    $mysql = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    if ($mysql->connect_error) {
        die('Ошибка подключения к базе данных: ' . $mysql->connect_error);
    }
?>

<?php
    $result = mysqli_query($mysql, 'SELECT * FROM terms');
?>

<h2>Таблица с данными о терминах и их определениях</h2>
<table>
    <tr>
        <th>Термин</th>
        <th>Определение</th>
    </tr>
    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
        <tr>
            <td><?php echo $row['term']; ?></td>
            <td><?php echo $row['definition']; ?></td>
        </tr>
    <?php } ?>
</table>

<h2>Набор картинок</h2>
<div class="box">
    <?php
    $result = mysqli_query($mysql, 'SELECT * FROM images');
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
        <div class="filters__img">
            <img class="img-widget" title="<?php echo $row['name']; ?>" src="<?php echo $row['src']; ?>"/>
        </div>
        <?php
    }
    ?>
</div>
</body>
</html>