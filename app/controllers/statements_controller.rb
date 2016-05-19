class StatementsController < ApplicationController
  before_action :set_statement, only: [:show, :edit, :update, :destroy]
  def new
    @statement = Statement.new
  end

  def create
    @statement = Statement.new(statement_params)
  end

  def show
    @statement = Statement.find(params[:id])
  end
  def destroy
    @statement.destroy
  end
  def set_statement
    @statment = Statement.find(params[:id])
  end
  private

  def statement_params
    params_require(:statement).permit(:name, :description, lineitems_attributes:[:id, :description, :amount, :_destroy])
  end

end
