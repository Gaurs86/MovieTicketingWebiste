<?php 
    


    // Include config file
    require_once "config.php";

    // Prepare a select statement
    $sql = mysqli_query($link,"SELECT movie_id,title,description,image FROM movie");
    $movies = array();

    while($row = mysqli_fetch_assoc($sql)) {
        $movies[] = $row;
    }

    
    
?>




<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Welcome</title>
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/styles.css">


  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

</head>

<body>
  <?php
    include('header.php');
  ?>

    <div class="container">
    <div class="row row-cols-1 row-cols-md-3 g-4">

        <?php 
            foreach ($movies as $movie) {
                echo "<div class='col'>
                <div class='card'>
                  <img src='images/movies/{$movie["image"]}' class='card-img-top' alt='...'>
                  <div class='card-body'>
                    <h5 class='card-title'>{$movie["title"]}</h5>
                    <p class='card-text'>{$movie["description"]}</p>
                  </div>
                </div>
              </div> ";
            }
            

        ?>
      

    </div>
  </div>

  </div>

  <?php
    include('footer.php');
  ?>

</body>

</html>