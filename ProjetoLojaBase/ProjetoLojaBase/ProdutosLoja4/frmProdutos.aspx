<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmProdutos.aspx.cs" Inherits="namespaceProdutos.frmProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon.png"/>
    <title>Loja de produtos</title>
    <style type="text/css">
        body {
            font-family: Calibri;
        }
    </style>
</head>
<body>
    <table>
      <tr>
        <td><h2>Produtos da loja </h2> </td>
        <td>&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/loja.png"></asp:Image></td>
      </tr>
    </table>

    <form id="form1" runat="server">
         
        <div>
            <div>

                Para alterações de dados utilize os campos a seguir. <br /><br />
                <asp:Label ID="Label1" runat="server" BorderStyle="None" Text="Código produto: " Width="96px"></asp:Label>
                <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Label ID="txtMsg" runat="server" BorderStyle="None" Height="32px" Width="729px" Font-Bold="True"></asp:Label>
                
                <br />               
                <asp:Label ID="Label3" runat="server" BorderStyle="None" Text="Nome produto:" Width="96px"></asp:Label>
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>                
                
                <br />
                <asp:Label ID="Label5" runat="server" BorderStyle="None" Text="Preço produto:" Width="96px"></asp:Label>
                <asp:TextBox ID="txtPreco" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnGravar" runat="server" Text="Cadastrar" OnClick="btnGravar_Click" />&nbsp;
                <asp:Button ID="btnAlterar" runat="server" Text="Alterar " OnClick="btnAlterar_Click" />&nbsp;
                <asp:Button ID="btnExcluir" runat="server" Text="Excluir " OnClick="btnExcluir_Click" />&nbsp;
                 

                <br /><br /><br />
                Preço máximo: 
                <asp:TextBox ID="txtPrecoMax" runat="server"></asp:TextBox>
                <asp:Button ID="btnConsultarPrecoMax" runat="server" Text="Consultar" OnClick="btnConsultarPrecoMax_Click" />&nbsp;
 
                <br />
                <br />
                <br />
            </div>
        </div>

        <div>
            <asp:GridView ID="grdProdutos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>

        <asp:Label ID="txtDadosProdutos" runat="server" BorderStyle="None" Height="32px" Width="729px">
        </asp:Label>
                
    </form>
    <br /><br /><br /><br /><br />
</body>
</html>
