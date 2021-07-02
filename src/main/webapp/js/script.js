$(document).ready(function() {
    var dropdown1 = {
        1 : ['Cualquier Provincia'],
        2 : ['Cualquier Provincia', 'Almería', 'Granada', 'Sevilla', 'Málaga', 'Jaén', 'Cádiz', 'Huelva', 'Córdoba'],
        3 : ['Cualquier Provincia','Zaragoza', 'Teruel', 'Salamanca'],
        4 : ['Asturias'],
        5 : ['Cantabria'],
        6 : ['Cualquier Provincia','Guadalajara', 'Albacete', 'Cuenca', 'Ciudad Real', 'Toledo'],
        7 : ['Cualquier Provincia','Salamanca', 'Ávila', 'Zamora', 'León', 'Palencia', 'Segovia', 'Valladolid', 'Soria', 'Burgos'],
        8 : ['Cualquier Provincia','Gerona', 'Lérida', 'Barcelona', 'Tarragona'],
        9 : ['Cualquier Provincia','Castellón', 'Valencia', 'Alicante'],
        10 : ['Cualquier Provincia','Cáceres', 'Badajoz'],
        11 : ['Galicia'],
        12: ['La Rioja'],
        13: ['Madrid'],
        14: ['Murcia'],
        15: ['Navarra'],
        16: ['Cualquier Provincia','Álava', 'Guipúzcoa', 'Vizcaya'],
        17: ['Cualquier Provincia','Mallorca', 'Menorca', 'Ibiza'],
        18: ['Cualquier Provincia','Gran Canaria', 'Tenerife'],
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