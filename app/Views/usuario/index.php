<!-- indica o inicio do index, "o corpo do site " -->

    <div class="container">
        <h2>Usuario</h2>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Form"> Novo <i class="fas fa-plus"></i></button>
    <table class="table">
    </div>
    <thead>
       <tr>
        <td>ID</td>
        <td>NOME</td>
        <td>E-MAIL</td>
        <td>TELEFONE</td>
    </thead>
    <TBody>
        <?php foreach($listaUsuarios as $u) : ?>
            <tr>
                <td>
                    <?=$u['id']?>
                </td>
                <td>
                    <?=$u['nome']?>
               </td>
                <td>
                    <?=$u['email']?></td>
                <td>
                    <?=$u['telefone']?></td>
                    <td>
                    <?=anchor("Usuario/editar/".$u['id']," ",["class"=>"fas fa-edit btn btn-primary"])?>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Delet"> <i class="fas fa-trash-alt"></i></button>
                    
               </td>
            </tr>
        <?php endforeach?>
    </TBody>
</table>

<!-- Modal -->
<div class="modal fade" id="Form" tabindex="-1" aria-labelledby="Form" aria-hidden="true">
        <?=form_open("Usuario/cadastrar")?>
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Novo Usuario</h1>
                    
            </div>
                <div class="modal-body">
                   <div class="form-group">
                        <label for="nome">Nome</label>
                        <input id="nome" name="nome" type="text" class="form-control" required>
                   </div>
                   <div class="form-group">
                        <label for="email">email</label>
                        <input id="email" name="email" type="text" class="form-control" required>
                   </div>
                   <div class="form-group">
                        <label for="telefone">telefone</label>
                        <input id="telefone" name="telefone" type="text" class="form-control" required>
                   </div>
                </div>
                        <div class="modal-footer">
                        <?=anchor("Usuario/index/","Cancelar", ["class"=>"btn btn-outline-secondary"])?>
                            <button type="submit" class="btn btn-primary">Cadastrar</button>
                        </div>
        </div>
    </div>
    <?=form_close()?>
</div>

<!-- Modal Deletar -->
<div class="modal fade" id="Delet" tabindex="-1" aria-labelledby="Delet" aria-hidden="true">
        <?=form_open("Usuario/cadastrar")?>
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Deletar</h1>
            
            </div>
                <div class="modal-body">
                   <div class="form-group">
                      <label for="nome">Você deseja deletar o Usuario?</label>
                      
                   </div>
                </div>
                <div class="modal-footer">
                       
                        <?=anchor("Usuario/index/","Cancelar", ["class"=>"btn btn-outline-secondary"])?>
                        <?=anchor("Usuario/excluir/".$u["id"],"Sim ",["class"=>" btn btn-outline-danger"])?>
                       
                </div>
        </div>
    </div>
    <?=form_close()?>
</div>

