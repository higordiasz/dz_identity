
(function () {
    window.addEventListener('message', function (event) {
        var action = event.data.action;
        var data = event.data;
        if (action == "show") {
            document.getElementById('name').value = data.name;
            document.getElementById('identity').value = data.identity;
            document.getElementById('passport').value = data.passport;
            document.getElementById('age').value = data.age;
            document.getElementById('phone').value = data.phone;
            document.getElementById('valid').value = data.valid;
            document.getElementById('body').style.display = ""
        }
        else {
            document.getElementById('body').style.display = "none"
        }
        document.onkeyup = function (data) {
            if (data.which == 27) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "http://dz_identity/close", true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.send(JSON.stringify({
                    data: ""
                }));
            }
        };
    });
})();