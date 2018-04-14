require 'text-to-html/html_list'
require 'text-to-html/html_paragraph'
require 'text-to-html/html_table'

class TextToHtml
    
    def self.to_list(input, ul=false, ol=false, verbose = false)
        r_list = HtmlList.new(input)

        # config
        r_list.verbose if verbose
        r_list.ul if ul
        r_list.ol if ol
        
        # return
        return r_list.to_list
    end
end