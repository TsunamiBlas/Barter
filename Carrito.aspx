<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Barter.Carrito" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </head>
    <div>
      <div class="hm-wrapper">
        <div class="hm-header">
          <div class="container">
            <div class="header-menu">
              <div class="hm-logo">
                <a href="/principal.aspx">
                  <img style="border-radius: 100%;" src="Img/BarterWhite.png" alt="Logo">
                </a>
              </div>
              <div class="Buscador">
                <form class="form-inline">
                  <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-dark" type="submit">Buscar</button>
                </form>
              </div>
              <nav class="hm-menu">
                <ul>
                  <li><a href="Principal.aspx">Inicio</a></li>
                  <li><a href="PerfilBarter.aspx">Mi perfil</a></li>  
                  <li><a href="https://web.whatsapp.com/send?phone=551533700">Mensajes</a></li>
                  <li><a href="Aviso_Privacidad.aspx"">FAQ</a></li>
                  <li><a href="Carrito.aspx">Carrito</a></li> 
                  <li><a href="index.aspx">Salir</a></li>

                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  <div>
      <h1> <b> Carrito de Compras </b></h1>
      <h1>¡Aún no has agregado ningún artículo!</h1>
  </div>
  <style>
    body {
        background-color: #f8f9fa;
        color: #333;
        font-family: Arial, sans-serif;
    }

    .container-carrito {
        margin-top: 50px;
        text-align: center;
    }

    .container-carrito h2 {
        font-size: 28px;
        margin-bottom: 20px;
    }

    .container-carrito p {
        font-size: 18px;
        margin-bottom: 40px;
        color: #888;
    }

    .payment-methods {
        display: flex;
        justify-content: center;
        gap: 20px;
    }

    .payment-methods .payment-option {
        background-color: #007bff;
        color: white;
        padding: 15px 25px;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s;
    }

    .payment-methods .payment-option.paypal {
        background-color: #003087;
    }

    .payment-methods .payment-option.card {
        background-color: #28a745;
    }

    .payment-methods .payment-option.cash {
        background-color: #ffc107;
        color: #333;
    }

    .payment-methods .payment-option:hover {
        background-color: #0056b3;
    }

    .payment-methods .payment-option.paypal:hover {
        background-color: #001f5a;
    }

    .payment-methods .payment-option.card:hover {
        background-color: #1e7e34;
    }

    .payment-methods .payment-option.cash:hover {
        background-color: #e0a800;
    }

    .card-form {
        display: none;
        margin-top: 30px;
        text-align: left;
        max-width: 400px;
        margin-left: auto;
        margin-right: auto;
    }

    .card-form input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .card-form button {
        width: 100%;
        padding: 10px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
    }


</style>
</head>
<body>
<div class="container-carrito">
    <h2>Tu Carrito de Compras</h2>
    <p>Aún no has agregado ningún artículo</p>

    <div class="payment-methods">
        <a href="#" class="payment-option paypal">Pagar con PayPal</a>
        <a href="#" class="payment-option card" onclick="toggleCardForm()">Pagar con Tarjeta de Crédito</a>
        <a href="#" class="payment-option cash">Pagar en Efectivo</a>
    </div>

    <div class="card-form" id="cardForm">
        <h3>Información de la Tarjeta</h3>
        <form id="paymentForm" onsubmit="return validateCard()">
            <input type="text" id="cardNumber" placeholder="Número de Tarjeta" required>
            <input type="text" id="cardHolder" placeholder="Nombre del Titular" required>
            <input type="text" id="expiryDate" placeholder="Fecha de Expiración (MM/AA)" required>
            <input type="text" id="cvv" placeholder="CVV" required>
            <button type="submit">Procesar Pago</button>
        </form>
        <p id="errorMessage" style="color: red; display: none;">Número de tarjeta inválido. Por favor, verifica la información.</p>
    </div>
</div>

