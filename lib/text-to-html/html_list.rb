# function: pulls list of text w/line breaks from clipboard, adds <li></li> to line, and puts back on clipboard

class HtmlList
    
    def initialize(input)
        @input = input
        @verbose = false
        @ul = false
        @ol = false
        @ul_f = false
    end

    def to_list
        raw_in = @input.gsub("\t", '').gsub("\r", '').gsub("\"", '').split("\n")
        puts raw_in.inspect if @verbose

        p_string = ""
        
        p_string = "<ul>\n" if @ul
        p_string = "<ol>\n" if @ol
        p_string = "<ul class=\"features-list\">\n" if @ul_f

        raw_in.each do | line |
            if @ul || @ol || @ul_f
                p_string << "\t<li>\n\t\t#{line}\n\t</li>\n"
            else
                p_string << "<li>\n\t#{line}\n</li>\n"
            end
            p_string << "<li>\n\t#{line}\n</li>\n"
        end
        
        raw_in.each { |line| p_string << "<li>\n\t#{line}\n</li>\n" }

        p_string << "</ul>\n" if @ul || @ul_f
        p_string << "</ol>\n" if @ol
        p_string.chomp!
        puts p_string if @verbose

        return p_string
    end

    def verbose
        @verbose = true
    end

    def ul
        @ul = true
    end

    def ol
        @ol = true
    end
end