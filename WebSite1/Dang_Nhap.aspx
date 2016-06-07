<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dang_Nhap.aspx.cs" Inherits="Dang_Nhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 500px;
            border: 1px solid #000000;
        }
        .auto-style6 {
            width: 193px;
        }
        .auto-style7 {
            height: 34px;
            text-align: right;
        }
        .auto-style9 {
            height: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="auto-style5">
        <tr>
            <td colspan="2" style="text-align: center">Đăng nhập</td>
        </tr>
        <tr>
            <td class="auto-style6" rowspan="2">&nbsp;</td>
            <td class="auto-style9">User name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Password<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="text-align: right" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>

