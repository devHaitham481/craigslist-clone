$(function(){
    $("#show_contact_form").on("click",function(e){
        e.preventDefault();
        console.log("test");
        $("#show_contact_form").show();
        return false;
    });
});