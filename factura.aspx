<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="factura.aspx.cs" Inherits="Barter.facturaxml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Factura XML</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #bec3b6;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input[type="text"], .asp-textbox {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        button, .asp-button {
            background-color: #bec3b6;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover, .asp-button:hover {
            background-color: #0056b3;
        }

        .asp-gridview {
            margin-top: 20px;
        }

        .asp-gridview table {
            width: 100%;
            border-collapse: collapse;
        }

        .asp-gridview th, .asp-gridview td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .asp-gridview th {
            background-color: #bec3b6;
            color: white;
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
            color: #333;
            font-size: 15px;
            text-decoration: none;
        }

        .hm-menu ul li a:hover {
            color: #bec3b6;
        }

        .nav-item.dropdown {
            position: relative;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: white;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
            z-index: 100;
            margin-top: 10px;
            padding: 10px;
        }

        .nav-item.dropdown:hover .dropdown-menu {
            display: block;
        }

        .dropdown-menu a {
            display: block;
            padding: 5px 10px;
            text-decoration: none;
            color: #333;
        }

        .dropdown-menu a:hover {
            background-color: #f1f1f1;
        }

        /* Estilos footer */
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
                        <a href="Principal.aspx">
                            <img style="border-radius: 100%;" src="Img/BarterWhite.png" alt="Logo">
                        </a>
                    </div>
                    <nav class="hm-menu">
                        <ul>
                            <li><a href="Principal.aspx">Inicio</a></li>
                            <li><a href="PerfilBarter.aspx">Mi perfil</a></li>  
                            <li><a href="https://web.whatsapp.com/send?phone=5518784908">Mensajes</a></li>
                            <li><a href="Productos.aspx">Productos</a></li>
                            <li><a href="Carrito.aspx">Carrito</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#">Salir</a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Aviso_Privacidad.aspx">Aviso de privacidad</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="CerrarSesion.aspx">Cerrar Sesión</a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <h1>Generar Factura</h1>
        <form id="form1" runat="server">
            <div>
                <label for="txtemisor">Emisor</label>
                <asp:TextBox ID="txtemisor" runat="server" CssClass="asp-textbox"></asp:TextBox>
            </div>
            <div>
                <label for="txtreceptor">Receptor</label>
                <asp:TextBox ID="txtreceptor" runat="server" CssClass="asp-textbox"></asp:TextBox>
            </div>
            <div>
                <label for="txtidentificacion">Número de identificación fiscal</label>
                <asp:TextBox ID="txtidentificacion" runat="server" CssClass="asp-textbox"></asp:TextBox>
            </div>
            <div>
                <label for="txtexpedicion">Fecha de expedición</label>
                <asp:TextBox ID="txtexpedicion" runat="server" CssClass="asp-textbox"></asp:TextBox>
            </div>
            <div>
                <label for="txtfactura">Número de factura</label>
                <asp:TextBox ID="txtfactura" runat="server" CssClass="asp-textbox"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar factura" CssClass="asp-button" />
            </div>
            <div class="asp-gridview">
                <asp:GridView ID="GridView1" runat="server" CssClass="asp-gridview" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#f9f9f9" />
                    <FooterStyle BackColor="#f9f9f9" />
                    <HeaderStyle BackColor="#bec3b6" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#bec3b6" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#0056b3" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#f1f1f1" />
                    <SortedAscendingHeaderStyle BackColor="#bec3b6" />
                    <SortedDescendingCellStyle BackColor="#cac9c9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </form>
    </div>

    <footer>
        <div>
            <a href="https://www.facebook.com/profile.php?id=61564934474884&mibextid=LQQJ4d" target="_blank">
                <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/facebook.png" AlternateText="Facebook" />
            </a>
            <a href="https://x.com/bartercontacto" target="_blank">
                <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/x.png" AlternateText="Twitter" />
            </a>
            <a href="https://www.instagram.com/barterprogrammer" target="_blank">
                <asp:Image runat="server" ImageUrl="https://img.icons8.com/ios-filled/50/ffffff/instagram-new.png" AlternateText="Instagram" />
            </a>
        </div>
        <p>Derechos reservados © 2024 - Barter - Intercambio de Productos</p>
    </footer>
</body>
</html>
