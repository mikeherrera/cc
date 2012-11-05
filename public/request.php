<?php

require_once '../base.php' ;

if (isset($_POST['submit']))  {
  $mail = new PHPMailer() ;
  $mail->IsSMTP() ;
  $mail->SetFrom('info@continentalstudiosinc.com', 'Info - No Reply') ;
  $mail->Subject = 'Catalog Request' ;
  $mail->AddAddress('randy@continentalstudiosinc.com', 'Randy') ;
  $mail->SMTPAuth   = true ;
  $mail->SMTPSecure = "ssl" ;
  $mail->Host       = "smtp.gmail.com" ;
  $mail->Port       = 465 ;
  $mail->Username   = 'info@continentalstudiosinc.com' ;
  $mail->Password   = 'ccinfoemail' ;

  $company = $_POST['company'] ;
  $contact = $_POST['contact'] ;
  $phone = $_POST['phone'] ;
  $fax = $_POST['fax'] ;
  $email = $_POST['email'] ;
  $catalog_type = $_POST['catalog_type'] ;
  $address = $_POST['address'] ;
  $city = $_POST['city'] ;
  $state = $_POST['state'] ;
  $zip = $_POST['zip'] ;
  $tax_id = $_POST['tax_id'] ;

  $message = "Type of Catalog: $catalog_type <br />" ;
  $message .= "Company: $company <br />" ;
  $message .= "Contact: $contact <br />" ;
  $message .= "Address: $address <br />" ;
  $message .= "City: $city <br />State: $state <br />Zip: $zip <br />" ;
  $message .= "Phone: $phone <br />" ;
  $message .= "Fax: $fax <br />" ;
  $message .= "Email: $email <br />" ;
  $message .= "Tax ID: $tax_id <br />" ;
  
  $mail->MsgHTML($message) ;
  if (! $mail->Send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
  } 
  else {
    $smarty->display('request_success.tpl') ;
  }
}
else  {
  $smarty->display('request.tpl') ;
}
?>
