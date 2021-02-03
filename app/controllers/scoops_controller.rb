class ScoopsController < ApplicationController

    def create

        scoop = Scoop.create(scoop_params)
        if scoop.save
            render({json: scoop, except: [:created_at, :updated_at]})
        else
            render json: scoop.errors, status: :unprocessable_entity
        end
    end

    private

    def scoop_params
        params.require(:scoop).permit(:order_id, :flavor_id)
    end

end
