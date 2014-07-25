<!DOCTYPE html>
<html>
<body>
<h1>Blog Title</h1>
<?php
	$localhost = 'localhost';
	$username = 'root';
	$password = '';
	$connection = mysql_connect($localhost, $username, $password);

	if (!$connection) {
  		die('Unable to connect: ' . mysql_errno());
	}

	if ($connection) {
		$db_selected = mysql_select_db("sharell_blog");
		$article = $_GET['id'];
		$result = mysql_query("SELECT * FROM articles WHERE id = ' " . $article . " ' ");

  		if($result === FALSE) {
    		die(mysql_error());
		}	

		$row = mysql_fetch_array($result);

		echo '<h1>' . $row['title'] . '</a><br/></h>';
		echo '<h3>' . $row['author'] . '<br/></h3>';
		echo '<p>' . $row['body'] . '<br/></p>';
		echo '<br/>';

		mysql_close($connection);
	}
?>
</body>
</html>