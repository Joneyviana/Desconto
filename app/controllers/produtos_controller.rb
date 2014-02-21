class ProdutosController < InheritedResources::Base
def build_resource_params
        [params.fetch(:produto, {}).permit(:loja_id , :promocao_id ,:nome, :descricao , :preco  )]
        end
end
