function prePasswordfocus(x) {
    x.placeholder = "";
}

function prePasswordblur(x) {
    var password = document.forms["changePassword"]["password"].value;
    if(password == null || password == ""){
        x.placeholder = "请输入原密码";
    }
}

function passwordfocus(x) {
    x.placeholder = "";
}

function passwordblur(x) {
    var password = document.forms["changePassword"]["newPassword"].value;
    if(password == null || password == ""){
        x.placeholder = "请输入新密码";
    }
}

function repasswordfocus(x) {
    if(x.type == "text" || x.placeholder != ""){
        x.style.color = "black";
        x.placeholder = "";
        x.value = "";
        x.type = "password";
    }
}

function repasswordblur(x) {
    var rePassword = document.forms["changePassword"]["reNewPassword"].value;
    if(rePassword == null || rePassword == ""){
        x.placeholder = "请再一次输入新密码";
    } else {
        var password = document.forms["changePassword"]["newPassword"].value;
        if(password != rePassword){
            x.style.color = "red";
            x.type = "text";
            x.value = "输入密码不一致"
        }
    }
}