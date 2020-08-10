<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>TODO APP</title>
<style>
      table {
        border-collapse: separate;
        border-spacing: 20px 0;
      }
      th,
      td {
        width: 150px;
        text-align: center;
        padding: 5px;
      }
    </style>

</head>
<body style="background-color:powderblue;">
	<font color="red">${errorMessage}</font>
	<div align="center">
  <h1>TODO APP</h1>
	<form method="post">
		<table style="with: 80%">
			<tr>
				<td>Name</td>
				<td style="margin-bottom:50px"><input type="text" name="name" required/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td ><input type="password" name="password" required/></td>
			</tr>
		</table><br>
		<input type="submit" />
	</form>
	</div>
</body>
</html>