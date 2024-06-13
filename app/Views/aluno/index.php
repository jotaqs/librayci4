
    
    <div class="container">
        <h2>Aluno</h2>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Form"> Novo <i class="fas fa-plus"></i></button>
    <table class="table">
    </div>
    <thead>
       <tr>
        <td>ID</td>
        <td>CPF</td>
        <td>NOME</td>
        <td>EMAIL</td>
        <td>TELEFONE</td>
        <td>TURMA</td>
    </thead>
    <TBody>
        <?php foreach($listaAlunos as $a) : ?>
            <tr>
                <td>
                    <?=$a['id']?>
                </td>
                <td>
                    <?=$a['cpf']?>
                </td>
                <td>
                    <?=$a['nome']?>
                </td>
                <td>
                    <?=$a['email']?>
                </td>
                <td>
                    <?=$a['telefone']?>
                </td>
                <td>
                    <?=$a['turma']?>
                </td>
                <td>
                    <?=anchor("Aluno/editar/".$a['id']," ",["class"=>"fas fa-edit btn btn-primary"])?>
                    <?=anchor("Aluno/excluir/".$a["id"]," ",["class"=>" fas fa-trash-alt btn btn-outline-danger"])?>

               </td>

                  
               </td>
            </tr>
        </TBody>
        <?php endforeach?>
</table>

<!-- Modal -->
<div class="modal fade" id="Form" tabindex="-1" aria-labelledby="Form" aria-hidden="true">
        <?=form_open("Aluno/cadastrar")?>
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Novo Autor</h1>

            </div>
                <div class="modal-body">
                   <div class="form-group">
                        <label for="nome">CPF</label>
                        <input id="cpf" name="cpf" type="text"  id="cpf" maxlength="14" placeholder="000.000.000-00" class="form-control" r required oninvalid="this.setCustomValidity('Preencha o CPF')" oninput="this.setCustomValidity('')">
                   </div>
                   <div class="form-group">
                        <label for="nome">Nome</label>
                        <input id="nome" name="nome" type="text" class="form-control" required oninvalid="this.setCustomValidity('Preencha o Nome')"  oninput="this.setCustomValidity('')">
                   </div>
                   <div class="form-group">
                        <label for="nome">Email</label>
                        <input id="email" name="email" type="text" class="form-control" required oninvalid="this.setCustomValidity('Preencha o Email')"  oninput="this.setCustomValidity('')">
                   </div>
                   <div class="form-group">
                        <label for="nome">Telefone</label>
                        <input id="telefone" name="telefone" type="text" class="form-control" required oninvalid="this.setCustomValidity('Preencha o Telefone')"  oninput="this.setCustomValidity('')">
                   </div>
                   <div class="form-group">
                        <label for="nome">Turma</label>
                        <select class="form-control" id="turma" name="turma" value="turma" required>
                            <option value="1A">1A</option>
                            <option value="1B">1B</option>
                            <option value="1C">1C</option>
                            <option value="1D">1D</option>
                            <option value="2A">2A</option>
                            <option value="2B">2B</option>
                            <option value="2C">2C</option>
                            <option value="2D">2D</option>
                            <option value="3A">3A</option>
                            <option value="3B">3B</option>
                            <option value="3C">3C</option>
                            <option value="3D">3D</option>
                        </select>
                   </div>
                        <div class="modal-footer">
                        <?=anchor("Aluno/index/","Cancelar", ["class"=>"btn btn-outline-secondary"])?>
                            <button type="submit" class="btn btn-primary">Cadastrar</button>
                        </div>
        </div>
    </div>
    <?=form_close()?>
</div>  
 <script>
        function formatCPF(cpf) {
            cpf = cpf.replace(/\D/g, ""); // Remove todos os caracteres não numéricos
            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2"); // Coloca um ponto entre o terceiro e o quarto dígitos
            cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2"); // Coloca um ponto entre o sexto e o sétimo dígitos
            cpf = cpf.replace(/(\d{3})(\d{1,2})$/, "$1-$2"); // Coloca um hífen entre o nono e o décimo dígitos
            return cpf;
        }

        document.getElementById('cpf').addEventListener('input', function (e) {
            e.target.value = formatCPF(e.target.value);
        });
    </script>