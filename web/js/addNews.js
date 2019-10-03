/*
    标题验证和提示
 */
function titleFocus(x) {
    var title = document.forms["addNews"]["title"].value;
    if(title == null || title == ""){
        x.placeholder = "";
    }
}

function titleBlur(x) {
    var title = document.forms["addNews"]["title"].value;
    if(title == null || title == ""){
        x.placeholder = "请输入标题";
    }
}