function usernamefocus(x) {
    x.value = "";
    x.style.color = "black";
}

function usernameblur(x) {
    var username = document.forms["login"]["username"].value;
    if(username == null || username == ""){
        x.style.color = "rgba(191, 191, 191, 1)";
        x.value = "请输入用户名";
    }
}

function passwordfocus(x) {
    x.value = "";
    x.type = "password";
    x.style.color = "black";
}

function passwordblur(x) {
    var password = document.forms["login"]["password"].value;
    if(password == null || password == ""){
        x.style.color = "rgba(191, 191, 191, 1)";
        x.type = "text";
        x.value = "请输入密码";
    }
}