<script>
    function toggleCardForm() {
        var cardForm = document.getElementById('cardForm');
        cardForm.style.display = cardForm.style.display === 'none' || cardForm.style.display === '' ? 'block' : 'none';
    }

    function validateCard() {
        var cardNumber = document.getElementById('cardNumber').value.replace(/\s+/g, '');
        var errorMessage = document.getElementById('errorMessage');

        if (luhnCheck(cardNumber)) {
            alert("Pago procesado con éxito.");
            return true;
        } else {
            errorMessage.style.display = 'block';
            return false;
        }
    }

    function luhnCheck(cardNumber) {
        let sum = 0;
        let shouldDouble = false;

        for (let i = cardNumber.length - 1; i >= 0; i--) {
            let digit = parseInt(cardNumber.charAt(i));

            if (shouldDouble) {
                digit *= 2;
                if (digit > 9) {
                    digit -= 9;
                }
            }

            sum += digit;
            shouldDouble = !shouldDouble;
        }

        return (sum % 10) === 0;
    }
</script>

<br>
<br>
  </body>
      <footer>
    <div>
        <a href="https://www.facebook.com/profile.php?id=61564934474884&mibextid=LQQJ4d" target="_blank">
        <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/facebook.png" AlternateText="Facebook" />
        </a>
        <a href="https://x.com/bartercontacto" target="_blank">
        <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/twitter.png" AlternateText="Twitter" />
        </a>
        <a href="https://www.instagram.com/bartercontacto/" target="_blank">
        <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/instagram-new.png" AlternateText="Instagram" />
        </a>
    </div>
    <div style="margin-top: 20px;">
        <a href="json.json">Enlace 1</a>
        <a href="#link2">Enlace 2</a>
    </div>
    <div style="margin-top: 20px;">
        &copy; 2024 Barter: Universidad CUDEC
    </div>
  
  
      </footer>
  <!-- Estilo para Footer Homogeneo -->
      <style>
        /* Estilos footer */
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
    
        a {
            margin: 0 10px;
            color: #fff;
            text-decoration: none;
        }
    
        img {
            width: 24px;
            height: 24px;
        }
      </style>
<!-- Estilo para Header Homogeneo -->
      <style>
        body {
          background-color: #e3e3e3;  
          color: rgb(34, 34, 34);
          transition-property: background-color, color;
          transition-duration: 0.3s;
          transform-origin: 5%;
          transition-delay: initial;
        }     
        
        h1 {
          text-align: center;
        }
        
        .Contenedor parrafo {
          text-align: justify;
        }

        .hm-wrapper {
          width: 100%;
        }

        .hm-header {
          position: relative;
          height: 64px;
          background: #f5f6f4;
          line-height: 64px;
          transition: all .6s ease-in-out;
          margin-top: 20px;
          margin-bottom: 20px;
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
          margin-top: 0px;
          margin-bottom: 0px;
        }

        .header-menu {
          display: flex;
          width: 100%;
          justify-content: space-between;
          align-items: center;
        }

        .header-menu .hm-logo {
          margin-right: auto;
        }

        .header-menu .hm-logo img {
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

        .hm-menu {
          display: flex;
          align-items: center;
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
          color: var(--color-negro);
          font-size: 15px;
          text-decoration: none;
        }

        .hm-menu ul li a:hover {
          color: var(--color-principal);
        }

        .cerrar-menu {
          background-color: transparent;
          border: none;
          font-size: 18px;
          cursor: pointer;
        }
      </style>
      <!-- Estilo para carrito de Compras -->
      <style>
        body {
            background-color: #f8f9fa;
            color: #333;
            font-family: Arial, sans-serif;
        }

        .container-carrito {
            margin-top: 50px;
            text-align: center;
        }

        .container-carrito h2 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .container-carrito p {
            font-size: 18px;
            margin-bottom: 40px;
            color: #888;
        }

        .payment-methods {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .payment-methods .payment-option {
            background-color: #007bff;
            color: white;
            padding: 15px 25px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .payment-methods .payment-option.paypal {
            background-color: #003087;
        }

        .payment-methods .payment-option.card {
            background-color: #28a745;
        }

        .payment-methods .payment-option.cash {
            background-color: #ffc107;
            color: #333;
        }

        .payment-methods .payment-option:hover {
            background-color: #0056b3;
        }

        .payment-methods .payment-option.paypal:hover {
            background-color: #001f5a;
        }

        .payment-methods .payment-option.card:hover {
            background-color: #1e7e34;
        }

        .payment-methods .payment-option.cash:hover {
            background-color: #e0a800;
        }
      
      </style>
      </html>
