<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="RegistrationForm.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="registerform.js" type="text/javascript"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#jqsubmit').click(function () {
                var jfn = $('#fn').val();
                if (jfn == '') {
                    alert("Please enter required fields");
                    return false;
                }
                var jln = $('#ln').val();
                if (jln == '') {
                    alert("Please enter required fields");
                    return false;
                }
                var jem = $('#em').val();
                if (jem == '') {
                    alert("Please enter required fields");
                    return false;
                }
                var jpn= $('#pn').val();
                if (jpn == '') {
                    alert("Please enter required fields");
                    return false;
                }
                return true;
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>&nbsp;Registration Form</h1>
        <div>
            <asp:Label ID="Label2" runat="server" Text="FirstName"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="fn" runat="server"></asp:TextBox>
            <asp:Label ID="lblfn" runat="server" Text=" "></asp:Label>
            <span id="fn1"></span>
            <br />
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ln" runat="server"></asp:TextBox>
        <asp:Label ID="lblln" runat="server" Text=" "></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="em" runat="server"></asp:TextBox>
        <asp:Label ID="lblem" runat="server" Text=" "></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Phone Number"></asp:Label>
&nbsp;
        <asp:TextBox ID="pn" runat="server"></asp:TextBox>
        <asp:Label ID="lblpn" runat="server" Text=" "></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Location"></asp:Label>
        <br />
        Country:<br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="CountrySource" DataTextField="countryName" DataValueField="countryID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CountrySource" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [countryID], [countryName] FROM [Country]"></asp:SqlDataSource>
        <br />
        State:<br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="StateSource" DataTextField="StateName" DataValueField="StateId" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="StateSource" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [StateId], [StateName] FROM [Statettb] WHERE ([fk_countryid] = @fk_countryid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="fk_countryid" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        City:<br />
        :<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="CitySource" DataTextField="CityName" DataValueField="CityId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CitySource" runat="server" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" SelectCommand="SELECT [CityId], [CityName] FROM [citytb] WHERE ([fk_stateid] = @fk_stateid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="fk_stateid" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Selected="True">MALE</asp:ListItem>
            <asp:ListItem>FEMALE</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="stream" runat="server" Text="Stream"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>.NET</asp:ListItem>
            <asp:ListItem>SDET</asp:ListItem>
            <asp:ListItem>JAVA</asp:ListItem>
            <asp:ListItem>DEP</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="dob" runat="server" Text="Date Of Birth"></asp:Label>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="Submit" runat="server" Height="24px" style="margin-left: 469px" Text="Client Submit" Width="279px" BorderColor="Blue" OnClientClick="return validateForm()" />         <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="24px" style="margin-left: 469px" Width="279px" BorderColor="Blue" Text="server submit" OnClick="btnSubmit_Click"/>
        <br />
        <br />
        <asp:Button ID="jqsubmit" runat="server" Height="24px" style="margin-left: 469px" Text="Jquery Submit" Width="279px" BorderColor="Blue"  />         
        <br />
        </form>
  
</body>
</html>
