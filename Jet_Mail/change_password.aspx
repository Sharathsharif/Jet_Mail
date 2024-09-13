<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="change_password.aspx.cs" Inherits="Jet_Mail.change_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">
        <br />
        <h2 class="title1 active shadow"> Change your Password</h2>
        <br />
        <table class="table">
            <tr>
                <td>
                    <asp:Label id="Label1" runat="server" Text="Old Password"></asp:Label> 
                </td>
                <td>
                    <asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label id="Label4" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill this !!!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label id="Label2" runat="server" Text="New Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox id="TextBox2" runat="server"></asp:TextBox>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Didn't Match" ForeColor="Red" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label id="Label3" runat="server" Text="Renter New Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox id="TextBox3" runat="server"></asp:TextBox>

                   
                </td>
            </tr>
            <tr colspan="2">
                <td>
                    <asp:Button id="Button1" runat="server" Text="Save" CssClass="btn-success " OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
