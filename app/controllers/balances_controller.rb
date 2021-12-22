class BalancesController < ApplicationController
    def show
        @balance = Balance.find(params[:id])
    end

    def new
        @balance = Balance.new
    end
    
    def create
        @balance = Balance.new(balance_params)

        if @balance.save
            redirect_to @balance
        else
            render :new
        end
    end

    def edit
        @balance = Balance.find(params[:id])
    end
    
    def update
        @balance = Balance.find(params[:id])
    
        if @balance.update(balance_params)
            redirect_to @balance
        else
            render :edit
        end
    end

    private

    def balance_params
        params.require(:balance).permit(:balance, :year, :month, :account_id)
    end
end
