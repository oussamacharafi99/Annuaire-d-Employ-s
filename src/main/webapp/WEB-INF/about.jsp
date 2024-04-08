<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <style>
 	 h1 {
            text-transform: uppercase;
            text-align: center;
            color: white;
            font-size: 30px;
            padding: 20px 5px;
            background: grey;
        }

        #hr{
            width: 50px;
            border: 10px solid white;
            margin: 5px auto;
        }
 </style>

<meta charset="ISO-8859-1">
<title>à propos</title>
</head>


<body>
<%@ include file="header.jsp" %>


<div class="container my-5 border border-light p-4">
    <h1 class="text-center mb-4">À Propos</h1>
    <hr class="bg-light">
    <div class="row">
        <div class="col-md-6">
            <p class="text-justify text-light">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vehicula, nisi sit amet convallis dictum, ligula risus eleifend lacus, eget vehicula est arcu a odio. Duis efficitur posuere mauris, at tincidunt ante mattis vel. Aliquam tempor magna vel lectus efficitur posuere. Duis sed massa nec sapien luctus commodo. Aliquam erat volutpat. Vestibulum ac leo at leo accumsan scelerisque sit amet non ligula. Proin in erat varius, pulvinar lorem et, venenatis odio. Mauris aliquet consectetur felis, nec luctus tortor tristique at. Suspendisse potenti. Nullam molestie risus non metus posuere, id ullamcorper velit malesuada. Integer tincidunt ligula nec velit lobortis auctor.
            </p>
        </div>
        <div class="col-md-6">
            <p class="text-justify text-light">
                Nullam eu nibh vel sapien tempus vehicula id in magna. Sed dictum scelerisque metus, sed facilisis nunc sollicitudin non. Ut tristique ante quis orci lacinia, id volutpat risus iaculis. Morbi malesuada massa vel leo sollicitudin, et eleifend lectus interdum. Vestibulum blandit odio quis nisi convallis, eu tempus nulla tempus. Curabitur fringilla est et arcu ultrices, in lacinia leo fringilla. Morbi ac felis eget nulla pretium vestibulum. Phasellus euismod eros vitae mi iaculis ultricies. Sed euismod suscipit augue, ac sollicitudin ex posuere in. Nam quis nisi quis libero consectetur efficitur ut eu odio. Donec in nisl eu arcu congue luctus. Donec rhoncus faucibus felis a venenatis. Morbi varius laoreet arcu, id pharetra ante blandit sed. Phasellus rutrum tincidunt massa, id vestibulum arcu imperdiet ac.
            </p>
        </div>
    </div>
</div>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>