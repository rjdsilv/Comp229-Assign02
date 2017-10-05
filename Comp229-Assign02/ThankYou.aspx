<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="Comp229_Assign02.ThankYou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h1>Thank You</h1>
            <p>
                Thank you for answering the survey. Your opinion is very important to us.
            </p>
        </div>

        <asp:Panel ID="SurveyAnswersPanel" CssClass="survey-panel" runat="server">
            <asp:Label Text="This is how you filled our survey." CssClass="survey-answer-title" runat="server" /><br /><br />

            <div class="col-xs-6 survey-answer">
                <span><b>First Name:</b> <%=Session["FirstName"] %></span>
            </div>
            <div class="col-xs-6 survey-answer">
                <span><b>Last Name:</b> <%=Session["LastName"] %></span>
            </div>

            <% if (!string.IsNullOrEmpty(Session["BirthDate"] as string)) { %>
            <div class="col-xs-6 survey-answer">
                <span><b>Birth Date:</b> <%=Session["BirthDate"] %></span>
            </div>
            <% } %>

            <div class="col-xs-6 survey-answer">
                <span><b>Province:</b> <%=Session["Province"] %></span>
            </div>
            <div class="col-xs-6 survey-answer">
                <span><b>City:</b> <%=Session["City"] %></span>
            </div>

            <% if (!string.IsNullOrEmpty(Session["PhoneNumber"] as string)) { %>
            <div class="col-xs-6 survey-answer">
                <span><b>Birth Date:</b> <%=FormatPhoneNumber() %></span>
            </div>
            <% } %>

            <div class="col-xs-6 survey-answer">
                <span><b>Email:</b> <%=Session["Email"] %></span>
            </div>
            <div class="col-xs-6 survey-answer">
                <span><b>Your most liked service is:</b> <%=Session["MostLikedService"] %></span>
            </div>
            <div class="col-xs-6 survey-answer">
                <span><b>Your most wished service is:</b> <%=Session["MostWishedService"] %></span>
            </div>
            <div class="col-xs-6 survey-answer">
                <span><b>You are likely to recomment us:</b> <%=Session["RecommendationLevel"] %></span>
            </div>

            <% if (!string.IsNullOrEmpty(Session["Comments"] as string)) { %>
            <div class="col-xs-11 survey-answer">
                <span><b>Your commens:</b> <%=Session["Comments"] %></span>
            </div>
            <% } %>
        </asp:Panel>
    </div>
</asp:Content>
