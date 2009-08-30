#--- require 'rubygems'
#--- require 'active_record'
require "rubygems"
require "activerecord"

ActiveRecord::Base.establish_connection(:adapter => "sqlite3" ,
                                        :database => "../db/development.sqlite3")

class Frequency < ActiveRecord::Base


  # page--------------------------------------------------------------------- #

  def populate

#---    Frequency.delete_all

    Frequency.create(:call => 'KE7FBY',
                     :frequency => '14.08014',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '559',
                     :date => '02-08-2009 --:-- EDT',
                     :name => 'WES',
                     :qth => 'UT',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'VE3IFS',
                     :frequency => '3.59531',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+10',
                     :date => '02-11-2009 --:-- EDT',
                     :peer_station_rst => '0',
                     :name => 'CY',
                     :comment => 'VE3IFS/W2 NJ',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'CT3BD',
                     :frequency => '14.09111',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599',
                     :date => '03-01-2009 --:-- EDT',
                     :peer_station_rst => '0',
                     :name => 'JOE',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'IW1QN',
                     :frequency => '14.09211',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '589',
                     :date => '03-01-2009 --:-- EDT',
                     :peer_station_rst => '0',
                     :name => 'FEDERICO',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'YV4AB',
                     :frequency => '14.09020',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '549',
                     :date => '03-01-2009 --:-- EDT',
                     :peer_station_rst => '0',
                     :name => 'IVAN',
                     :qth => 'VALENCIA',
                     :locator => 'FK60AE',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'PY2SEX',
                     :frequency => '14.08557',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599',
                     :date => '03-18-2009 --:-- EDT',
                     :peer_station_rst => '0',
                     :name => 'ALEX',
                     :qth => 'CAMPINAS',
                     :locator => 'GG67LC',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'WB5TEQ',
                     :frequency => '3.59013',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+5',
                     :date => '03/29/2009 07:36 EDT',
                     :peer_station_rst => '599+5',
                     :name => 'TERRY',
                     :qth => 'LA',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'K1RY',
                     :frequency => '0.0',
                     :modulation => '-',
                     :digimode => '-',
                     :own_station_rst => '0',
                     :date => '03/--/2009 --:-- EDT',
                     :peer_station_rst => '0',
                     :name => 'ROY',
                     :qth => 'DE',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'OX3DB',
                     :frequency => '14.-----',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '529',
                     :date => '03/--/2009 --:-- EDT',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'HH4/AF4Z',
                     :frequency => '14.08412',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '569',
                     :date => '03/26/2009 16:27 EDT',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'P40YL',
                     :frequency => '14.08895',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+20',
                     :date => '03/29/2009 17:45 EDT',
                     :name => 'SUE',
                     :qth => 'MALAGA',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'TG9AHM',
                     :frequency => '14.08386',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599',
                     :date => '03/29/2009 17:55 EDT',
                     :qth => 'GUATEMALA',
                     :comment => 'QSL INFO. AT QRZ.COM',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'FM5AA',
                     :frequency => '14.08621',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+10',
                     :date => '03/29/2009 18:51 EDT',
                     :peer_station_rst => '599',
                     :name => 'FRANTZ',
                     :qth => 'MARTINIQUE ISLAND',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'HK3W',
                     :frequency => '14.09012',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+10',
                     :date => '03/30/2009 19:07 EDT',
                     :peer_station_rst => '599',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'PJ2/PA4JJ',
                     :frequency => '14.08715',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599',
                     :date => '03/30/2009 19:10 EDT',
                     :peer_station_rst => '599',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'YV4AB',
                     :frequency => '14.08918',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+10',
                     :date => '03/30/2009 19:35 EDT',
                     :peer_station_rst => '599',
                     :name => 'IVAN',
                     :qth => 'VALENCIA, VENEZUELA',
                     :locator => 'FK60AE',
                     :comment => 'LOTW LOGGED: 30 MAR 2009 23:34:39Z',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'TI8II',
                     :frequency => '14.09095',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+20',
                     :date => '04/07/2009 19:32 EDT',
                     :peer_station_rst => '599',
                     :name => 'CARLOS',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'OA4CN',
                     :frequency => '14.08700',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599+5',
                     :date => '04/07/2009 19:34 EDT',
                     :peer_station_rst => '599',
                     :name => 'ERNIE',
                     :locator => 'FH17MW',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => '8P6DR',
                     :frequency => '14.08300',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '559',
                     :date => '04/15/2009 09:05 EDT',
                     :peer_station_rst => '599',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'HK3W',
                     :frequency => '14.09014',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599',
                     :date => '05/05/2009 19:20 EDT',
                     :peer_station_rst => '599',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')
    
    Frequency.create(:call => 'CO2GL',
                     :frequency => '14,08534',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599',
                     :date => '05/05/2009 19:30 EDT',
                     :peer_station_rst => '599',
                     :name => 'ALBERTO',
                     :qth => 'HAVANA CITY CUBA',
                     :locator => 'EL83TD',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'G6MC',
                     :frequency => '14.09915',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '599',
                     :date => '06/14/2009 19:29 EDT',
                     :peer_station_rst => '599',
                     :comment => 'G6MC DE KF4TLX KF4TLX 2329Z 5 PSE K / KF4TLX DE G6MC 599 14 2327 2327 KF4TLX / UR 599 TNX / QSL TU DE G6MC',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'SB6A',
                     :frequency => '7.150',
                     :modulation => 'LSB',
                     :digimode => 'PHONE',
                     :own_station_rst => '56',
                     :date => '07/21/2009 00:05 EDT',
                     :peer_station_rst => '57',
                     :name => 'PIERRE',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'SM6XMY',
                     :frequency => '7.150',
                     :modulation => 'LSB',
                     :digimode => 'PHONE',
                     :own_station_rst => '55',
                     :date => '07/21/2009 00:05 EDT',
                     :peer_station_rst => '57',
                     :name => 'TOM',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'TI8II',
                     :frequency => '14.88493',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '559',
                     :date => '07/21/2009 14:04 EDT',
                     :peer_station_rst => '599',
                     :name => 'CARLOS',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'EA7AJR',
                     :frequency => '14.08824',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '559',
                     :date => '07/21/2009 17:05 EDT',
                     :peer_station_rst => '599',
                     :name => 'MANUEL',
                     :qth => 'SEVILLIA',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

    Frequency.create(:call => 'IK5UAN',
                     :frequency => '14.09250',
                     :modulation => 'LSB',
                     :digimode => 'RTTY',
                     :own_station_rst => '559',
                     :date => '07/21/2009 17:20 EDT',
                     :peer_station_rst => '599',
                     :name => 'ROBERTO',
                     :qth => 'FLORENCE',
                     :comment => 'Roberto Tuci / Via Della Resistenza 72 / 51015 Monsummano Ter. PT',
                     :s_meter => '0',
                     :antenna => 'Butternut',
                     :radio => 'IC-765PROIII')

  end  #--- def populate

end  #--- class Frequency

printf("starting\n")

db = Frequency.new
printf("calling populate\n")
db.populate

