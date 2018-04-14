# function: pulls text w/line breaks from clipboard, adds <p></p> to line breaks, and puts back on clipboard
verbose = ARGV.include?("-v")
em = ARGV.include?("-e")

raw_in = `pbpaste`.gsub("\t", '').gsub("\r", '').gsub("\"", '').split("\n")
puts raw_in.inspect if verbose

p_string = ""
raw_in.each { | line | p_string << "<p>\n\t#{"<em>" if em}#{line}#{"</em>" if em}\n</p>\n" if line.length > 0 }
p_string.chomp!
puts p_string if verbose

IO.popen('pbcopy', 'w') { |f| f << p_string }