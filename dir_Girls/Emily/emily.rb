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
    def fn_disp_line( message )
        puts( message )
    end
end
