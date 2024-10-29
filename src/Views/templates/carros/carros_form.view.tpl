<h1>{{modes_dsc}}</h1>

<section>
    <h2>hola aqui sigo soy el mismo solo cambia el titulo</h2>
    <form action="index.php?page=Carros-CarrosForm&mode={{mode}}&codigo={{codigo}}" method="post">
        {{with carro}} <!--para que se llenen los input en el formulario-->
        <div>
            <label for="codigo">Codigo</label>
            <input type="text" name="codigo" id="codigo" value="{{codigo}}" readonly>
        </div>
        <div>
            <label for="modelo">modelo</label>
            <input type="text" name="modelo" id="modelo" value="{{modelo}}">
        </div>
        <div>
            <label for="marca">marca</label>
            <input type="text" name="marca" id="marca" value="{{marca}}">
        </div>
        <div>
            <label for="anio">anio</label>
            <input type="text" name="anio" id="anio" value="{{anio}}">
        </div>
        <div>
            <label for="kilometraje">kilometraje</label>
            <input type="text" name="kilometraje" id="kilometraje" value="{{kilometraje}}">
        </div>
        <div>
            <label for="chasis">chasis</label>
            <input type="text" name="chasis" id="chasis" value="{{chasis}}">
        </div>
        <div>
            <label for="color">color</label>
            <input type="text" name="color" id="color" value="{{color}}">
        </div>
        <div>
            <label for="registro">registro</label>
            <input type="text" name="registro" id="registro" value="{{registro}}">
        </div>
        <div>
            <label for="cilindraje">cilindraje</label>
            <input type="text" name="cilindraje" id="cilindraje" value="{{cilindraje}}">
        </div>
        <div>
            <label for="rodaje">rodaje</label>
            <input type="text" name="rodaje" id="rodaje" value="{{rodaje}}">
        </div>
        <div>
            <label for="estado">estado</label>
            <input type="text" name="estado" id="estado" value="{{estado}}">
        </div>
        <div>
            <label for="precioventa">precioventa</label>
            <input type="text" name="precioventa" id="precioventa" value="{{precioventa}}">
        </div>
        <div>
            <label for="preciominio">preciominio</label>
            <input type="text" name="preciominio" id="preciominio" value="{{preciominio}}">
        </div>
        <div>
            <label for="notas">notas</label><br>
            <textarea name="notas" id="notas">{{notas}}</textarea>
        </div>
        <div>
            <button type="submit">Confirmar</button>
            <a href="index.php?page=Carros-CarrosList" class="btn">Cancelar</a>
        </div>
        {{endwith carro}}

    </form>
</section>