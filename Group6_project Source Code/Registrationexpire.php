<?php
$expiry_date=date("2016/01/15");
$t=time();
$now=date("Y/m/d",$t);
if($expiry_date>$now) //if expiry is greater means expiry-now>0
{
	
	include('registration.html');
}
else
{
	include('closed.html');
}
?>
