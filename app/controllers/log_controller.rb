class LogController < ApplicationController
  def index
#---     respond_to do |format|
#---       format.html # index.html.erb
#---       format.xml  { render :xml => @frequencies }
#---     end
  end

  def find
    puts "************* FIND *************\n"
#    @frequencies = Frequency.find(params[0])

    respond_to do |format|
      format.html # { render :action => "find" }
      format.xml  { render :xml => @frequency }
    end
  end

end
