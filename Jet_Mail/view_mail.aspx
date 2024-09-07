<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="view_mail.aspx.cs" Inherits="Jet_Mail.view_mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">
        <div class="col-lg-12 " style="left: 0px; top: -27px">

            <div class="panel-default">
                <div class="panel-heading">
                    Viewing Mail
                </div>
                <div class="inbox-page">

                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>



                            <div class="mail">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-chevron-left" aria-hidden="true"></i></asp:LinkButton>

                            </div>
                            <div class="mail">
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-trash" aria-hidden="true"></i></asp:LinkButton>

                            </div>
                            <div class="mail">
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-archive" aria-hidden="true"></i></asp:LinkButton>

                            </div>
                            <br />

                            <div class="inbox-row">
                                <div class="mail">
                                    <%--<asp:Image ID="Image1" runat="server" ImageUrl=' <%# Bind("Profile_img") %>' CssClass="small" Style="width: 35px; height: 30px" />--%>
                                   
                                </div>
                                        <div class="mail">

                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" ReadOnly="true" Text='<%# Bind("Message")%>' BorderStyle="None" Height="500px" Width="1000px" Style="color:black" ></asp:TextBox>
                                        </div>   

                                <br />
                                <div class="mail">
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
