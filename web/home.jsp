<%-- 
    Document   : home
    Created on : 27 jun 2024, 15:38:19
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
            color: #343a40;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header img {
            height: 40px;
        }
        .sidebar {
            background-color: #343a40;
            color: white;
            padding: 1rem;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            width: 200px;
            overflow-y: auto;
            padding-top: 60px; /* To avoid overlap with header */
        }
        .sidebar .nav-link {
            color: white;
        }
        .main-content {
            margin-left: 200px;
            padding: 2rem;
            flex-grow: 1;
        }
        .card {
            margin-bottom: 2rem;
        }
        .chart-container {
            position: relative;
            height: 40vh;
        }
    </style>
    <title>Dashboard Elegante</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-bell"></i> 
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-cog"></i> 
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="https://cdn4.iconfinder.com/data/icons/man-user-human-person-business-profile-avatar/100/20-1User_13-512.png" alt="Usuario" class="user-avatar" style="height: 30px; width: 30px; border-radius: 50%;">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Mi Perfil</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Salir</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <div class="sidebar">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fas fa-home"></i> Inicio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fas fa-chart-bar"></i> Sección 1</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fas fa-table"></i> Sección 2</a>
            </li>
        </ul>
    </div>
    <div class="main-content">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Resumen <i class="fas fa-info-circle"></i></h5>
                <p class="card-text">Algunos datos importantes aquí.</p>
            </div>
        </div>

        <div class="container mt-5">

            <div class="row">
                <div class="col-6">
                    <div class="container-lg border  contaji  mb-3">
    
                        <h1 class="my-2 text-primary ">Productos</h1>
                        <hr class="border border-primary border-3 opacity-75">
    
                        <form id="productForm" class=" mb-4">
                            <div class="form-group mr-2">
                                <label for="product" class="sr-only">Producto</label>
                                <input type="text" id="product" name="product" class="form-control" placeholder="Producto"
                                    required>
                            </div>
                            <div class="form-group mr-2">
                                <label for="price" class="sr-only">Precio</label>
                                <input type="number" id="price" name="price" class="form-control" placeholder="Precio"
                                    step="0.01" required>
                            </div>
                            <div class="form-group mr-2">
                                <label for="quantity" class="sr-only">Cantidad</label>
                                <input type="number" id="quantity" name="quantity" class="form-control"
                                    placeholder="Cantidad" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-w ">Agregar</button>
                        </form>
    
                    </div>
    
                </div>
                
                <div class="col-6">
                    
                    <table id="productTable" class="table table-bordered ">
                        <thead>
                            <tr>
    
                                <th>Producto</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
    
                            <tr>
                                <td>Arroz</td>
                                <td>5.00</td>
                                <td>10</td>
                                <td>50.00</td>
                                <td>
                                    <button class="btn btn-info btn-sm edit">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                      </svg> </button>
                                                                  <button class="btn btn-danger btn-sm delete">   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                        <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5"/>
                                      </svg>   </button>
                                </td>
                            </tr>
    
    
                            <tr>
                                <td>Leche</td>
                                <td>4.00</td>
                                <td>20</td>
                                <td>80.00</td>
                                <td>
                                    <button class="btn btn-info btn-sm edit">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                      </svg> </button>
                                                                  <button class="btn btn-danger btn-sm delete">   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                        <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5"/>
                                      </svg>   </button>
                                </td>
                            </tr>
    
    
                            <tr>
                                <td>Azucar</td>
                                <td>4.00</td>
                                <td>25</td>
                                <td>100.00</td>
                                <td>
                                    <button class="btn btn-info btn-sm edit">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                        <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                        <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
                                      </svg> </button>
                                                                  <button class="btn btn-danger btn-sm delete">   <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3-fill" viewBox="0 0 16 16">
                                        <path d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5m-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5M4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06m6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528M8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5"/>
                                      </svg>   </button>
                                </td>
                            </tr>
    
                        </tbody>
                    </table>
                </div>
            </div>
    
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Gráfico de ejemplo <i class="fas fa-chart-line"></i></h5>
                <div class="chart-container">
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>


        

    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo'],
                datasets: [{
                    label: 'Datos de ejemplo',
                    data: [12, 19, 3, 5, 2],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
