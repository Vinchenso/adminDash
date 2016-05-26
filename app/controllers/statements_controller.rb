class StatementsController < ApplicationController
  before_action :set_statement, only: [:show, :edit, :update, :destroy]
  before_action :require_login

  def index
    @statement = Statement.all
  end

  def new
    @statement = Statement.new
    @statement.lineitems.build
    @default_line_items = [ "Opening Balance",
                            "Rent",
                            "Water",
                            "Sewerage",
                            "Refuse",
                            "VAT",
                            "Rent Recieved",
                            "Muncipal Recieved",
                            "Closing Balance",
                            "Collection Commission",
                            "Rates Payover",
                            "Payment to Owner"]
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
    redirect_to statements_url
  end

  def edit
    @default_line_items = []
  end

  def update
    if @statement.update_attributes(statement_params)
      redirect_to @statement
    else
      render action: "edit"
    end
  end

  def set_statement
    @statement = Statement.find(params[:id])
  end
  private

  def statement_params
    params.require(:statement).permit(:name, :description, lineitems_attributes: [:id, :description, :amount, :_destroy])
  end

end
