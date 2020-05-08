class ExpensesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user_expense, only: [ :show, :edit, :update, :destroy]

    def index
        puts "IN INDEX: "
        p @expenses = Expense.all
    end

    def show
        puts "IN SHOW: "
        p @expense
    end

    def new
        @heading = "Create new expense"
        @expense = Expense.new
    end

    def create
        @expense = current_user.expenses.create(expense_params)
        rerender_if_error("new")
    end           

    def edit
        @heading = "Edit this expense"
        puts "IN EDIT: "
        p @expense
        
        if @expense
            render("edit")
        else  
            redirect_to expenses_path
        end
    end

    def update
        if @expense
            @expense.update(expense_params)
            rerender_if_error("edit")
        else 
            redirect_to expenses_path
        end
    end

    def destroy
        puts "IN DESTROY: "
        p @expense
        
        if @expense != nil
            @expense.destroy
        end
        redirect_to expenses_path
    end

    private


    def set_expense
        @expense = Expense.find(params[:id])
    end

    def set_user_expense
        puts "IN 'set_user_expense': "
        
        p @expense= current_user.expenses.find_by_id(params[:id])

        if @expense == nil
            redirect_to expense_path
        end
    end

    def rerender_if_error(template_name)
        if @expense.errors.any?
            render template_name
        else
            redirect_to expenses_path
        end
    end

    def expense_params
        params.require(:expense).permit(:title, :description, :date_start)
    end

    def get_users_expense
        @expense = current_user.expenses.find_by_id(params["id"])
    end
end

