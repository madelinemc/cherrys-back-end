class BaseTypesController < ApplicationController

    def index
        base_types = BaseType.all
        render({json: base_types, except: [:created_at, :updated_at]})
    end

end
