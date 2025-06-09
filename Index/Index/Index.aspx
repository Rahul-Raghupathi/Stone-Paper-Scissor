<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Index.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Rock Paper Scissor Game
    </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 349px;
            margin-right: 0px;
        }
        .auto-style6 {
            height: 87px;
             background-color:#FFEB3B;
        }
        .mid{
            background-color:white;
            border-radius:15px;
        }
        body{
            background-color:#FFEB3B;
        }
        .auto-style8 {
            height: 60px;
        }
        .auto-style10 {
            height: 54px;
        }
        .auto-style11 {
            height: 49px;
        }
        .auto-style12 {
            height: 53px;
        }
        .auto-style13 {
            height: 66px;
            background-color: #FFEB3B;
            text-align:center;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        .auto-style19 {
            width: 100%;
        }
        .auto-style23 {
            height: 66px;
            background-color: #FFEB3B;
            color: white;
            text-align: center;
            width: 211px;
        }
        .auto-style24 {
            height: 91px;
            background-color: #FFEB3B;
            width: 211px;
        }
        .auto-style25 {
            height: 92px;
            background-color: #FFEB3B;
            width: 211px;
        }
        .auto-style26 {
            height: 165px;
            background-color: #FFEB3B;
            width: 211px;
        }
        .auto-style27 {
            height: 87px;
            background-color: #FFEB3B;
            width: 211px;
        }
        .auto-style28 {
            height: 66px;
            background-color: #FFEB3B;
            color: white;
            text-align: center;
            width: 217px;
        }
        .auto-style29 {
            height: 91px;
            background-color: #FFEB3B;
            width: 217px;
        }
        .auto-style30 {
            height: 92px;
            background-color: #FFEB3B;
            width: 217px;
        }
        .auto-style31 {
            height: 165px;
            background-color: #FFEB3B;
            width: 217px;
        }
        .auto-style32 {
            height: 87px;
            background-color: #FFEB3B;
            width: 217px;
        }
        .auto-style33 {
            height: 60px;
            width: 259px;
        }
        .auto-style35 {
            height: 54px;
            width: 259px;
        }
        .auto-style36 {
            height: 49px;
            width: 259px;
        }
        .auto-style37 {
            height: 53px;
            width: 259px;
        }
        .auto-style38 {
            height: 60px;
            width: 291px;
        }
        .auto-style40 {
            height: 54px;
            width: 291px;
        }
        .auto-style41 {
            height: 49px;
            width: 291px;
            margin-left: 40px;
        }
        .auto-style42 {
            height: 53px;
            width: 291px;
        }
        .btn1{
            border:none;
            font-size:medium;
        }
        .auto-style43 {
            width: 259px;
        }
        .auto-style44 {
            width: 291px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style13" colspan="2">
                <h1 >Rock Paper Scissor</h1>
            </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td colspan="2" rowspan="3" class="mid">
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style33"></td>
                        <td class="auto-style38"></td>
                        <td class="auto-style8">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="245px" OnClick="Play_Game" CommandArgument="ROCK" ImageUrl="~/Img/rock.png" Width="161px" style="border-radius:15px; border: 2px solid"/>
                        </td>
                        <td class="auto-style44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="248px" OnClick="Play_Game" CommandArgument="PAPER" ImageUrl="~/Img/paper.png" style="border-radius:15px; border: 2px solid" />
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="247px" OnClick="Play_Game" CommandArgument="SCISSOR" ImageUrl="~/Img/scissor.png" style="border-radius:15px; border: 2px solid" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35"></td>
                        <td class="auto-style40">
                            <br />
                            <br />
                        </td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style36"></td>
                        <td class="auto-style41">
                            <asp:Label ID="Label1" runat="server" Style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"></asp:Label>
                        </td>
                        <td class="auto-style11"></td>
                    </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" class="btn1" runat="server" Height="35px" Text="Result" Width="100px" Visible="false" />
                        </td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td class="auto-style12">
                            <asp:Label ID="Label3" runat="server" Style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label4" runat="server" Style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style27"></td>
        </tr>
    </table>
    </form>
    </body>
</html>
