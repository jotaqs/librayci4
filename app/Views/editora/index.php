
    
    <div class="container">
        <h2>Editora</h2>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Form"> Novo(a) <i class="fas fa-plus"></i></button>
    <table class="table">
    </div>
    <thead>
       <tr>
        <td>ID</td>
        <td>NOME</td>
        <td>EMAIL</td>
        <td>TELEFONE</td>
    </thead>
    <TBody>
        <?php foreach($listaEditora as $a) : ?>
            <tr>
                <td>
                    <?=$a['id']?>
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
                    <?=anchor("Editora/editar/".$a['id']," ",["class"=>"fas fa-edit btn btn-primary"])?>
                    <?=anchor("Editora/excluir/".$a["id"]," ",["class"=>"fas fa-trash-alt btn btn-outline-danger"])?>
               </td>
            </tr>
        <?php endforeach?>
    </TBody>
</table>

<!-- Modal -->
<div class="modal fade" id="Form" tabindex="-1" aria-labelledby="Form" aria-hidden="true">
        <?=form_open("Editora/cadastrar")?>
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Nova Editora</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
                <div class="modal-body">
                   <div class="form-group">
                        <label for="nome">Nome</label>
                        <input id="nome" name="nome" type="text" class="form-control" required>
                   </div>
                   <div class="form-group">
                        <label for="nome">Email</label>
                        <input id="email" name="email" type="text" class="form-control" required>
                   </div>
                   <div class="form-group">
                        <label for="nome">Telefone</label>
                        <input id="telefone" name="telefone" type="text" class="form-control" required>
                   </div>
                        <div class="modal-footer">
                        <?=anchor("Editora/index/","Cancelar", ["class"=>"btn btn-outline-secondary"])?>
                            <button type="submit" class="btn btn-primary">Cadastrar</button>
                        </div>
        </div>
    </div>
    <?=form_close()?>
</div>

