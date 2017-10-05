<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Survey" %>
<asp:Content ID="SurveyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h1>Satisfaction Survey</h1>
            <p>
                Help us to improve our services and to build the next platform for you.
            </p>
        </div>

        <!-- Personal info panel HTML -->
        <asp:Panel ID="PersonaInfolPanel" CssClass="survey-panel" runat="server">
            <asp:Label Text="Personal Information" CssClass="survey-panel-title" runat="server" /><br /><br />

            <!-- Left Panel -->
            <div class="col-xs-6">
                <asp:TextBox ID="FirstNameTextBox" MaxLength="50" TextMode="SingleLine" placeHolder="First Name (Required)" CssClass="survey-input" runat="server" TabIndex="1"/>
                <asp:RequiredFieldValidator ID="FirstNameTextBox_RequiredFieldValidator" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage="First name is required." SetFocusOnError="True" Display="Dynamic" CssClass="survey-error-message"/>

                <asp:TextBox ID="BirthDateTextBox" TextMode="SingleLine" CssClass="survey-input" placeHolder="YYYY/MM/DD (Optional)" runat="server" TabIndex="3" />
                <%-- Setting the maximum value in code behind.  --%>
                <asp:RangeValidator ID="BirthDateTextBox_RangeValidator" runat="server" Type="Date" ControlToValidate="BirthDateTextBox" MinimumValue="1900/01/01" Display="Dynamic" ErrorMessage="You must be over 16 years old to answer this survey." CssClass="survey-error-message"/>

                <asp:TextBox ID="CityTextBox" MaxLength="50" TextMode="SingleLine" placeHolder="City (Required)" CssClass="survey-input" runat="server" TabIndex="5" />
                <asp:RequiredFieldValidator ID="CityTextBox_RequiredFieldValidator" runat="server" ControlToValidate="CityTextBox" ErrorMessage="City name is required." SetFocusOnError="True" Display="Dynamic" CssClass="survey-error-message"/>

                <asp:TextBox ID="EmailTextBox" TextMode="SingleLine" placeHolder="Email (Required)" CssClass="survey-input" runat="server" TabIndex="7" />
                <asp:RequiredFieldValidator ID="EmailTextBox_RequiredFieldValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email is required." SetFocusOnError="True" Display="Dynamic" CssClass="survey-error-message" />
                <asp:RegularExpressionValidator ID="EmailTextBox_RegularExpressionValidator" runat="server" ControlToValidate="EmailTextBox" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="Please enter a valid email address." CssClass="survey-error-message" />
            </div>

            <!-- Right Panel -->
            <div class="col-xs-6">
                <asp:TextBox ID="LastNameTextBox" MaxLength="50" TextMode="SingleLine" placeHolder="Last Name (Required)" CssClass="survey-input" runat="server" TabIndex="2"/>
                <asp:RequiredFieldValidator ID="LastNameTextBox_RequiredFieldValidator" runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Last name is required." SetFocusOnError="True" Display="Dynamic" CssClass="survey-error-message"  />

                <asp:DropDownList ID="ProvinceDropDown" runat="server" CssClass="survey-input" TabIndex="4">
                    <asp:ListItem Text="Select Your Province (Required)" Value="" />
                    <asp:ListItem Text="AC" Value="AC" />
                    <asp:ListItem Text="BC" Value="BC" />
                    <asp:ListItem Text="MB" Value="MB" />
                    <asp:ListItem Text="NB" Value="NB" />
                    <asp:ListItem Text="NL" Value="NL" />
                    <asp:ListItem Text="NS" Value="NS" />
                    <asp:ListItem Text="ON" Value="ON" />
                    <asp:ListItem Text="PE" Value="PE" />
                    <asp:ListItem Text="QC" Value="QC" />
                    <asp:ListItem Text="SK" Value="SK" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ProvinceDropDown_RequiredFieldValidator" runat="server" ControlToValidate="ProvinceDropDown" ErrorMessage="Please, select one of the provinces." SetFocusOnError="True" Display="Dynamic" CssClass="survey-error-message"  />

                <asp:TextBox ID="PhoneNumberTextBox" TextMode="SingleLine" placeHolder="Phone Number - 10 digits (Optional)" CssClass="survey-input" runat="server" TabIndex="6" />
                <asp:RegularExpressionValidator ID="PhoneNumberTextBox_RegularExpressionValidator" runat="server" ControlToValidate="PhoneNumberTextBox" ValidationExpression="^\d{10}$" ErrorMessage="Please enter a valid phone number (10 numbers)." CssClass="survey-error-message" />
            </div>
        </asp:Panel>

        <!-- Survey questions panel HTML -->
        <asp:Panel ID="SurveyQuestionsPanel" CssClass="survey-panel" runat="server">
            <asp:Label Text="Survey Questions" CssClass="survey-panel-title" runat="server" /><br /><br />

            <!-- Question 1 -->
            <div class="col-xs-12 survey-question">
                <span><b>1.</b> What is the <span class="brand-logo-survey">Me</span> service you like the most?</span><span class="survey-required">(Required)</span>
            </div>
            <div class="col-xs-12 survey-answer">
                <div class="col-xs-4">
                    <asp:RadioButton ID="ClinicMeRadioButton" Text="Clinic.Me" GroupName="CurrentServicesGroup" runat="server" TabIndex="8" />
                </div>
                <div class="col-xs-4">
                    <asp:RadioButton ID="GymMeRadioButton" Text="Gym.Me" GroupName="CurrentServicesGroup" runat="server" TabIndex="9" />
                </div>
                <div class="col-xs-4">
                    <asp:RadioButton ID="BandMeRadioButton" Text="Band.Me" GroupName="CurrentServicesGroup" runat="server" TabIndex="10" />
                </div>
            </div>
            <asp:CustomValidator ID="ServiceMostLiked_CustomValidator" OnServerValidate="ValidateServiceMostLikedSelected" ErrorMessage="Please, select one of the available options for the most liked service." Display="Dynamic" runat="server" CssClass="survey-error-message" />

            <!-- Question 2 -->
            <div class="col-xs-12 survey-question">
                <span><b>2.</b> What is the <span class="brand-logo-survey">Me</span> service you wish to have next?</span><span class="survey-required">(Required)</span>
            </div>
            <div class="col-xs-12 survey-answer">
                <div class="col-xs-4">
                    <asp:RadioButton ID="PetMeRadioButton" Text="Pet.Me" GroupName="FutureServicesGroup" ToolTip="Find a place to take care of your pets." runat="server" TabIndex="11" />
                </div>
                <div class="col-xs-4">
                    <asp:RadioButton ID="RestaurantMeRadiioButton" Text="Restaurant.Me" GroupName="FutureServicesGroup" ToolTip="Find a restaurant you love." runat="server" TabIndex="12" />
                </div>
                <div class="col-xs-4">
                    <asp:RadioButton ID="LanguageMeRadioButton" Text="Language.Me" GroupName="FutureServicesGroup" ToolTip="Find a language school to improve your skills" runat="server" TabIndex="13" />
                </div>
            </div>
            <asp:CustomValidator ID="ServiceMostWished_CustomValidator" OnServerValidate="ValidateServiceMostWishedSelected" ErrorMessage="Please, select one of the available options for the most wished service." Display="Dynamic" runat="server" CssClass="survey-error-message" />

            <!-- Question 3 -->
            <div class="col-xs-12 survey-question">
                <span><b>3.</b> How likely would you recommend <span class="brand-logo-survey">Me</span> services for a friend?</span><span class="survey-required">(Required)</span>
            </div>
            <div class="col-xs-12 survey-answer">
                <div class="col-xs-6">
                <asp:DropDownList ID="RecommendationLevelDropDown" runat="server" CssClass="survey-input" TabIndex="14">
                    <asp:ListItem Text="Totally" Value="Totally" Selected="True" />
                    <asp:ListItem Text="Very Likely" Value="Very Likely" />
                    <asp:ListItem Text="Maybe" Value="Maybe" />
                    <asp:ListItem Text="Not Likely" Value="Not Likely" />
                    <asp:ListItem Text="Never" Value="Never" />
                </asp:DropDownList>
                </div>
            </div>

            <!-- Question 4 -->
            <div class="col-xs-12 survey-question">
                <span><b>4.</b> Please, leave a comment so we can improve our services.</span>
            </div>
            <div class="col-xs-12 survey-answer">
                <div class="col-xs-6">
                    <asp:TextBox ID="CommentTextBox" TextMode="MultiLine" CssClass="survey-input" runat="server" placeholder="Leave a comment (Optional)." TabIndex="15" />
                </div>
            </div>
        </asp:Panel>
        <br />
        <div class="survey-submit-panel">
            <asp:Button ID="SubmitSurveyButton" runat="server" Text=" Send Survey " CssClass="survey-submit" OnClick="SubmitSurveyButton_Click" TabIndex="16" />
        </div>
    </div>
</asp:Content>
