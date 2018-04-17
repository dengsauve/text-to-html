# function: pulls text w/line breaks from clipboard, adds <p></p> to line breaks, and puts back on clipboard
# TODO: Enable classes

class HtmlParagraph

    def initialize(input, h_class)
        # String to be parsed
        @input = input
        @hclass = h_class

        # Options
        @verbose = false
        @em = false
        @strong = false
        @use_class = false
    end

    def to_paragraph
        raw_in = @input.gsub("\t", '').gsub("\r", '').gsub("\"", '').split("\n")
        puts raw_in.inspect if @verbose
        
        p_string = ""
        raw_in.each do | line | 
            if line.length > 0
                p_string << "<p>\n\t#{"<em>" if @em}#{"<strong>" if @strong}#{line}#{"</em>" if @em}#{"</strong>" if @strong}\n</p>\n"
            end
        end
        p_string.chomp!
        puts p_string if @verbose

        return p_string
    end

    def em
        @em = true
    end

    def strong
        @strong = true
    end

    def verbose
        @verbose = true
    end

    def use_class
        @use_class = true
    end
end