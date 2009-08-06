class LogController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @frequencies }
    end
  end

  # GET /log/find
  # GET /log/find.xml
  def find
    @frequencies = Frequency.find(params[0])

    respond_to do |format|
      format.html # find.html.erb
      format.xml  { render :xml => @frequency }
    end
  end

end
