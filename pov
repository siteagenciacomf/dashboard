<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DASHBOARD - AGENCIA DE EMPLEO</title>
    <link rel="icon" type="image/svg+xml" href="power-bi.svg">
    <style>
        body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background: url('https://raw.githubusercontent.com/Kikelong/siteagency/main/backpicture.jpg') no-repeat center center/cover;
        }
        #bloqueo, #contenido {
            text-align: center;
            background: rgba(255, 255, 255, 0.9); /* Fondo semi-transparente */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }
        #bloqueo {
            display: block;
        }
        #contenido {
            display: none;
        }
        input, button {
            margin-top: 10px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background: #007BFF;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

    <div id="bloqueo">
        <h2>🔒 Acceso restringido</h2>
        <p>Ingresa la contraseña para acceder:</p>
        <input type="password" id="clave" placeholder="Contraseña" oninput="verificar()">
        <button onclick="verificar()">Ingresar</button>
    </div>

    <div id="contenido">
        <h1></h1>
        <button onclick="salir()">Salir</button>
        <iframe title="ORIENTACION LABORAL" width="1800" height="800" src="https://app.powerbi.com/view?r=eyJrIjoiNWI1YWY5ZDAtNWYxYi00NzRlLThhMDQtZWE1OTQ0OWI2OTEzIiwidCI6ImQ2MDFlZjcxLTlkMTQtNGJhOC04NTc3LTA4YzkxMTYzNGM0MyIsImMiOjR9" frameborder="0" allowFullScreen="true"></iframe>
        <br>
    </div>

    <script>
        function verificar() {
            var claveIngresada = document.getElementById("clave").value;
            var claveCorrecta = atob("MjAyNQ=="); 

            if (claveIngresada === claveCorrecta) {
                document.getElementById("contenido").style.display = "block";
                document.getElementById("bloqueo").style.display = "none";
            }
        }

        function salir() {
            document.getElementById("contenido").style.display = "none";
            document.getElementById("bloqueo").style.display = "block";
            document.getElementById("clave").value = ""; // Borra la clave ingresada
        }
    </script>

</body>
</html>
