<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Formativa_runt.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .center {
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <br />
    <div class="container mx-auto center ">
        <form id="form1" runat="server">
            <center>
                <div style="width: 50em;padding: 15px;background-color: #e9ecef;border-radius: 15px;border: 2px solid;">
                    <h1>Covid-19 Corp</h1>
                    <asp:Button ID="Button" runat="server" Text="Crear Cliente" OnCommand="Button1_Click" class="btn btn-primary" />
                    <asp:Button ID="Button1" runat="server" Text="Existencias" OnCommand="Button2_Click" class="btn btn-primary" />
                    <asp:Button ID="Button3" runat="server" Text="Nuevo pedido" OnCommand="Button4_Click" class="btn btn-primary" />
                    <asp:Button ID="Button2" runat="server" Text="Crear Vendedor" OnCommand="Button3_Click" class="btn btn-primary" />
                </div>
            </center>

        </form>
    </div>

</body>
</html>