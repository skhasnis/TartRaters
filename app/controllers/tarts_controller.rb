class TartsController < ApplicationController
    before_action :find_tart, only: [:show, :edit, :update, :destroy]

    def index
        @tarts = Tart.all.order("created_at DESC")
    end

    def show
    end
    
    def new
        @tart = Tart.new 
    end

    def create
        @tart = Tart.new(tart_params)

        if @tart.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @tart.update(tart_params)
            redirect_to tart_path(@tart)
        else
            render 'edit'
        end
    end

    def destroy
        @tart.destroy
        redirect_to root_path
    end

    private 
    
        def tart_params
            params.require(:tart).permit(:name, :tart_image)
        end

        def find_tart
            @tart = Tart.find(params[:id])
        end

end