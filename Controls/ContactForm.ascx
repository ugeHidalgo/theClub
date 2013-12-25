<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .contact-Style1
    {
        width: 100%;
    }

    .contact-style2
    {
        width: 100px;
        text-align: right;
    }

    .contact-style3
    {
        width: 200px;
    }

    .contact-style4
    {
        width: 300px;
        font-style: italic;
        text-align: center;
    }

    .contact-style5
    {
        width: 200px;
        font-style: italic;
    }
    .auto-style1
    {
        width: 117px;
        text-align: right;
    }
</style>


<script type="text/javascript">
    function validatePhoneNumber(source, args) {
        var phone = document.getElementById('<%= txbxPhone.ClientID %>');
        if (phone.value != '')
            args.IsValid = true;
        else
            args.IsValid = false;
    }
</script>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="contact-style1" runat="server" id="FormTable">
                <tr>
                    <td colspan="4">
                        <h1>Por favor... deja tus comentarios.
                        </h1>
                        <p>
                            Tus comentarios son valiosos para nosotros. deja tu nombre, dirección de correo y comentario.
                        </p>
                    </td>
                </tr>
                <tr>
                    <td colspan="4"></td>
                </tr>
                <tr>
                    <td class="auto-style1">Nombre : </td>
                    <td class="contact-style3">
                        <asp:TextBox ID="txbxName" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="contact-style4"></td>
                    <td class="contact-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txbxName" CssClass="ErrorMessage" ErrorMessage="Introduce tu nombre">*
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mail : </td>
                    <td class="contact-style3">
                        <asp:TextBox ID="txbxMail" runat="server" Width="100%" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="contact-style4">&nbsp;</td>
                    <td class="contact-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="txbxMail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Introduzca un mail">*
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txbxMail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Introduzca un mail válido"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*
                        </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Confirma Mail : </td>
                    <td class="contact-style3">
                        <asp:TextBox ID="txbxConfirmMail" runat="server" Width="100%" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="contact-style4">&nbsp;</td>
                    <td class="contact-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="txbxConfirmMail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Vuelva a escribir el mail">*
                        </asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToCompare="txbxMail" ControlToValidate="txbxConfirmMail" CssClass="ErrorMessage"
                            Display="Dynamic" ErrorMessage="El mail y su confirmación son distintos">*
                        </asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Teléfono : </td>
                    <td class="contact-style3">
                        <asp:TextBox ID="txbxPhone" runat="server" Width="100%"></asp:TextBox>
                    </td>
                    <td class="contact-style4">&nbsp;</td>
                    <td class="contact-style5">
                        <asp:CustomValidator ID="CustomValidator1" runat="server"
                            ClientValidationFunction="validatePhoneNumber" CssClass="ErrorMessage"
                            ErrorMessage="Introduzca un  nº de teléfono." OnServerValidate="CustomValidator1_ServerValidate">*
                        </asp:CustomValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Comentarios : </td>
                    <td colspan="2">
                        <asp:TextBox ID="txbxComents" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </td>
                    <td class="contact-style5">&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="contact-style3">
                        <asp:Button ID="btnSend" runat="server" Text="Enviar" OnClick="btnSend_Click" />
                    </td>
                    <td class="contact-style4">
                        <p>
                            (Los campos con * son obligatorios)
                        </p>
                    </td>
                    <td class="contact-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txbxComents" CssClass="ErrorMessage" ErrorMessage="Introduce el comentario">*
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="contact-style4" colspan="4">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td class="contact-style4" colspan="4">&nbsp;</td>
                </tr>
            </table>
        </div>

        <h1>
            <asp:Label ID="laMessageSent" CssClass="Attention" runat="server" Text="Mensaje enviado" Visible="false"></asp:Label>
            <p runat="server" id="MessageSentPara" visible="false">Gracias por su opinión.</p>
            <h1></h1>
        </h1>

    </ContentTemplate>
</asp:UpdatePanel>


<asp:UpdateProgress ID="UpdateProgress1" runat="server"
    AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>


<script type="text/javascript">
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid)
            {
                $('#TableWrapper').slideUp(3000);
            }
    });
    });
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).
        animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>




