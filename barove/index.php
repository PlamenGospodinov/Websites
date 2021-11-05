<?php
	include 'header.php';
?>
		<div id = "right">
			<h2>Hello main!</h2>
			<table border="1">
				<tr>
					<th>ID</th>
					<th>name</th>
					<th>genre</th>
					<th>rank</th>
				</tr>
				<?php
					$result = mysqli_query($conn,"SELECT * FROM barove");
					while($r = mysqli_fetch_assoc($result)){
						echo "<tr>";
						echo "<td>" . $r['id'] . "</td>";
						echo "<td>" . $r['name'] . "</td>";
						echo "<td>" . $r['genre'] . "</td>";
						echo "<td>" . $r['rank'] . "</td>";
						echo "</tr>";
					}
				?>
			</table>
		</div>
<?php
	include 'footer.php';
?>
	