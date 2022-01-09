require "singleton"

class Emily
    include Singleton

    #------------------------
    # :[ NAME ]:
    #     fn_disp_line
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_disp_line( message )
        puts( message )
    end
end
