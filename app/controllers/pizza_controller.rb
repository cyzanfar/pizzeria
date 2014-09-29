class PizzaController < ApplicationController
  def index
  	@time = Time.now.to_s
  end

  def order
  	@params = params[:pizza]
  	@name = @params[:name]
  	@email = @params[:email]

  	respond_to do |format|
  		format.html
  	end
  end

  def update_time
	render(:update) do |page|
	page[time_div].replace_html @time
  end
end	

end
