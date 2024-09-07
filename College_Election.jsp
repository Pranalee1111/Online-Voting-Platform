<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body style="background-color:whitesmoke;">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" style="color: brown;">OnVotor</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                    </li>
                </ul>
                <form class="d-flex ms-auto me-3" method="get" action="#">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-info" type="submit">Search</button>
                </form>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                       <i class="bi bi-person-circle"></i>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <form method="post" action="college.jsp">
        <div class="container mt-5">
            <div class="row">
                <div class="col-4">
                    <div class="card text-center mt-3" style="width: 20rem;">
                        <div class="card-body">
                            <div class="card-header">
                                <h1 class="card-title">Chair</h1>
                            </div>
                            <br>
                            <h4><p class="card-text text-muted">Chair Person</p></h4>
                            <br>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="chair" id="chair1" value="Chaitali Khachane">
                                <label class="form-check-label" for="chair1">
                                    Chaitali Khachane
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="chair" id="chair2" value="Pranalee Nanaware" >
                                <label class="form-check-label" for="chair2">
                                    Pranalee Nanaware
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="chair" id="chair3" value="Yashshri Patil">
                                <label class="form-check-label" for="chair3">
                                    Yashshri Patil
                                </label>
                            </div>
                            <br>
                        </div>
                     
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-center mt-3" style="width: 20rem;">
                        <div class="card-body">
                            <div class="card-header">
                                <h1 class="card-title">Vice Chair</h1>
                            </div>
                            <br>
                            <h4><p class="card-text text-muted">Vice Chair Person</p></h4>
                            <br>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="viceChair" id="viceChair1" value="Bhumika Khatti">
                                <label class="form-check-label" for="viceChair1">
                                   Bhumika Khatti
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="viceChair" id="viceChair2" value="Gayatri Adatiya">
                                <label class="form-check-label" for="viceChair2">
                                    Gayatri Adatiya
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="viceChair" id="viceChair3" value="Rutuja Patil">
                                <label class="form-check-label" for="viceChair3">
                                    Rutuja Patil
                                </label>
                            </div>
                            <br>
                        </div>
                        
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-center mt-3" style="width: 20rem;">
                        <div class="card-body">
                            <div class="card-header">
                                <h1 class="card-title">Administrator</h1>
                            </div>
                            <br>
                            <h4><p class="card-text text-muted">Administrator</p></h4>
                            <br>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="administrator" id="administrator1" value="Komal Londhe">
                                <label class="form-check-label" for="administrator1">
                                    Komal Londhe
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="administrator" id="administrator2" value="Raj Nanaware">
                                <label class="form-check-label" for="administrator2">
                                    Raj Nanaware
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="administrator" id="administrator3" value="Akshata">
                                <label class="form-check-label" for="administrator3">
                                    Akshata
                                </label>
                            </div>
                            <br>
                        </div>
                       
                    </div>
                </div>
            </div>
            
            <br><br>
                       <button type="submit" class="btn btn-outline-info ms-lg-4" style="width:200px">Login</button>
     
        </div>
       
    </form>
    <br><br>
     
</body>
</html>
