class UnitListController < ApplicationController
  def new
    @unit=Unit.new
  end
  def complete
    #todo mark selected as complete
    redirect_to unit_list_path
    
  end
end
