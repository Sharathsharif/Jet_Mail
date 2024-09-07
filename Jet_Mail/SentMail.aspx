<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="SentMail.aspx.cs" Inherits="Jet_Mail.SentMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- main content start-->
    <div id="page-wrapper">

        <%--	inbox   template--%>

        <div class="col-lg-12 ">
            <div class="panel-default">
                <div class="panel-heading">
                    Sent Mail 
                </div>
                <div class="inbox-page">
                    <h4>Today</h4>

                    <asp:DataList ID="DataList1" runat="server" CssClass="table" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">
                        <ItemTemplate>
                            <div class="inbox-row widget-shadow" id="accordion" role="tablist" aria-multiselectable="true">
                                <div class="mail ">
                                    <input type="checkbox" class="checkbox">
                                </div>
                                 <div class="mail ">


                                                <asp:LinkButton ID="LinkButton3" runat="server" visible="false" CommandName="edit">  
                                                    <i class="fa fa-star-o" aria-hidden="true" id="starout"></i>
                                                </asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton4" runat="server" visible="false" CommandName="update">

                                                    <i class="fa fa-star"  id="starin" ></i>
                                                    </asp:LinkButton>
                                    
                                
                                </div>
                                <div class="mail">
                                    <asp:Image ID="Image1" runat="server" ImageUrl=' <%# Bind("Profile_img") %>' CssClass="small" Style="width:35px; height:30px"/>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Sl_No") %>' Visible="false"></asp:Label>
                                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("StarBySender")%>' Visible="false"></asp:Label>

                                    </div>
                                <div class="mail mail-name">
                                    <h6>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label></h6>
                                </div>
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <div class="mail">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Subject")%>'></asp:Label>
                                    </div>
                                </a>
                                <div class="mail-right dots_drop">
                                    <div class="dropdown">
                                        <a href="#" data-toggle="dropdown" aria-expanded="false">
                                            <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                        </a>
                                        <ul class="dropdown-menu float-right">
                                            <li>
                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    <i class="fa fa-reply mail-icon"></i>
                                                    Reply
                                                </a>
                                            </li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                                                <a href="#" title="">
                                                    <i class="fa fa-download mail-icon"></i>
                                                    Archive
                                                </a>
                                            </li>
                                            <li>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete"> 
                                                     <i class="fa fa-trash-o mail-icon"></i>Delete</asp:LinkButton>
                                                
                                                   
                                                    
                                                
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="mail-right">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Date")%>'></asp:Label>
                                </div>
                                <div class="clearfix"></div>
                                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="mail-body">
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Message")%>' Style="color:black"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Reply to sender" required="required"></asp:TextBox> 
                                        <asp:Button ID="Button1" runat="server" Text="Sent" /> 
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
