<!--cria a parte de iditar as informações que estão no banco de dados  -->
<div class="container p-5">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6 bg-dark text-white p-4" data-bs-theme="dark">
             <?=form_open("Usuario/salvar")?>
                <input type="hidden" name="id" id="id" value='<?=$usuario['id']?>'>
                <div class="row p-2">
                    <div class="col-2">
                        <label for="nome">Nome</label>
                    </div>
                    <div class="col-10">
                        <input type="text" name="nome" id="nome" class="form_control" value='<?=$usuario['nome']?>'>
                    </div>
                </div>
                <div class="row p-2">
                    <div class="col-2">
                        <label for="email">email</label>
                    </div>
                    <div class="col-10">
                        <input type="text" name="email" id="email" class="form_control" value='<?=$usuario["email"]?>'>
                    </div>
                </div>
                <div class="row p-2">
                    <div class="col-2">
                        <label for="telefone">telefone</label>
                    </div>
                    <div class="col-10">
                        <input type="text" name="telefone" id="telefone" class="form_control" value='<?=$usuario["telefone"]?>'>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="btn-group w-100" role="group">
                                <?=anchor("Usuario/index/","Cancelar", ["class"=>"btn btn-outline-secondary"])?>
                                <button type="submit" class="btn btn-outline-success">Salvar</button>
                        </div>
                    </div>
                </div>           


            <?=form_close()?> 
        </div>  
    </div>
</div>