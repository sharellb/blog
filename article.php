<!DOCTYPE html>

<?php
	include('inc/header.php');
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
		echo '<article>';
		echo '<h2>' . $row['title'] . '</a><br/></h2>';
		echo '<h3>' . $row['author'] . '<br/></h3>';
		echo '<p>' . $row['body'] . '<br/></p>';
		echo '<br/>';
		echo '</article>';
		mysql_close($connection);
	}
	include('inc/footer.php');
?>
</body>
</html>