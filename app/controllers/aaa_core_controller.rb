class AaaCoreController < ApplicationController
  def index
    @title = "Home"
  end

 # to use Active Record, we need to strip out the Event Action in the Application Controller
 # def events
 #   @title = "Events"
 # end

  def shop
    @title = "Shop"
    @sales_items = SalesItem.all
  end

  def discussion
    @title = "Discussion"
  end

end
