<!DOCTYPE html>
<html>
    <head>
        <style>
        .success
            {
           color:black;
	       font-size:1em;
	       border:1px solid green;
	       padding:6px;
	       text-align:center;
           font-weight:bold;
            }
            .warning
                {
	               color:black;
	               font-size:1em;
	               border:1px solid red;
	               padding:6px;
	               text-align:center;
                   font-weight:bold;
                }
        </style>
    </head>
</html>
<?php
require_once('/php/connection.php');

$get_lecturer_email = "SELECT lecturer_email FROM lecturers where lecturer_name = 'yhien liang'";
            $result = mysqli_query($connection, $get_lecturer_email);

            if (mysqli_num_rows($result) > 0) 
                {
                    // output data of each row
                    while($row = mysqli_fetch_assoc($result)) 
	                   {
                            $send_email_to = $row['lecturer_email'];
                            $message = $name." has registered your class, @ ".$class_time;
                            $subject ="Registration successful";
                            $send = mail($send_email_to,$subject,$message,'FROM: UCM CLASS REGISTRATION WEBSITE');
		                      if($send)
		                          {
			                         //email sent to professor.
			                         //echo "Thanks ".$name." for registering to my class, <br/> Regards, ".$lecturer.".";
                                     echo '<div class="warning">Thanks for registering.</div>';
		                          }
		                      else
		                          {
		                              //Failed to send the email.	
		                              echo '<div class="warning">Email was not sent.</div>';
		                          }
                        }
                }
            else 
                {
                  echo '<div class="warning">Lecturer email not found in the Database</div>';      
                }
?>