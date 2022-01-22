require "singleton"

class Tina
    include Singleton

    LABEL_GIRLS_NAME = "[GIRLS-NAME]: "
    LABEL_TARGET = "[    TARGET]: "
    LABEL_JUDGE = "[     JUDGE]: "
    LABEL_PRINT = "[     PRINT]: "

    girl_name = ""
    skill_name = ""

    #------------------------
    # :[ NAME ]:
    #     fn_set_girl_name
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_set_girl_name( name )
        girl_name = name

        puts( "#{LABEL_GIRLS_NAME}#{girl_name}" )

        return
    end

    #------------------------
    # :[ NAME ]:
    #     fn_set_skill_name
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_set_skill_name( target )
        skill_name = target

        puts( "#{LABEL_TARGET}#{target}()" )

        return
    end

    #------------------------
    # :[ NAME ]:
    #     fn_judge
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_judge( judgement )

        if judgement
            puts( "#{LABEL_JUDGE}OK" )
        else
            puts( "#{LABEL_JUDGE}NG - Please check#{skill_name}" )
        end

        return
    end
end
