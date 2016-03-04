<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Reserve.aspx.cs" Inherits="Straub.Web.UI.About.Reserve" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function inputFocus(i) {
            if (i.value == i.defaultValue) { i.value = ""; i.style.color = "#000"; }
        }
        function inputBlur(i) {
            if (i.value == "") { i.value = i.defaultValue; i.style.color = "#888"; }
        }
    </script>
    <style>
        h2 {
            text-align: center;
        }

        .feedback {
            vertical-align: top !important;
            resize: none;
        }

        .button {
            border: 1px solid darkblue;
            width: 150px;
            height: 25px;
            background-color: lightsalmon;
            padding-top:5px;
            color: darkred;
            font-weight: bold;
            float: right;
        }
    </style>

    <h2>We are a work in progress.</h2>
    <p>We expect to launch in fall 2016 in time for the start of College Basketball. Followed by MLB, NFL and
       College football. We would like for you to join us in our development. We need 100 reservations for us to 
       launch. Reserve your seat today to receive preferential discounts, our monthly newsletter and an 
       invitation to participate in database testing in the coming months . Reserve now!
    </p>
    <p>
        <b>Enter email address:</b> <input type="text" name="email" title="Email Address" style="color:#888;" value="email@example.com" onfocus="inputFocus(this)" onblur="inputBlur(this)" />
        <asp:CheckBox ID="chkDB" runat="server" Font-Bold="True" Text="Yes, I want to be a Database Tester" />
    </p>
    <p>
        <b>Please provide any other feedback or comments for us. Thanks for your support!</b>
        <asp:TextBox ID="txtFeedback" runat="server" Text="Feel free to leave empty if you do not have any feedback at this time." ForeColor="Gray" Width="500px" Height="75px" CssClass="feedback" TextMode="MultiLine"></asp:TextBox>
    </p>
    <div style="text-align: center;">
        <asp:LinkButton ID="btnSubmit" runat="server" Text="Submit" CssClass="button" Font-Underline="false" PostBackUrl="~/About/Submission.aspx"></asp:LinkButton>
    </div>

</asp:Content>
