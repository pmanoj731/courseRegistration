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

//get variables from the form
$name = $_POST['name'];
$mobile = $_POST['phone'];
$email = $_POST['email'];
$course = $_POST['course'];
$lecturer = $_POST['lecturers'];
$class_time = $_POST['class_time'];

require_once('/php/connection.php'); //connect to database

if($connection)
{
	//connected to the database. Perform required operations.
    //get number of rows with same email and name, if more than 3 then say only 3 times they can register.
    $get_data = mysqli_query($connection,"SELECT * FROM registrations where name='$name' AND email='$email'");
    $num_of_registrations = mysqli_num_rows($get_data);
    if($num_of_registrations>=3)
    {
        echo '<div class="warning">Quota exceeded. You are allowed to register to only 3 courses per semister.</div>';
    }
    else
    {
        //insert the data into the database and send the emails to the lecturer and student.
        $insert_data = mysqli_query($connection,"INSERT INTO registrations VALUES('','$name','$mobile','$email','$course','$lecturer','$class_time')");
        if($insert_data)
        {
            //echo '<div class="success">Data inserted.</div>';
            //get email id of lecturer from lecturer table and send email to lecturer and user.
            $get_lecturer_email = "SELECT lecturer_email FROM lecturers where lecturer_name = '$lecturer'";
            $result = mysqli_query($connection, $get_lecturer_email);

            if (mysqli_num_rows($result) > 0) 
                {
                    // output data of each row
                    while($row = mysqli_fetch_assoc($result)) 
	                   {
                            $send_email_to = $row['lecturer_email'];
                            $message = $name." with ROLL Number ".$mobile." has registered your class, @ ".$class_time;
                            $subject ="Registration successful";
                            $header = "FROM: segrp6@noreply.com";
                            $send = mail($send_email_to,$subject,$message,$header);
		                      if($send)
		                          {
			                         //email sent to professor.
			                         //echo "Thanks ".$name." for registering to my class, <br/> Regards, ".$lecturer.".";
                                     $to_address=$email;
									 $to_subject="REGISTRATION SUCESSFULL";
									 $message = "Hey ".$name.". You have successfully enrolled to ".$course. " for Spring 2016 semester. The course work starts on january 11th of 2016.";
									 $header="FROM:segrp6@noreply.com";
									 $sent_to_student = mail($to_address,$to_subject,$message,$header);
									 
									echo '<div class="success">Thanks '.$name.' for registering to my class.<br /> Regards, '.$lecturer.'.</div>';
									 break; 
		                          }
		                      else
		                          {
		                              //Failed to send the email.	
		                              echo '<div class="warning">Email was not sent to '.$send_email_to.'</div>';
                                      break;
		                          }
                        }
                }
            else 
                {
                  echo '<div class="warning">Lecturer email not found in the Database</div>';      
                }
        }
        else
        {
            //problem with query. QUERY DID NOT RUN
            echo '<div class="warning">OOPS! Something went wrong. Could not register. Please try again, After sometime.</div>';
        }
    }
}

else
{
	echo '<div class="warning">Failed to connect to db.</div>';
?>