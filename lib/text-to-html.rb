require 'text-to-html/html_list'
require 'text-to-html/html_paragraph'
require 'text-to-html/html_table'

class TextToHtml
    
    def self.to_list(input)
        r_list = HtmlList.new(input)
        return r_list.to_list
    end
end