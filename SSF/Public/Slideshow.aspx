<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Slideshow.aspx.cs" Inherits="Public_Slideshow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<style>
.mySlides {display:none;}
</style>
</head>
<body>
    <form id="form1" runat="server">
  <div class="w3-content w3-section" style="height:466.66">
      <img class="mySlides" src="../Styles/Images/college.jpg" style="width:100%;margin:auto;height:400px;">
  
  <img class="mySlides" src="../Styles/Images/Admission2.jpg" style="width:100%">
  <img class="mySlides" src="../Styles/Images/admission.jpg" style="width:200px;margin:auto;height:200px;border-radius:50%">
</div>
 <script>
     var myIndex = 0;
     carousel();

     function carousel() {
         var i;
         var x = document.getElementsByClassName("mySlides");
         for (i = 0; i < x.length; i++) {
             x[i].style.display = "none";
         }
         myIndex++;
         if (myIndex > x.length) { myIndex = 1 }
         x[myIndex - 1].style.display = "block";
         setTimeout(carousel, 2000); // Change image every 2 seconds
     }
</script>
    </form>
</body>
</html>
