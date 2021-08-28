require "singleton"

class Louise
    include Singleton

    #------------------------
    # :[ NAME ]:
    #     fn_upper_all
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def fn_upper_all( base )
        return base.upcase
    end
end
