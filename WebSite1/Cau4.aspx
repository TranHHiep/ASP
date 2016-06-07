<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cau4.aspx.cs" Inherits="Cau4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 800px;
            margin-bottom: 15px;
        }

        .auto-style6 {
            height: 129px;
        }

        .auto-style7 {
            width: 600px;
            border-style: solid;
            border-width: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style5">
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton12" runat="server">LinkButton</asp:LinkButton>
                |<asp:LinkButton ID="LinkButton13" runat="server">LinkButton</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>Search:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="319px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table align="center" cellpadding="3" cellspacing="3" class="auto-style7">
                             <tr>
                                <td>CategoryName</td>
                                <td>Description</td>
                                <td>Select</td>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("CategoryName") %></td>
                            <td><%#Eval("Description") %></td>
                            <td>
                                <asp:CheckBox ID="chkxoa" runat="server" />
                                <asp:HiddenField ID="hfxoa" runat="server" Value='<%#Eval("CategoryID") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

            </td>
        </tr>
    </table>
</asp:Content>

