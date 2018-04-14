# function: pulls text w/line breaks from clipboard, adds <p></p> to line breaks, and puts back on clipboard
verbose = ARGV.include?("-v")

raw_in = `pbpaste`.gsub("\r", '').gsub("\"", '').split("\n")
puts raw_in.inspect if verbose

p_string = ""
raw_in.each do | line |
    #p_string << "<p>\n\t#{line}\n</p>\n" if line.length > 0
    p_string << "<tr>\n\t"
    line.split("\t").each_with_index do |data, i|
        p_string << "<td#{" scope=\"row\"" if i == 0}>\n\t\t" + data + "\n\t</td>\n"
    end
    p_string << "</tr>\n"
end
p_string.chomp!
puts p_string if verbose

IO.popen('pbcopy', 'w') { |f| f << p_string }