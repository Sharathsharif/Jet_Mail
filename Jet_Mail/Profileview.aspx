<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Profileview.aspx.cs" Inherits="Jet_Mail.Profile_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">
        <h2 class="agile_info_shadow">Profile</h2>
        <br />
        <br />

        <asp:DataList ID="DataList1" runat="server" OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand">
            
            <EditItemTemplate>
                <table class="table">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name " required="" Text=' <%# Bind("Name") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Contact : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Contact Number " required="" Text=' <%# Bind("Contact") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Mail Id: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="" ReadOnly="true" required="" Text=' <%# Bind("Mail") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Address : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Your Address " Text=' <%# Bind("Address") %>' TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Profile Photo : "></asp:Label>
                             <asp:Label ID="Label7" runat="server" Text=' <%# Bind("Profile_img") %>' Visible="false"></asp:Label>
                        </td>
                        
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            
                        </td>
                    </tr>
                    <tr class="">
                        <td>
                            <asp:Button ID="Button1" runat="server" CommandName="cancel" Text="cancel" CssClass="btn-danger padding-5"/>

                         <%--   <asp:LinkButton ID="LinkButton1" runat="server" CommandName="cancel" CssClass="btn-danger padding-5">Cancel Edit</asp:LinkButton>--%>
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" CommandName="update" Text="Update" CssClass="btn-success padding-5"/>
                            <%--<asp:LinkButton ID="LinkButton2" runat="server" CommandName="update " CssClass="btn-success padding-5">Save</asp:LinkButton>--%>
                        </td>
                        
                    </tr>
                </table>
            </EditItemTemplate>
            <ItemTemplate>


                <table class="table agile-tables">
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
                    <tr class="btn">
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn-success padding-5"  CommandName="Edit">Edit Data</asp:LinkButton></td>
                        
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
