<div class="container">
  <h2>Detalles de la cuenta : <?php $this->session->userdata('user')?></h2>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Correo</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
              <?php 
              if($edit != FALSE){
                foreach ($edit->result() as $row) {
                    echo "<tr>";
                        echo "<td>".$row->Id."</td>";
                        echo "<td>".$row->nombre."</td>";
                        echo "<td>".$row->apellidos."</td>";
                        echo "<td>".$row->direccion."</td>";
                        echo "<td>".$row->telefono."</td>";
                        echo "<td>".$row->correo."</td>";
                        echo "<td><a href='http://localhost/eventos/index.php/login_controller/edit/".$row->Id."'><button type='submit' class='btn btn-primary'><i class='fas fa-pencil-alt'></i></button></a>";
                        echo "<a href='http://localhost/eventos/index.php/login_controller/delete/".$row->Id."'><button type='submit' class='btn btn-danger'><i class='fas fa-trash-alt'></i></button></a></td>";
                    echo "</tr>";
                }
              }else{
                  echo "NO EXISTEN LOS DATOS EN LA BASE DE DATOS";
              }
              ?>
    </tbody>
  </table>
</div>
