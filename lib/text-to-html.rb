require 'text-to-html/html_list'
require 'text-to-html/html_paragraph'
require 'text-to-html/html_table'

class TextToHtml
    
    def self.to_list(input, use_class = false, h_class = "", verbose = false)
        r_list = HtmlList.new(input, h_class)

        # config
        r_list.verbose if verbose

        # return
        return r_list.to_list
    end

    def self.to_ol(input, use_class=false, h_class="")
        r_list = HtmlList.new(input, h_class)

        # config
        r_list.ol
        r_list.use_class if use_class

        return r_list.to_list
    end

    def self.to_ul(input, use_class = false, h_class = "", verbose = false)
        r_list = HtmlList.new(input, h_class)

        # config
        r_list.ul
        r_list.use_class if use_class

        return r_list.to_list
    end
end