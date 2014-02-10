class LojasController < InheritedResources::Base
def build_resource_params
        [params.fetch(:loja, {}).permit(:nome, :descricao, :cnpj)]
        end
end
