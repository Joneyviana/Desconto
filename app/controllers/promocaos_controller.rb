class PromocaosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:promocao, {}).permit(:nome, :data_inicio, :data_fim , :porcentagem)]
        end
end
