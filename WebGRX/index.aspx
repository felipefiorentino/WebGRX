<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebGRX.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="idproduto" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label Text="1) Você se Considera bom em lógica?" runat="server" />
                    </td>                  
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" Text="Sim" runat="server" />
                        <asp:Button ID="Button2" Text="Não" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label Text="2) Gosta de Aprender com Desasfios?" runat="server" />
                    </td>                  
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Button ID="Button3" Text="Sim" runat="server" />
                        <asp:Button ID="Button4" Text="Não" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label Text="3) Gostaria de Fazer Parte de <b>GRX</b>" runat="server" />
                    </td>                  
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:CheckBox ID="CheckBox1" Text="Sim" runat="server" />
                        <asp:CheckBox ID="CheckBox2" Text="Não" runat="server" />
                        <asp:CheckBox ID="CheckBox3" Text="Não Sei" runat="server" />
                        <asp:CheckBox ID="CheckBox4" Text="Agoraa!" runat="server" />                    
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="4) Por Favor Justifique a Resposta Anterior" runat="server" />
                    </td>                  
                </tr>
                <tr>
                    <td colspan="20">
                        <asp:TextBox ID="TextBox1" runat="server" />
                                   
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Button ID="Send" Text="Enviar" runat="server" />
                                                          
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:lABEL Text="" ID="lblMensagemok" runat="server" ForeColor="Green" />
                                                          
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:lABEL Text="" ID="lblMensagemErro" runat="server" ForeColor="Red" />
                                                          
                    </td>
                </tr>

            </table>

        </div>
    </form>
</body>
</html>
