class AdminDashboardController < ApplicationController

  def index
     @trimesters = Trimester.all

  end

  def show
  end
end   
