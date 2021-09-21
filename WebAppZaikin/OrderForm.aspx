<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="WebAppZaikin.OrderForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="information">
            <h3>Для оформления заказа заполните следующие поля:</h3>
        </div>
    <div id="order">
        <p>Город отправителя</p>
        <asp:TextBox ID="SenderCity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="SenderCity" runat="server" EnableClientScript="false" ErrorMessage="Заполните город отправителя"></asp:RequiredFieldValidator>
        <p>Адрес отправителя</p>
        <asp:TextBox ID="SenderAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv2" ControlToValidate="SenderAddress" runat="server" EnableClientScript="false" ErrorMessage="Заполните адрес отправителя"></asp:RequiredFieldValidator>
        <p>Город получателя</p>
        <asp:TextBox ID="RecepientCity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv3" ControlToValidate="RecepientCity" runat="server" EnableClientScript="false" ErrorMessage="Заполните город получателя"></asp:RequiredFieldValidator>
        <p>Адрес получателя</p>
        <asp:TextBox ID="RecepientAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv4" ControlToValidate="RecepientAddress" runat="server" EnableClientScript="false" ErrorMessage="Заполните адрес получателя"></asp:RequiredFieldValidator>
        <p>Вес груза</p>
        <asp:TextBox ID="Weight" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv5" ControlToValidate="Weight" runat="server" EnableClientScript="false" ErrorMessage="Заполните вес груза"></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server" ID="rvweight" ControlToValidate="Weight" Type="Double" MinimumValue="0" MaximumValue="15000" ErrorMessage="Введите корректное значение"></asp:RangeValidator>
        <p>Дата забора груза</p>
        <asp:TextBox ID="DateStart" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfv6" ControlToValidate="DateStart" runat="server" EnableClientScript="false" ErrorMessage="Заполните дату забора груза"></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server" ID="rvdate" ControlToValidate="DateStart" Type="Date" MinimumValue="01.01.2000" MaximumValue="31.12.2021" ErrorMessage="Введите корректную дату"></asp:RangeValidator>
        
      </div>
        <div id="buttons">
            <input type="submit" value="Оформить заказ" />
            <asp:Button ID="NextPage" runat="server" OnClick="NextPage_Click" Text="Список заказов" />
        </div>
    </form>
        
</body>
</html>
