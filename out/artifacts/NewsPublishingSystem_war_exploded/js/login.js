function usernamefocus(x) {
    x.placeholder = "";
}

function usernameblur(x) {
    var username = document.forms["login"]["username"].value;
    if(username == null || username == ""){
        x.placeholder = "请输入用户名"
    }
}

function passwordfocus(x) {
    x.placeholder = "";
}

function passwordblur(x) {
    var password = document.forms["login"]["password"].value;
    if(password == null || password == ""){
        x.placeholder = "请输入密码";
    }
}

