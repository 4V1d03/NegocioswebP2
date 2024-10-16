<h1>Datos del Autor</h1>
<p>{{nombre_programado}}</p> <!--esta es la llave del arreglo en TopTen.php-->
<hr>

<ul>
    {{foreach clases}} <!--abre el ciclo de clases-->
    <li>{{this}}</li> <!--this se usa para cualquier areeglo atomico, arreglo sin llaves, arreglso ordinales-->
    {{endfor clases}} <!--cierra el ciclo de clases-->
</ul>
<hr>
<section class="zebra">
    <table>
        <tr>
            <th>Nombre</th>
            <th>Telefono</th>
        </tr>
        {{foreach contactos}}
        <tr>
            <td>{{nombre}}</td><!--scope de las llaves que estan siendo interdas, (las llaves internas)-->
            <td>{{telefono}}</td>
        </tr>
        {{endfor contactos}}
    </table>
</section>
<hr>

<form action="index.php?page=Sales-TopTen" method="post">
    <div>
        <label for="txtNombre">Nombre Completo </label>
        <input type="text" name="txtNombre" id="txtNombre" value="{{txtNombre}}">
        <br>
        <button type="submit" name="btnEnviar">Enviar</button>
    </div>
</form>

{{if rsltMessage}}<!--la variable tiene que evaluar a verdadero o falso, solo evalua si la variable es Verdadero o falso-->
    <hr>
    <div>
        {{rsltMessage}}
    </div>
{{endif rsltMessage}}