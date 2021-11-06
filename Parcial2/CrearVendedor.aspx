<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearVendedor.aspx.cs" Inherits="Formativa_runt.CrearVendedor" %>

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
<body class="p-5">
    <div class="container mx-auto center ">
        <form id="form1" runat="server">
            <div class="card bg-light p-4">
                <h2 class="mb-3">Formulario de creación de vendedores</h2>
                <asp:GridView CssClass="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                        <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vendedor]" DeleteCommand="DELETE FROM [Vendedor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Vendedor] ([Cedula], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Correo], [Edad], [Sexo], [Fecha]) VALUES (@Cedula, @Nombre, @Apellido, @Direccion, @Telefono, @Celular, @Correo, @Edad, @Sexo, @Fecha)" UpdateCommand="UPDATE [Vendedor] SET [Cedula] = @Cedula, [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Telefono] = @Telefono, [Celular] = @Celular, [Correo] = @Correo, [Edad] = @Edad, [Sexo] = @Sexo, [Fecha] = @Fecha WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Edad" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Fecha" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Edad" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Fecha" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <hr />
                <table>
                    <tr>
                        <td>Cedula: 
                        </td>
                        <td>
                            <asp:TextBox ID="cedula" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="cedula">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Nombre: 
                        </td>
                        <td>
                            <asp:TextBox ID="nombre" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="nombre">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Apellido: 
                        </td>
                        <td>
                            <asp:TextBox ID="apellido" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="apellido">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Dirección: 
                        </td>
                        <td>
                            <asp:TextBox ID="direccion" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="direccion">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Telefono: 
                        </td>
                        <td>
                            <asp:TextBox ID="telefono" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="telefono">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Celular: 
                        </td>
                        <td>
                            <asp:TextBox ID="celular" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="celular">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Correo: 
                        </td>
                        <td>
                            <asp:TextBox ID="correo" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="correo">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Edad: 
                        </td>
                        <td>
                            <asp:TextBox ID="edad" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="edad">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Sexo: 
                        </td>
                        <td>
                            <asp:TextBox ID="sexo" runat="server" class="form-control" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="sexo">Campo requerido</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Fecha: 
                        </td>
                        <td>
                            <asp:TextBox ID="fecha" runat="server" placeholder="From" type="date"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <div class="d-flex justify-content-center mt-4">
                    <asp:Button ID="Button1" runat="server" Text="Crear" OnCommand="Button1_Click" class="btn btn-primary me-3" />
                    <a class="btn btn-outline" href="/inicio">Volver a inicio</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
