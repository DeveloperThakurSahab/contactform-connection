<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap">
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<div class="container">
        <h1>Connect With Us</h1>
        <p>We would love to respond to your queries and help you succeed.<br>
            Feel free to get in touch with us.
        </p>
        <div class="contact-box">
            <div class="contact-left">
                <h3>Sent your request</h3>
                <form name="contact" method="post" action="ContactController">
                    <div class="input-row">
                        <div class="input-group">
                            <label>Name</label>
                            <input type="text" name="name" placeholder="Full Name">
                            <span id="name"></span>
                        </div>
                        <div class="input-group">
                            <label>Phone</label>
                            <input type="text" name="phone" placeholder="777-777-7777">
                            <span id="phone"></span>
                        </div>
                    </div>
                    <div class="input-row">
                        <div class="input-group">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="example123@gmail.com">
                            <span id="email"></span>
                        </div>
                        <div class="input-group">
                            <label>Subject</label>
                            <input type="text" name="subject" placeholder="Product Demo">
                        </div>
                    </div>

                    <label>Message</label>
                    <textarea rows="5" name="message"></textarea>
                    
                    <button type="submit" name="action" value="send">SEND</button>
                </form>
            </div>
            <div class="contact-right">
                <h3>Reach Us</h3>
                <table>
                    <tr>
                        <td>Email</td>
                        <td>mrrajput6780@gmail.com</td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>+91 626-738-0875</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>D-5th Floor, Shivshakti Appartment,<br>
                            Chandlodiya,Ahmedabad<br>
                            Gujarat 382481
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>