function mostrarComentarios(){
	var x = document.getElementById("box_comentarios");
	var b = document.getElementById("boton_comentarios")
    if (x.style.display === "none") {
        x.style.display = "block";
        b.style.backgroundColor =" #4caf50";


    } else {
        x.style.display = "none";
        b.style.backgroundColor ="#333";
    }
}

function validarEmail() {
    
    var email = document.getElementById("email").value;

    //validacion de email
    if (/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i.test(email)){
        //crea el comentario con texto sin palabras prohibidas
        crearComentario();
    } else {
        alert("¡La dirección de email es incorrecta!");
    }
}


function validarTexto() {
//Listado de palabras prohibidas
	if (event.keyCode == 32){
		var texto = document.getElementById("entrada_texto").value;
        var prohibidas = ["mala", "pa^la^bra^2", "etc"];

        //Generar el regex
        function escaparRegex(string) {
            return string.replace(/[\\^$.|?*+()[{]/g, '\\$&');
        }

        var prohibidasOr = prohibidas.map(escaparRegex).join('|'),
        regex = new RegExp('\\[?\\b(?:' + prohibidasOr + ')\\b\\]?', 'gi');

    	//Reemplazar

    	var x = '*';
    	
        resultado = texto.replace(regex, x);

        document.getElementById("entrada_texto").value = resultado;
    }
}



function crearComentario() {
  
  var texto_in = document.getElementById("entrada_texto").value;
  var nombre_in = document.getElementById("entrada_nombre").value;

  var divPrincipal= document.getElementById('comentarios') ;
  var newDiv = document.createElement("div");

  var paraN = document.createElement("p");
  paraN.className="nombre";
  var nombre = document.createTextNode(nombre_in);
  paraN.appendChild(nombre);

  var paraD = document.createElement("p");
  paraD.className="fecha";
  var fecha = new Date();
  var options = { year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minutes: 'numeric'};
  fecha.toLocaleDateString("es-ES", options);
  var date = document.createTextNode(fecha);
  paraD.appendChild(date);


  var paraT = document.createElement("p");
  paraT.className ="text";
  var texto = document.createTextNode(texto_in);
  paraT.appendChild(texto);

  newDiv.appendChild(paraN);
  newDiv.appendChild(paraD);
  newDiv.appendChild(paraT);

  newDiv.className ="comentario";

  divPrincipal.appendChild(newDiv);
}

