<?php
	include 'header.php';
	if(isset($_POST['add'])){
		$name = $_POST['name'];
		$genre = $_POST['genre'];
		$rank = $_POST['rank'];
		echo "<p>New club added!</p>";
		$update = mysqli_query($conn, "INSERT INTO `barove` ( `name`, `genre`, `rank`) VALUES ('$name', '$genre', '$rank')");
	}
?>
		<div id = "right">
			<h2>Add new club</h2>
			<form method="POST" action="">
				<label>Name: </label>
				<input type="text" name="name">
				<br>
				<label>Genre: </label>
				<input type="text" name="genre">
				<br>
				<label>Rank: </label>
				<input type="text" name="rank">
				<br>
				<input type="submit" name="add" value="Add club!">
			</form>
		</div>
<?php
	include 'footer.php';
?>
	