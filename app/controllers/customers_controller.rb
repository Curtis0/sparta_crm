class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params_customer)
    @customer.save
    redirect_to @customer
  end

  def edit
  end

  def update
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def destroy
  end

private

  def params_customer
    params.require(:customer).permit(
      :family_name,
      :given_name,
      :email_string
      )
  end
end
