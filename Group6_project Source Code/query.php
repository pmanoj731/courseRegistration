<?php
$n=$_POST['name'];  //Taking values from the form.
$e=$_POST['email'];
$msg=$_POST['message'];
$header="FROM:segrp6@noreply.com";



//creating values required to include in the email.
$subject="Query";
$message=" ".$n." has asked ".$msg.". Email is : ".$e;

$send= mail('segrp6@gmail.com',$subject,$message,$header);

// Shows a message if the email is sent or not.
if(!$send)
{
include("noquery.html");
}
else
{
include("query.html");
}
?>