class LogController < ApplicationController

  @search_freq = ""

  def index

#---     respond_to do |format|
#---       format.html # index.html.erb
#---       format.xml  { render :xml => @frequencies }
#---     end

  end  #--- index

  def find

    if request.post?

      @search_freq = ""

      printf("************* FIND POST params[:search_freq] [ %s ] *************\n", params[:search_freq])

      search_freq = params[:search_freq]
      printf("************* search_freq [ %s ] *************\n", search_freq)

#---      @frequencies =
#---        Frequency.find(:all, :conditions => ["frequency = ?" , search_freq])
#---
#---      if (@frequencies.empty?)
#---
#---        printf("------------- frequencies is EMPTY -------------\n")
#---        render :template=> "log/not_found"
#---
#---      else
#---
#---        render :template=> "log/show"
#---
#---        for frequency in @frequencies
#---
#---          printf("frequency = %f\n", frequency.frequency)
#---          printf("modulation = %s\n", frequency.modulation)
#---          printf("radio = %s\n", frequency.radio)
#---          printf("antenna = %s\n", frequency.antenna)
#---          printf("date = %s\n", frequency.date)
#---
#---          printf("call = %s\n", frequency.call)
#---          printf("digimode = %s\n", frequency.digimode)
#---          printf("own_station_rst = %s\n", frequency.own_station_rst)
#---          printf("peer_station_rst = %s\n", frequency.peer_station_rst)
#---          printf("s_meter = %s\n", frequency.s_meter)
#---          printf("name = %s\n", frequency.name)
#---          printf("qth = %s\n", frequency.qth)
#---          printf("locator = %s\n", frequency.locator)
#---          printf("comment = %s\n", frequency.comment)
#---
#---        end  #--- for frequency in @frequencies
#---
#---      end  #--- if (@frequencies.empty?)

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#---      @frequencies =
#---        Frequency.find(:all, :conditions => "frequency = search_freq")
      @frequencies =
        Frequency.find(:all, :conditions => "frequency = 12.34")

      if (@frequencies.empty?)

        printf("------------- frequencies is EMPTY -------------\n")
        render :template=> "log/not_found"

      else

        render :template=> "log/show"

        for frequency in @frequencies

          printf("frequency = %f\n", frequency.frequency)
          printf("modulation = %s\n", frequency.modulation)
          printf("radio = %s\n", frequency.radio)
          printf("antenna = %s\n", frequency.antenna)
          printf("date = %s\n", frequency.date)

          printf("call = %s\n", frequency.call)
          printf("digimode = %s\n", frequency.digimode)
          printf("own_station_rst = %s\n", frequency.own_station_rst)
          printf("peer_station_rst = %s\n", frequency.peer_station_rst)
          printf("s_meter = %s\n", frequency.s_meter)
          printf("name = %s\n", frequency.name)
          printf("qth = %s\n", frequency.qth)
          printf("locator = %s\n", frequency.locator)
          printf("comment = %s\n", frequency.comment)

        end  #--- for frequency in @frequencies

      end  #--- if (@frequencies.empty?)

#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    else

      puts "************* FIND GET *************\n"

      @search_freq = ""

      respond_to do |format|

        format.html # { render :action => "find" }
        format.xml  { render :xml => @search_freq }

      end  #--- respond_to do |format|

    end  #--- if request.post?

    printf("************* DONE FIND  %s *************\n", @search_freq)

  end  #--- find

end
