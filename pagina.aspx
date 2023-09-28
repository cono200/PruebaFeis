<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina.aspx.cs" Inherits="Prueba1APIS.pagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hola</h1>
        </div>
        <div>
            <label>asdakfsgfsdbhngjdrtnhbojidtnhosgndrougehdighedu5</label>
        </div>
    </form>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '1400586360490713',
                cookie: true,
                xfbml: true,
                version: 'v18.0'
            });

            FB.AppEvents.logPageView();

        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
        function onLogin() {
            FB.login((response) => {
                if (response.authResponse) {
                    FB.api('/me?fields=email,name,picture', (response) => {
                        console.log(response)
                    })
                }
            })
        }


    </script>

    <fb:login-button
        scope="public_profile,email"
        onlogin="checkLoginState();">
    </fb:login-button>
</body>


</html>
