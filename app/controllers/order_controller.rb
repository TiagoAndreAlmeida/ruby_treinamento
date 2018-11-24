class OrderController < ApplicationController
    
    def index
        @orders = Order.all
    end
    
    def show 
        @order = Order.find(params[:id])
    end
    
    def new
        @order = Order.new
    end

    def create
        @order = Order.new( order_params )

        if @order.save
            redirect_to orders_path
        else
            render :new
        end
    end

    private
    def order_params
        params.require(:order).permit(
            :user,
            :days,
            :price,
            :notes,
            :end
        )
    end

end
