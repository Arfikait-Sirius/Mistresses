require "singleton"

class Louise
    include Singleton

    #------------------------
    # :[ NAME ]:
    #     fn_count
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_count( base, target )
        return base.scan( target ).length
    end

    #------------------------
    # :[ NAME ]:
    #     fn_copy
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_copy( base )
        return base
    end

    #------------------------
    # :[ NAME ]:
    #     fn_replace
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_replace( base, target, replacement )
        return base.sub( target, replacement )
    end

    #------------------------
    # :[ NAME ]:
    #     fn_split
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_split( base, splitter, index )
        return base.split( splitter )[index]
    end

    #------------------------
    # :[ NAME ]:
    #     fn_upper_all
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_upper_all( base )
        return base.upcase
    end

    #------------------------
    # :[ NAME ]:
    #     fn_lower_all
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_lower_all( base )
        return base.downcase
    end

    #------------------------
    # :[ NAME ]:
    #     fn_upper_first
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_upper_first( base )
        upper = base.upcase
        lower = base.downcase

        return upper.slice( 0 ) + lower.slice( 1..base.length )
    end

    #------------------------
    # :[ NAME ]:
    #     fn_get_substring
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_get_substring( base, format_str )
        if base.length < format_str.length
            return nil
        end

        index = format_str.index( "%s" )
        head = format_str.slice( 0..( index - 1 ) )
        tail = format_str.slice( ( index + 2 )..format_str.length )

        headIndex = base.index( head )
        if headIndex == nil
            return nil
        end
        tailIndex = base.index( tail )
        if tailIndex == nil
            return nil
        end

        return base.slice( ( headIndex + head.length )..tailIndex )
    end

    #------------------------
    # :[ NAME ]:
    #     fn_trim
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_trim( base )
        return base.gsub( /^[ \t]*/, "" ).gsub( /[ \t]*$/, "" )
    end

    #------------------------
    # :[ NAME ]:
    #     fn_from_int
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_from_int( number )
        return number.to_s
    end

    #------------------------
    # :[ NAME ]:
    #     fn_find
    #
    # :[ CATEGORY ]:
    #     Skill
    #------------------------
    def self.fn_find( base, target )
        return base.index( target ) + 1
    end
end
