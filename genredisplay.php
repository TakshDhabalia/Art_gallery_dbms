<!DOCTYPE html>
<html>
<head>
 <title>Display Genre</title>
 <style>
  b{
    font-size: 30px;
    font-family: 'Arial';
    padding: 2px;
    text-align: center;
}
  table 
  {
   border-collapse: collapse;
   width: 100%;
   color: #588c7e;
   font-family: monospace;
   font-size: 25px;
   text-align: left;
   font-family:"Verdana";
   font-weight: bold;
   text-align: center;
   border-radius: 14px;
  } 
  th 
  {
   background-color: mediumslateblue;
   color: white;
   border-radius: 14px;
  }
  h1{
    font-family: "Arial";
    font-size: 50px;
    border: 9px solid mediumpurple;
    border-radius: 17px;
     color: black;
  }
  td{
    padding: 12px;
    border-radius: 14px;
  }
  tr:nth-child(even) {background-color: #f2f2f2; 
    border-radius: 14px;}
 </style>
</head>
<body style="background-color: lavenderblush">
  <h1><center><font style="border:9px solid mediumpurple"> DISPLAY CONTENTS /\/ CONTACTS TABLE </font></center></h1>
 <table>
 <tr>
  <th><br>Customer ID<br><br></th>  
  <th><br>Phone No.<br><br></th>
  <br><br>
 </tr>
 <?php

// Your MySQL connection details
$host = 'localhost';
$db = 'your_database';
$user = 'your_user';
$password = 'your_password';

// Create a new MySQL connection
$mysqli = new mysqli($host, $user, $password, $db);

// Check the connection
if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}

// Call the stored procedure
$sql = "CALL GET_GENRE()";

// Execute the SQL statement
$result = $mysqli->query($sql);

// Fetch and display the result
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "Artist Name: " . $row["artist_name"] . "<br>";
    }
} else {
    echo "No artists found!";
}

// Close the MySQL connection
$mysqli->close();

?>
</table>
</body>
</html>