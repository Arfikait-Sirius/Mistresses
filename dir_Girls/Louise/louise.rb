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

    #------------------------
    # :[ NAME ]:
    #     fn_lower_all
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def fn_lower_all( base )
        return base.downcase
    end

    #------------------------
    # :[ NAME ]:
    #     fn_upper_first
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def fn_upper_first( base )
        upper = base.upcase
        lower = base.downcase

        return upper.slice( 0 ) + lower.slice( 1..base.length )
    end
end
