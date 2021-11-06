<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedido.aspx.cs" Inherits="Formativa_runt.Pedido" %>

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
<body class="p-4">
    <div class="container mx-auto center ">
        <form id="form1" runat="server">
            <div class="card bg-light p-4">
                <h2 class="mb-4">Nuevo Pedido</h2>
                <asp:GridView CssClass="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="NOMBRE" HeaderText="CLIENTE" SortExpression="NOMBRE" />
                        <asp:BoundField DataField="NOMBRE1" HeaderText="VENDEDOR" SortExpression="NOMBRE1" />
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                        <asp:BoundField DataField="NOMBRE2" HeaderText="PRODUCTO" SortExpression="NOMBRE2" />
                        <asp:BoundField DataField="Cantidad1" HeaderText="CANTIDAD" SortExpression="Cantidad1" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT C.NOMBRE, V.NOMBRE, P.ESTADO, PR.NOMBRE, P.Cantidad1
FROM CLIENTE C, VENDEDOR V, PEDIDO P, PRODUCTO PR
WHERE C.Id = P.IdCliente AND V.Id = P.IdVendedor AND PR.Id = P.IdProducto1;" DeleteCommand="DELETE FROM [Pedido] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Pedido] ([IdCliente], [IdVendedor], [Estado], [IdProducto1], [IdProducto2], [Cantidad1], [Cantidad2]) VALUES (@IdCliente, @IdVendedor, @Estado, @IdProducto1, @IdProducto2, @Cantidad1, @Cantidad2)" UpdateCommand="UPDATE [Pedido] SET [IdCliente] = @IdCliente, [IdVendedor] = @IdVendedor, [Estado] = @Estado, [IdProducto1] = @IdProducto1, [IdProducto2] = @IdProducto2, [Cantidad1] = @Cantidad1, [Cantidad2] = @Cantidad2 WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IdCliente" Type="Int32" />
                        <asp:Parameter Name="IdVendedor" Type="Int32" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="IdProducto1" Type="Int32" />
                        <asp:Parameter Name="IdProducto2" Type="Int32" />
                        <asp:Parameter Name="Cantidad1" Type="Int32" />
                        <asp:Parameter Name="Cantidad2" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IdCliente" Type="Int32" />
                        <asp:Parameter Name="IdVendedor" Type="Int32" />
                        <asp:Parameter Name="Estado" Type="String" />
                        <asp:Parameter Name="IdProducto1" Type="Int32" />
                        <asp:Parameter Name="IdProducto2" Type="Int32" />
                        <asp:Parameter Name="Cantidad1" Type="Int32" />
                        <asp:Parameter Name="Cantidad2" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <hr />
                <table>
                    <tr>
                        <td>Cliente: 
                        </td>
                        <td>
                            <asp:DropDownList ID="clientes" runat="server" DataTextField="Nombre" DataValueField="Id">
                            </asp:DropDownList>    
                        </td>
                    </tr>
                    <tr>
                        <td>Vendedores: 
                        </td>
                        <td>
                            <asp:DropDownList ID="vendedores" runat="server" DataTextField="Nombre" DataValueField="Id">
                            </asp:DropDownList>    
                        </td>
                    </tr>
                    <tr>
                        <td>Producto1: 
                        </td>
                        <td>
                            <asp:DropDownList ID="producto1" runat="server" DataTextField="Nombre" DataValueField="Id">
                            </asp:DropDownList>    
                        </td>
                        <td>
                                <asp:TextBox ID="cantidad1" runat="server" class="form-control" placeholder="cantidad" TextMode="Number" />

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="cantidad1">Campo requerido</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td>Producto2: 
                        </td>
                        <td>
                            <asp:DropDownList ID="producto2" runat="server" DataTextField="Nombre" DataValueField="Id">
                            </asp:DropDownList>    
                        </td>
                        <td>
                                <asp:TextBox ID="cantidad2" runat="server" class="form-control" placeholder="cantidad" TextMode="Number" />

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="cantidad2">Campo requerido</asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td>Estado: 
                        </td>
                        <td>
                            <asp:DropDownList ID="estado" runat="server">
                                <asp:ListItem Value="pendiente"> Pendiente </asp:ListItem>
                                <asp:ListItem Value="pagado"> Pagado </asp:ListItem>
                                <asp:ListItem Value="procesado"> Procesado </asp:ListItem>
                                <asp:ListItem Value="enviado"> Enviado </asp:ListItem>
                                <asp:ListItem Value="entregado"> Entragado </asp:ListItem>
                            </asp:DropDownList>    
                        </td>
                    </tr>
                </table>
                <hr />
                <div class="d-flex justify-content-center">
                     <asp:Button ID="Button1" runat="server" Text="Crear" OnCommand="Button1_Click" class="btn me-2 btn-primary" />
                    <a class="btn btn-outline-primary" href="/inicio">Volver a inicio</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
