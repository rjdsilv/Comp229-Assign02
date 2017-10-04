<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Assign02.Home" %>
<asp:Content ID="HomePageContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-xs-5 body-column">
            <div class="body-column-header">
                <span>About the Brand</span>
            </div>
            <hr />
            <div class="body-column-content">
                <p>
                    <span class="brand-logo-small">Me</span> is a brand which purpose is to offer its customers a set of websites that provide different services such as
                    scheduling apponitments in clinics near <span class="brand-logo-small">Me</span>, finding and bying cupoms for using gyms near
                    <span class="brand-logo-small">Me</span>, finding musicians near <span class="brand-logo-small">Me</span> to build or a band, and a lot more useful
                    services that our customer may need. Our mission is to make our customers life easier by offering them an unified serivice platform. To know
                    about our privacy statement click <asp:HyperLink ToolTip="Click here to go to our private statement." runat="server" NavigateUrl="https://privacy.microsoft.com/en-ca/privacystatement" Text="HERE" Target="_blank" />.
                </p>
            </div>
        </div>
        <div class="col-xs-2"></div>
        <div class="col-xs-5 body-column">
            <div class="body-column-header">
                <span>About the Survey</span>
            </div>
            <hr />
            <div class="body-column-content">
                <p>
                    As a new company offering different kind of services, we are conducting a survey to know what our customers think about the services that
                    <span class="brand-logo-small">Me</span> is already offering, and what kind of new services our customers would like to have next, so we
                    can launch <span class="brand-logo-small">Me</span>'s new service platform based on what our customers need the most in order to make their
                    lives easier. It's very important for <span class="brand-logo-small">Me</span> that our customers respond to this survey. To access it please,
                    click <asp:HyperLink ToolTip="Click here to go to the survey about our services." runat="server" NavigateUrl="~/Survey" Text="HERE" />.
                </p>
            </div>
        </div>
    </div>
</asp:Content>
