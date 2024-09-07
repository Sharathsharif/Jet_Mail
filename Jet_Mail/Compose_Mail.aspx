<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Compose_Mail.aspx.cs" Inherits="Jet_Mail.Compose_Mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper">
        <div class="main-page compose">
            <div class="col-md-10 compose-right widget-shadow">
                <div class="panel-default">
                    <div class="panel-heading">
                        Compose New Message 
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-info">
                            Please fill details to send a new message
                        </div>
                        <asp:TextBox ID="TextBox1" TextMode="Email" runat="server" required="required" class="form-control1 control3" placeholder="To :"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control1 control3" placeholder="Subject :"></asp:TextBox>
                            
                        <asp:TextBox ID="TextBox3" TextMode="MultiLine" runat="server" rows="6" class="form-control1 control2" placeholder="Message :"></asp:TextBox>
                            
                            <div class="form-group">
                                <div class="btn btn-default btn-file">
                                    <i class="fa fa-paperclip"></i>Attachment
										<input type="file" name="attachment">
                                </div>
                                <p class="help-block">Max. 32MB</p>
                            </div>
                        <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="Button1_Click" />

                           
                        
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="clearfix"></div>
</asp:Content>
