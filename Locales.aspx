<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Locales.aspx.cs" Inherits="Barter.Locales" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Locales</title>
    <style>
        body {
            background-color: #e3e3e3;  
            color: rgb(34, 34, 34);
            transition: background-color 0.3s, color 0.3s;
        }

        h1 {
            text-align: center;
        }

        .hm-wrapper {
            width: 100%;
        }

        .hm-header {
            position: relative;
            height: 64px;
            background: #f5f6f4;
            line-height: 64px;
            transition: all 0.6s ease-in-out;
            margin: 20px 0;
            box-sizing: border-box;
        }

        .hm-header .container {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .hm-header.header-fixed {
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.08);
            z-index: 99;
            margin: 0;
        }

        .header-menu {
            display: flex;
            width: 100%;
            justify-content: space-between;
            align-items: center;
        }

        .hm-logo img {
            width: 71px;
            height: 71px;
            border: 5px solid #474747;
            border-radius: 50%;
        }

        .Buscador {
            flex-grow: 1;
            margin: 0 20px;
        }

        .Buscador .form-inline {
            display: flex;
            width: 100%;
        }

        .Buscador .form-inline .form-control {
            flex-grow: 1;
            border-radius: 5px 0 0 5px;
            padding: 8px;
        }

        .Buscador .form-inline .btn {
            border-radius: 0 5px 5px 0;
            padding: 8px 16px;
        }

        .hm-menu ul {
            display: flex;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .hm-menu ul li {
            margin-right: 20px;
        }

        .hm-menu ul li a {
            color: #222;
            font-size: 15px;
            text-decoration: none;
        }

        .hm-menu ul li a:hover {
            color: #007bff;
        }

        .locals {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 20px;
            margin-top: 20px;
        }

        .box {
            border: 1px solid black;
            padding: 10px;
            height: 150px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            flex-direction: column;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        footer a {
            margin: 0 10px;
            color: #fff;
            text-decoration: none;
        }

        footer a:hover {
            color: #007bff;
        }

        footer img {
            width: 24px;
            height: 24px;
        }
    </style>
</head>
<body>
    <div class="hm-wrapper">
        <div class="hm-header">
            <div class="container">
                <div class="header-menu">
                    <div class="hm-logo">
                        <a href="/principal.html">
                            <img src="Img/BarterWhite.png" alt="Logo">
                        </a>
                    </div>
                    <div class="Buscador">
                        <form class="form-inline">
                            <input class="form-control" type="search" placeholder="Buscar" aria-label="Search">
                            <button class="btn btn-outline-dark" type="submit">Buscar</button> 
                        </form>
                    </div>
                    <nav class="hm-menu">
                        <ul>
                            <li><a href="Principal.html">Inicio</a></li>
                            <li><a href="Perfil.html">Mi perfil</a></li>  
                            <li><a href="https://web.whatsapp.com/send?phone=5515337005">Mensajes</a></li>
                            <li><a href="AvisoPriv.html">FAQ</a></li>
                            <li><a href="Carrito.html">Carrito</a></li>
                            <li><a href="index.html">Salir</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="locals">
                <div class="box"></div>
                <div class="box"></div>
                <div class="box"></div>
                <div class="box"></div>
                <div class="box"></div>
                <div class="box"></div>
                <div class="box"></div>
            </div>
        </div>
    </div>
<br>
<br>
<br>
<br>
    <footer>
        <div>
            <a href="https://www.facebook.com" target="_blank">
                <img src="https://img.icons8.com/ios-filled/50/ffffff/facebook.png" alt="Facebook">
            </a>
            <a href="https://www.twitter.com" target="_blank">
                <img src="https://img.icons8.com/ios-filled/50/ffffff/twitter.png" alt="Twitter">
            </a>
            <a href="https://www.instagram.com" target="_blank">
                <img src="https://img.icons8.com/ios-filled/50/ffffff/instagram-new.png" alt="Instagram">
            </a>
        </div>
        <div style="margin-top: 20px;">
            <a href="#link1">Enlace 1</a>
            <a href="#link2">Enlace 2</a>
        </div>
        <div style="margin-top: 20px;">
            &copy; 2024 Barter: Universidad CUDEC
        </div>
    </footer>
</body>
</html>
