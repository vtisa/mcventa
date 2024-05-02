    function soloLetras(event) {
        var input = event.target;
        var valor = input.value;
        valor = valor.replace(/[0-9]/g, '');
        input.value = valor;
        return true;
    }