<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer </title>
           <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <style>
             .ft-btn{
                    padding: .5rem 1rem;
                    background: #006669;
                    color: white;
                    border: 1px solid transparent;
                    border-radius: .25rem;
                }
                .btn-big{
                    padding: .7rem 1.3rem;
                    line-height: 1.3rem;
                }
                .ft-btn:hover{
                    color: white !important;
                    background: #005255;
                }
                a{
                    color: #bebdbd;
                }
                .text-input{
                    padding: .7rem 1rem;
                    display: block;
                    width: 100%;
                    border-radius: 5px;
                    border: 1px solid #e0e0e0;
                    outline: none;
                    color: #444;
                    line-height: 1.5rem;
                    font-size: 1.2em;
                }
           /* FOOTER SECTION */
                .footer{
                    background: #303036;
                    color: #d3d3d3;
                    height: 400px;
                    position: relative;
                }
                .footer .footer-content{
                    height: 350px;
                    display: flex;
                }
                .footer .footer-content .footer-section{
                    flex: 1;
                    padding: 25px;
                }
                .footer .footer-content h1,
                .footer .footer-content h2{
                    color: white;
                }
                .footer .footer-content .about h1 span{
                    color: #05f7ff;
                }
                .footer .footer-content .about .contact span{
                    display: block;
                    font-size: 1.1em;
                    margin-bottom: 8px; 
                }
                .footer .footer-content .about .socials a{
                    border: 1px solid grey;
                    width: 45px;
                    height: 41px;
                    padding-top: 9px;
                    margin-right: 5px;
                    text-align: center;
                    display: inline-block;
                    font-size: 1.3em;
                    border-radius: 5px;
                    transition: all .3s;
                }
                .footer .footer-content .links ul a{
                    display: block;
                    margin-bottom: 10px;
                    font-size: 1.2em;
                    transition: all .3s .1s;
                }
                .footer .footer-content .links ul a:hover{
                    color: white;
                    margin: 15px;
                    transition: all .3s .1s;
                }
                .footer .footer-content .about .socials a:hover{
                    color: white;
                    border: 1px solid white;
                    transition: all .3s;
                }
                .footer .footer-content .contact-form .contact-input{
                    background: #272727;
                    color: #bebdbd;
                    margin: 10px;
                    line-height: 1.5rem;
                    padding: .9rem 1.4rem;
                    border: none;
                }
                .footer .footer-content .contact-form .contact-btn{
                    float: right;
                }
                .footer .footer-content .contact-form .contact-input:focus{
                    background: #1a1a1a;
                }
                .footer .footer-bottom{
                    background: #343a40;
                    color: #686868;
                    height: 50px;
                    text-align: center;
                    position: absolute;
                    width: 100%;
                    bottom: 0px;
                    left: 0px;
                    padding-top: 20px;   
                }
        </style>
    </head>
    <body>
          <div class="footer">
            <div class="footer-content">
                <div class="footer-section about">
                    <h1 id="logo-text"><span>God</span>Shivam</h1>
                    <p>
                       GodShivam is a real estate website that provides the facility to list your property on multiple web sites through our platform.
                    </p>
                    <div class="contact">
                        <span><i class="fas fa-phone"> &nbsp; 123-456-789</i></span>
                        <span><i class="fas fa-envelope"> &nbsp; team@godshivam.com</i></span>
                    </div>
                    <div class="socials">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-section links">
                    <h2>Quick Links</h2>
                    <br>
                    <ul>
                        <a href="#"><li>Events</li></a>
                        <a href="#"><li>About Us</li></a>
                        <a href="#"><li>FAQ</li></a>
                        <a href="#"><li>Privacy Policy</li></a>
                        <a href="terms-service"><li>Terms and Conditions</li></a>
                    </ul>
                </div>
                <div class="footer-section contact-form">
                    <h2>Contact us</h2>
                    <br>
                    <form action="index.html" method="post">
                        <input type="email" name="email" class="text-input contact-input" placeholder="Your email address...">
                        <textarea name="message" class="text-input contact-input" placeholder="Your message..."></textarea>
                        <button type="submit" class="ft-btn btn-big contact-btn">
                            <i class="fas fa-envelope"></i>
                            Send                       
                        </button>
                    </form>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; GodShivam.com | All rights reserved
            </div>
        </div>
    </body>
</html>