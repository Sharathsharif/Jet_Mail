<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Panel.Master" AutoEventWireup="true" CodeBehind="Admin_AllUser.aspx.cs" Inherits="Jet_Mail.Admin_AllUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- main content start-->
    <div id="page-wrapper">




        <div class="col-lg-12 ">
            <div class="panel-default">
                <div class="inbox-page">
                    <div class="panel-heading">
                       

                        <h4> <asp:Label ID="Label8" runat="server" Text="" Visible="true"></asp:Label></h4>

                    </div>

                    <asp:DataList ID="DataList2" runat="server" CssClass="table" OnItemCommand="DataList2_ItemCommand">
                        <ItemTemplate>
                            <div class="inbox-row widget-shadow" id="accordion" role="tablist" aria-multiselectable="true">
                                <div class="mail ">
                                    <input type="checkbox" class="checkbox">
                                </div>
                                <div class="mail">
                                    <asp:Image ID="Image1" runat="server" ImageUrl=' <%# Bind("Profile_img") %>' CssClass="small" Style="width: 35px; height: 30px" />
                                </div>
                                <div class="mail mail-name">
                                    <h6>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Sl_No") %>' Visible="false"></asp:Label></h6>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("approval") %>' Visible="false"></asp:Label></h6>

                                </div>
                                <div class="mail mail-name">
                                    <h6>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label></h6>
                                </div>
                                <div class="mail">
                                    <h6>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mail") %>'></asp:Label></h6>
                                </div>




                                <div class="mail-right dots_drop">
                                    <div class="dropdown">
                                        <a href="#" data-toggle="dropdown" aria-expanded="false">
                                            <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                        </a>
                                        <ul class="dropdown-menu float-right">
                                            <li>
                                                <asp:LinkButton ID="LinkButton1" runat="server" Style="color: green" CommandName="Approve"> <i class="fa fa-download mail-icon"></i>Approve</asp:LinkButton>



                                            </li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton2" runat="server" Style="color: gray" CommandName="Pending"> <i class="fa fa-download mail-icon"></i>Pending</asp:LinkButton>

                                            </li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton3" runat="server" Style="color: red" CommandName="Reject"> <i class="fa fa-download mail-icon"></i>Reject</asp:LinkButton>

                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="mail-right">
                                    <asp:Label ID="Label2" runat="server" Text="Approved" Style="background-color: green; color: aliceblue; padding: 5px; border-radius: 5px" Visible="false"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="Pending" Style="background-color: gray; color: aliceblue; padding: 5px; border-radius: 5px" Visible="false"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text="Rejected" Style="background-color: red; color: aliceblue; padding: 5px; border-radius: 5px" Visible="false"></asp:Label>
                                </div>
                                <div class="clearfix"></div>


                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
