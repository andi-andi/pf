$(function () {
    $.ajax({
        url:"header.html",
        type:"get",
        success:function (result){
            $(result).replaceAll("#headerid");
            $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
        }
    });
    $.ajax({
        url:"footer.html",
        type:"get",
        success:function (result){
            $(result).replaceAll("#footerid");
            $(`<link rel="stylesheet" href="css/footer.css">`).appendTo("head");
        }
    });
});