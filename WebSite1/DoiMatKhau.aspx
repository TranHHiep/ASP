<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoiMatKhau.aspx.cs" Inherits="DoiMatKhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 500px;
            border: 1px solid #FFFFFF;
        }
        .auto-style6 {
            height: 50px;
        }
        .auto-style7 {
            height: 49px;
            text-align: left;
        }
        .auto-style8 {
            height: 42px;
            text-align: right;
        }
        .auto-style9 {
            width: 251px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" rowspan="4">&nbsp;</td>
            <td class="auto-style6">Username<br />
                <asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Old password<br />
                <asp:TextBox ID="TextBox2" runat="server" Width="184px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">New password<br />
                <asp:TextBox ID="TextBox3" runat="server" Width="184px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Onfirm new password<br />
                <asp:TextBox ID="TextBox4" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: right" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>

