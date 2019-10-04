function titleFocus(x) {
    if(x.value == null || x.value == ""){
        x.placeholder = "";
    }
}

function titleBlur(x){
    if(x.value == null || x.value == ""){
        x.placeholder = "请输入标题";
    }
}