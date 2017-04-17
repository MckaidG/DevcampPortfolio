class PortfoliosController < ApplicationController
	
  def index
    @portfolio_items = Portfolio.all 
  end

  def new
	@portfolio_item = Portfolio.new
  end

# Creates portfolio items

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
       end
     end
   end
   
# GET /portfolio

   def edit
    	@portfolio_item = Portfolio.find(params[:id])
   end
   

def update
	@portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show 
    @portfolio_item = Portfolio.find(params[:id])
  end

def destroy
    # Performe the look up
  @portfolio_item = Portfolio.find(params[:id])

    # Destroys/delete the record
  @portfolio_item.destroy

    #Redirect 
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Record was successfully removed.' }
    end
  end




	end






