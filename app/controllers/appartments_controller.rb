class AppartmentsController < ApplicationController
    before_action :set_appartment, only: [:show, :destroy, :edit, :update]
    
    def index
        @appartment = Appartment.search(params[:search])
        @blok = params[:search]
    end

    def show

    end

    def new
        @appartment = Appartment.new
    end

    def create
        @appartment = Appartment.new(appartment_params)

        if @appartment.save
            flash[:notice] = "Dodano poprawnie mieszkanie"
            redirect_to @appartment

        else
            render 'new'
        end
    end

    def destroy
        @appartment.destroy
        redirect_to @appartment
    end

    def edit

    end
    def update
    
        if @appartment.update(appartment_params)
            flash[:notice] = "Poprawnie edytowano mieszkanie"
            redirect_to @appartment
        else
            render 'edit'
        end
    end

    def add_occupant
        @appartment = Appartment.all
    end

    private

    def appartment_params
        params.require(:appartment).permit(:block_name,:number_of_appart,:appartment_id,:search,user_ids: [])
    end

    def set_appartment
        @appartment = Appartment.find(params[:id])
    end
    
end