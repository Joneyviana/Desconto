class ClientesController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:cliente, {}).permit(:nome, :data_de_nascimento, :email)]
        end
end
