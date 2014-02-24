class PreferenciaController < InheritedResources::Base
def build_resource_params
        [params.fetch(:preferencium, {}).permit(:produto_id , :cliente_id   )]
        end
end
