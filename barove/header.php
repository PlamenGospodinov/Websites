<?php
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname = 'barove';
	$conn = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
?>
<!DOCTYPE html>
<html>
<head>
	<title>PHP Example</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header id = "main-header">
		<h1>Plovdiv Clubs</h1>
	</header>
	<main>
		<div id = "left">
			<ul>
				<li>
					<a href="index.php">Clubs</a>
				</li>
				<li>
					<a href="add.php">Add clubs</a>
				</li>
			</ul>
		</div>