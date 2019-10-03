function usernamefocus(x) {
    x.placeholder = "";
}

function usernameblur(x) {
    var username = document.forms["register"]["username"].value;
    if(username == null || username == ""){
        x.placeholder = "请输入用户名";
    }
}

function passwordfocus(x) {
    x.placeholder = "";
}

function passwordblur(x) {
    var password = document.forms["register"]["password"].value;
    if(password == null || password == ""){
        x.placeholder = "请输入密码";
    }
}

function repasswordblur(x) {
    var rePassword = document.forms["register"]["repassword"].value
    if(rePassword == null || rePassword == ""){
        x.placeholder = "请再一次输入密码";
    }
}