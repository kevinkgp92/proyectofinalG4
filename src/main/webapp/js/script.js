$(document).ready(function() {
    var dropdown1 = {
        1 : ['Cualquier Provincia'],
        2 : ['Almería', 'Granada', 'Sevilla', 'Málaga', 'Jaén', 'Cádiz', 'Huelva', 'Córdoba'],
        3 : ['Zaragoza', 'Teruel', 'Salamanca'],
        4 : ['Asturias'],
        5 : ['Cantabria'],
        6 : ['Guadalajara', 'Albacete', 'Cuenca', 'Ciudad Real', 'Toledo'],
        7 : ['Salamanca', 'Ávila', 'Zamora', 'León', 'Palencia', 'Segovia', 'Valladolid', 'Soria', 'Burgos'],
        8 : ['Gerona', 'Lérida', 'Barcelona', 'Tarragona'],
        9 : ['Castellón', 'Valencia', 'Alicante'],
        10 : ['Cáceres', 'Badajoz'],
        11 : ['Galicia'],
        12: ['La Rioja'],
        13: ['Madrid'],
        14: ['Murcia'],
        15: ['Navarra'],
        16: ['Álava', 'Guipúzcoa', 'Vizcaya'],
        17: ['Mallorca', 'Menorca', 'Ibiza'],
        18: ['Gran Canaria', 'Tenerife'],
        19 : ['Ceuta'],
        20: ['Melilla'],
        
    }
    $('#first_selected').html(
            '<option>'+dropdown1[1].join('</option><option>')+'</option>'
        );
    $('#first').on('change',function() {
        $('#first_selected').html(
            '<option>'+dropdown1[$(this).val()].join('</option><option>')+'</option>'
        );
    });
});