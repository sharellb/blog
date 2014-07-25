<!DOCTYPE html>

<?php

	include('inc/header.php');
	$localhost = 'localhost';
	$username = 'root';
	$password = 'test54321';
	$connection = mysql_connect($localhost, $username, $password);

	if (!$connection) {
  		die('Unable to connect: ' . mysql_errno());
	}

	if ($connection) {
		$db_selected = mysql_select_db("sharell_blog");
		$result = mysql_query('SELECT * FROM articles ORDER BY id DESC');
  		if($result === FALSE) {
    		die(mysql_error());
		}

			while ($row = mysql_fetch_array($result)) {
				echo '<article>';
				echo '<h2><a href="/sharellb/blog/article.php?id=' . $row['id'] . '">' . $row['title'] . '</a><br/></h2>';
				echo '<h3>' . $row['author'] . '<br/></h3>';
				echo '<p>' . $row['body'] . '<br/><p>';
				echo '<br/>';
				echo '</article>';
			}
		mysql_close($connection);
	}
	include('inc/footer.php');
?>
