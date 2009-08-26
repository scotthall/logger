class Frequency < ActiveRecord::Base

#--- Radio: a = IC-756PROIII, b = IC-R71, c = HP3586B, d = CRYSTAL, e = IC-PRC2500
#--- Antenna B = Butternut, L = long wire

  RADIOS = [

    # ---------------------------------------------------------------------- #
    #  DISPLAYED       STORED IN DB                                          #
    # ---------------------------------------------------------------------- #
    [ "IC-756PROIII", "IC-756PROIII" ],
    [ "IC-R71",       "IC-R71"       ],
    [ "HP3586B",      "HP3586B"      ],
    [ "CRYSTAL",      "CRYSTAL"      ],
    [ "IC-PRC2500",   "IC-PRC2500"   ]

  ]  #--- RADIOS

  ANTENNAS = [

    # ---------------------------------------------------------------------- #
    #  DISPLAYED       STORED IN DB                                          #
    # ---------------------------------------------------------------------- #
    [ "Butternut", "Butternut" ],
    [ "long wire", "long wire" ],
    [ "10 meter",  "10 meter"  ]

  ]  #--- ANTENNAS

  MODULATION_MODES = [

    # ---------------------------------------------------------------------- #
    #  DISPLAYED       STORED IN DB                                          #
    # ---------------------------------------------------------------------- #
    [ "USB",  "USB"  ],
    [ "LSB",  "LSB"  ],
    [ "AM",   "AM"   ],
    [ "RTTY", "RTTY" ],
    [ "CW",   "CW"   ],
    [ "FMW",  "FMW"  ],
    [ "FMN",  "FMN"  ]

  ]  #--- MODULATION_MODES

  validates_presence_of :frequency, :modulation, :radio, :date, :comment, 
                        :antenna, :s_meter

#---   validates_inclusion_of :radio, :in => 
#---     RADIOS.map {|disp, value| value}
#---   validates_inclusion_of :antenna, :in => 
#---     ANTENNAS.map {|disp, value| value}
#---   validates_inclusion_of :modulation, :in => 
#---     MODULATION_MODES.map {|disp, value| value}

end  #--- class Frequency
