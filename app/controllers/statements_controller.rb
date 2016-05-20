class StatementsController < ApplicationController
  before_action :set_statement, only: [:show, :edit, :update, :destroy]

  def index
    @statement = Statement.all
  end

  def new
    @statement = Statement.new
  end

  def create
    @statement = Statement.new(statement_params)
    if @statement.save
      redirect_to @statement
    else
      render action: "new"
    end
  end

  def show
  end

  def destroy
    @statement.destroy
  end

  def edit
  end

  def set_statement
    @statement = Statement.find(params[:id])
  end
  private

  def statement_params
    params.require(:statement).permit(:name, :description, lineitems_attributes: [:id, :description, :amount, :_destroy])
  end

end
