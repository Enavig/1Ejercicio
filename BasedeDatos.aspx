<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasedeDatos.aspx.cs" Inherits="BDatos.BasedeDatos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REGISTRAR" />
            <asp:Button ID="BtnBORRAR" runat="server" OnClick="Button2_Click" Text="BORRAR" />
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TxtNombre" runat="server" Height="19px" Width="206px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
&nbsp;<asp:TextBox ID="TxtApellido" runat="server" Width="201px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Nacionalidad"></asp:Label>
&nbsp;<asp:TextBox ID="TxtNacionalidad" runat="server" Width="175px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="ECivil"></asp:Label>
&nbsp;<asp:TextBox ID="TxtECivil" runat="server" Width="221px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
&nbsp;<asp:TextBox ID="TxtCorreo" runat="server" Width="211px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Edad"></asp:Label>
&nbsp;<asp:TextBox ID="TxtEdad" runat="server" Width="222px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Programa"></asp:Label>
&nbsp;<asp:TextBox ID="TxtPrograma" runat="server" Width="196px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Semestre"></asp:Label>
&nbsp;<asp:TextBox ID="TxtSemestre" runat="server" Width="203px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Cead"></asp:Label>
&nbsp;<asp:TextBox ID="TxtCead" runat="server" Width="230px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            
        </p>
    </form>
</body>
</html>
