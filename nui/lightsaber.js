
(function() {
window.addEventListener('message', function(event){
    var action = event.data.action;
    var data = event.data;
    if (action == "show")
    {
            document.getElementById('name').value = data.name;
            document.getElementById('identity').value = data.identity;
            document.getElementById('passport').value = data.passport;
            document.getElementById('age').value = data.age;
            document.getElementById('inssue').value = data.inssue;
            document.getElementById('valid').value = data.valid;
            document.getElementById('body').style.display = ""
    }
    else
    {
        document.getElementById('body').style.display = "none"
    }
});
})();