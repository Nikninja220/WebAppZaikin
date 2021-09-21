<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllOrders.aspx.cs" Inherits="WebAppZaikin.AllOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="AllOrder" runat="server" ConnectionString="<%$ ConnectionStrings:OrderDelivConnectionString %>" SelectCommand="SELECT [ID], [SenderCity], [SenderAddress], [RecepientCity], [RecepientAddress], [Weight], [DateStart] FROM [OrderBases]"/>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="AllOrder" AutoGenerateColumns="False" DataKeyNames="ID" >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Номер заказа" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="SenderCity" HeaderText="Город отправителя" SortExpression="SenderCity" />
                <asp:BoundField DataField="SenderAddress" HeaderText="Адрес отправителя" SortExpression="SenderAddress" />
                <asp:BoundField DataField="RecepientCity" HeaderText="Город получателя" SortExpression="RecepientCity" />
                <asp:BoundField DataField="RecepientAddress" HeaderText="Адрес получателя" SortExpression="RecepientAddress" />
                <asp:BoundField DataField="Weight" HeaderText="Вес груза" SortExpression="Weight" />
                <asp:BoundField DataField="DateStart" HeaderText="Дата забора груза" SortExpression="DateStart" />
            </Columns>
        </asp:GridView>
    </div>
        <div id="returnbut">
            <p></p>
            <asp:Button ID="Return" runat="server" Text="Вернуться" OnClick="Return_Click" Height="40px" Width="153px" />
        </div>
    </form>
</body>
</html>
