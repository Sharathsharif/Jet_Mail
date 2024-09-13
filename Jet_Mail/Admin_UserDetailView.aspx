<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Panel.Master" AutoEventWireup="true" CodeBehind="Admin_UserDetailView.aspx.cs" Inherits="Jet_Mail.Admin_UserDetailView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
        <h2>Profile</h2>
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >
            <ItemTemplate>


                <table class="table">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name " ReadOnly="true" Text=' <%# Bind("Name") %>' required=""></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Contact : "></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Contact Number " ReadOnly="true" Text=' <%# Bind("Contact") %>' required=""></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Mail Id: "></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="" required="" ReadOnly="true" Text=' <%# Bind("Mail") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Address : "></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Address " ReadOnly="true" TextMode="MultiLine" Text=' <%# Bind("Address") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="  Password : "></asp:Label></td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text="**********" required="" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Profile Photo : "></asp:Label></td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Style="height:100px; width:100px"  ImageUrl=' <%# Bind("Profile_img") %>' />
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="  Status : "></asp:Label></td>

                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Approved" Style="background-color: green; color: aliceblue; padding: 5px; border-radius: 5px" Visible="false"></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text="Pending" Style="background-color: gray; color: aliceblue; padding: 5px; border-radius: 5px" Visible="false"></asp:Label>
                                    <asp:Label ID="Label10" runat="server" Text="Rejected" Style="background-color: red; color: aliceblue; padding: 5px; border-radius: 5px" Visible="false"></asp:Label>
                                    <asp:Label ID="Label11" runat="server" Text=' <%# Bind("approval") %>' Style="background-color: red; color: aliceblue; padding: 5px; border-radius: 5px" Visible="false"></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text=' <%# Bind("Sl_No") %>' Visible="false"></asp:Label></td>

                            
                        </td>

                    </tr>
                    <tr class="btn">
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn-danger padding-5" CommandName="Reject" >Reject</asp:LinkButton></td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn-success padding-5" CommandName="Approve">Approve</asp:LinkButton>
                        </td>
                         <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn-dark padding-5" CommandName="Pending">Pending</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
