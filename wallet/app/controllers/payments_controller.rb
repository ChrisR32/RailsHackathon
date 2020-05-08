class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_payment, only: [:show]
  before_action :set_user_payment, only: [:edit, :update, :destroy]

  def index
    @payments = current_user.payments.all
  end

  def create
    @payment = current_user.payments.create(payment_params)
  end

  def new
    @payment = Payment.new
  end

  def edit
  end

  def show
  end

  def update
    @payment = Payment.update(params["id"], payment_params)
    if @payment.errors.any?
      render "edit"
    else
      redirect_to payments_path
    end
  end

  def destroy
    Payment.find(params[:id]).destroy
    redirect_to payments_path
  end

  private

    def set_payment
        @payment = Payment.find(params[:id])
    end

    def set_user_payment
        id = params[:id]
        @payment = current_user.payments.find_by_id(id)
    
        if @payment == nil
            redirect_to payments_path
        end
    end

    def payment_params
      params.require(:payment).permit(:date, :amount)
  end
end
