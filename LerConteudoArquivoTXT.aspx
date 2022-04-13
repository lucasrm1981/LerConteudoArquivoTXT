<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LerConteudoArquivoTXT.aspx.cs" Inherits="LerConteudoArquivoTXT.LerConteudoArquivoTXT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">

    <div id="Titulo">

        <h1>FILEUPLOAD  ASP.NET e C#</h1>
        <hr />
    </div>
    <div>

    <asp:Label  id="lblData" Text="Data de Aniversário" runat="server" >
    </asp:Label>
    <asp:TextBox ID="txtData" ReadOnly="true" Width="66" runat="server">
    </asp:TextBox>
    <asp:Label runat="server" ID="lblArquivo" style=" margin-left:23px;"
    Text="Arquivo:"></asp:Label>
     <asp:FileUpload ID="FileUpload1" style=" margin-left:30px;" runat="server" />

    <br />
    <asp:Label ID="lblIdade" runat="server" Text="Idade:"></asp:Label>
    <asp:TextBox runat="server" Width="66" ReadOnly="true" style=" margin-left:83px" ID="txtIdade"></asp:TextBox>

    <asp:Label ID="lblValor" runat="server" style=" margin-left:25px;"
    Text="Valor Total:"></asp:Label>
    <asp:TextBox runat="server" style=" margin-left:10px;" ReadOnly="true" ID="txtValor"></asp:TextBox>
    <br />
    <asp:button id="button1" runat="server" text="Importar" OnClick="button1_Click" />
    <br />
    <br />
    <asp:Label Text="" ID="Statuslbl" runat="server" />
</div>
</form>
</body>
</html>
