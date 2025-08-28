
class AdminDashboardController < ApplicationController
  def index
     @current_trimester = Trimester.where("start_date <= ?", Date.today).where("end_date >= ?", Date.today).first
     @past_trimester = Trimester.where("start_date <= ?", Date.today).where("end_date >= ?", Date.today).first
  end
    
    

  def show
  end
    

end   
 