$(function() {
    $("[name='producto']").focus();

    $("#form").submit(function() {
        var producto = $("[name='producto']").val() + "";

        //alert(producto.match(/[a-zA-Z]+/) === null);

        if (producto === "") {
            alert("Introduce un valor");
            event.preventDefault();
        } else {
            if (producto.match(/[a-zA-Z]+/) === null) {
                alert("Nombre invalido");
                event.preventDefault();
            }
        }
    });
});