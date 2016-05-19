module Admin
  class StatementsController < Admin::ApplicationController
    def new
      @statement = Statement.new
      @statement.lineitems.build
    end

    def edit
      @statement = current_user.statements.find params[:id]
      @statement.lineitems.build
    end
  end
end
