class LogController < ApplicationController

  @search_freq = ""

  # page--------------------------------------------------------------------- #

  def index

  end  #--- index


  # page--------------------------------------------------------------------- #

  def find

    if request.post?

      @search_freq = ""
      @search_call_sign = ""

      search_freq = params[:search_freq]
      search_call_sign = params[:search_call_sign]

      # -------------------------------------------------------------------- #
      #  GOT BOTH FREQ AND CALL SIGN                                         #
      # -------------------------------------------------------------------- #
      if (!search_freq.empty? && !search_call_sign.empty?)

        @frequencies =
          Frequency.find(:all, :conditions => ["frequency = ? AND call = ?", search_freq, search_call_sign])

      end  #--- if (!search_freq.empty? && !search_call_sign.empty?)

      # -------------------------------------------------------------------- #
      #  GOT JUST CALL SIGN                                                  #
      # -------------------------------------------------------------------- #
      if (search_freq.empty? && !search_call_sign.empty?)

        @frequencies =
          Frequency.find(:all, :conditions => ["call = ?" , search_call_sign])

      end  #--- if (search_freq.empty? && !(search_call_sign.empty?))

      # -------------------------------------------------------------------- #
      #  GOT JUST FREQ                                                       #
      # -------------------------------------------------------------------- #
      if (!search_freq.empty? && search_call_sign.empty?)

        @frequencies =
          Frequency.find(:all, :conditions => ["frequency = ?" , search_freq])

      end  #--- if (!(search_freq.empty?) && search_call_sign.empty?)

      if (@frequencies.empty?)

        render :template=> "log/not_found"

      else

        render :template=> "log/show"

#---         for frequency in @frequencies
#--- 
#---           printf("frequency = %f\n", frequency.frequency)
#---           printf("modulation = %s\n", frequency.modulation)
#---           printf("radio = %s\n", frequency.radio)
#---           printf("antenna = %s\n", frequency.antenna)
#---           printf("date = %s\n", frequency.date)
#--- 
#---           printf("call = %s\n", frequency.call)
#---           printf("digimode = %s\n", frequency.digimode)
#---           printf("own_station_rst = %s\n", frequency.own_station_rst)
#---           printf("peer_station_rst = %s\n", frequency.peer_station_rst)
#---           printf("s_meter = %s\n", frequency.s_meter)
#---           printf("name = %s\n", frequency.name)
#---           printf("qth = %s\n", frequency.qth)
#---           printf("locator = %s\n", frequency.locator)
#---           printf("comment = %s\n", frequency.comment)
#--- 
#---         end  #--- for frequency in @frequencies

      end  #--- if (@frequencies.empty?)

    else

      @search_freq = ""

      respond_to do |format|

        format.html # { render :action => "find" }
        format.xml  { render :xml => @search_freq }

      end  #--- respond_to do |format|

    end  #--- if request.post?

  end  #--- find

  # page--------------------------------------------------------------------- #

  def find_all

    @frequencies = Frequency.find(:all)

    render :template=> "log/show"

  end  #--- find_all


end  #--- class LogController
