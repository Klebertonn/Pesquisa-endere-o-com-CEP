# Pesquisa-endere-o-com-CEP
Formulário em  de pesquisa de endereço usando o CEP  com HTML e  PHP e JSON .

<html>
    <head>
    <title>consular endereco pelo cep</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


    <script type="text/javascript" >
    
    function limpa_formulário_cep() {
           
            document.getElementById('rua').value=("");
            document.getElementById('bairro').value=("");
            document.getElementById('cidade').value=("");
            document.getElementById('uf').value=("");
            document.getElementById('ibge').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
           
            document.getElementById('rua').value=(conteudo.logradouro);
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('uf').value=(conteudo.uf);
            document.getElementById('ibge').value=(conteudo.ibge);
        } //end if.
        else {
            
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }
        
    function pesquisacep(valor) {

        
        var cep = valor.replace(/\D/g, '');

        if (cep != "") {

            
            var validacep = /^[0-9]{8}$/;

            
            if(validacep.test(cep)) {

            
                document.getElementById('rua').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('uf').value="...";
                document.getElementById('ibge').value="...";

                
                var script = document.createElement('script');

                    script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                document.body.appendChild(script);

            } 
            else {
                
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } 
        else {
            
            limpa_formulário_cep();
        }
    };

    </script>
    </head>

    <body>
        <h1>CONSULTAS DE ENDEREÇOS PELO CEP COM JQUERY</h1>
    
      <form method="Post" action="processa.php">
        <label>Cep:
        <input name="cep" type="text" id="cep" value="" size="10" maxlength="9"
               onblur="pesquisacep(this.value);" /></label><br />

               <br><br/>
        <label>Rua:
        <input name="rua" type="text" id="rua" size="60" /></label><br />

        <br><br/> 

        <label>Bairro:
        <input name="bairro" type="text" id="bairro" size="40" /></label><br />

        <br><br/>

        <label>Cidade:
        <input name="cidade" type="text" id="cidade" size="40" /></label><br />

        <br><br/>

        <label>Estado:
        <input name="uf" type="text" id="uf" size="2" /></label><br />

        <br><br/>

        <label>IBGE:
        <input name="ibge" type="text" id="ibge" size="8" /></label><br />

        <br><br/>
        
		<input type="submit" value="Cadastrar">
      </form>
    </body>

    </html>
