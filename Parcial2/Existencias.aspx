<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Existencias.aspx.cs" Inherits="Formativa_runt.Existencias" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .center {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        td {
            padding-right: 10px
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div class="container mx-auto center ">
        <form id="form1" runat="server">
            <div style="width: 30em; padding: 15px; background-color: lightgray; border-radius: 15px;">
                <h2>Existencias:</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                        <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Producto]" DeleteCommand="DELETE FROM [Producto] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Producto] ([Nombre], [Cantidad], [Precio]) VALUES (@Nombre, @Cantidad, @Precio)" UpdateCommand="UPDATE [Producto] SET [Nombre] = @Nombre, [Cantidad] = @Cantidad, [Precio] = @Precio WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Cantidad" Type="Int32" />
                        <asp:Parameter Name="Precio" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Cantidad" Type="Int32" />
                        <asp:Parameter Name="Precio" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                            <a href="/inicio">Volver a inicio</a>
            </div>
        </form>
    </div>
</body>
</html>
