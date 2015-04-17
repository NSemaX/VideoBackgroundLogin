<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login2" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Video Back Login</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Bootstrap Core CSS -->
    <link href="./bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="./bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="./bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <style>
        /*body  {
    background-image: url("http://i.ndtvimg.com/auto/makers/10/63/ferrari-458-italia-01.jpg");
    background-color: #cccccc;
    background-size:cover;
}*/
        body {
            margin: 0;
            background: #000;
        }

        video {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            z-index: -100;
            background: url('./images/back2.jpg') no-repeat;
            background-size: cover;
            transition: 1s opacity;
        }

        .stopfade {
            opacity: .5;
        }


        @media screen and (max-device-width: 800px) {
            body {
                background-image: url('./images/back2.jpg');
            }
            #bgvid {
                display: none;
            }
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <video poster="./images/back2.jpg" id="bgvid" autoplay loop muted>
                <source src="//vjs.zencdn.net/v/oceans.webm" type="video/webm">
                <source src="//vjs.zencdn.net/v/oceans.mp4" type="video/mp4">
            </video>

            <div class="row" style="margin-top: 200px;">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Giriş</h3>
                        </div>
                        <div class="panel-body">

                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox ID="UserName" runat="server" class="form-control" placeholder="E-mail" name="email" type="email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" ID="Password" class="form-control" placeholder="Şifre" name="şire" type="password" value=""></asp:TextBox>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox Text="Beni hatırla" ID="RememberMe" runat="server" />
                                    </label>
                                </div>
                                <asp:Button ID="LoginButton" runat="server" Text="Giriş Yap" OnClick="LoginButton_Click" class="btn btn-lg btn-success btn-block"></asp:Button>
                                <asp:Label Style="color: red" runat="server" ID="lblAlert_Text"></asp:Label>
                            </fieldset>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="./bower_components/jquery/dist/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="./bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="./bower_components/metisMenu/dist/metisMenu.min.js"></script>

    </form>
</body>

</html>
