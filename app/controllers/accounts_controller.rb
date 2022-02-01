class AccountsController < ApplicationController
    def index
        @accounts = Account.all
    end

    def show
        @account = Account.find(params[:id])
        @year = params[:year] || Date.today.year
        @balances_per_year = @account.balances.where(:year => @year)
        @bookings_per_year = @account.bookings.where("cast(strftime('%Y', booked_at) as int) = ?", @year)
    end

    def new
        @account = Account.new
    end

    def create
        @account = Account.new(account_params)

        if @account.save
            redirect_to @account
        else
            render :new
        end
    end

    def edit
        @account = Account.find(params[:id])
    end

    def update
        @account = Account.find(params[:id])

        if @account.update(account_params)
            redirect_to @account
        else
            render :edit
        end
    end

    def destroy
        @account = Account.find(params[:id])
        @account.destroy
    
        redirect_to accounts_path
    end

    private
    
    def account_params
        params.require(:account).permit(:name, :iban)
    end
end
