Gem::Specification.new do |s|
    s.name                  = 'text-to-html'
    s.version               = '0.0.4'
    s.date                  = '2018-04-16'
    s.summary               = "A gem for converting plain text to various html elements."
    s.description           = "With more and more code growing obsolete, it's handy to have a few tools that could convert plaintext to html elements."
    s.authors               = ["Dennis Sauve"]
    s.email                 = 'dengsauve@yahoo.com'
    s.files                 = ["lib/text-to-html.rb", "lib/text-to-html/html_list.rb", "lib/text-to-html/html_paragraph.rb", "lib/text-to-html/html_table.rb"]
    s.metadata              = { "source_code_uri" => "https://github.com/dengsauve/text-to-html" }
    s.homepage              = 'https://rubygems.org/gems/text-to-html'
    s.license               = 'MIT'
    s.required_ruby_version = '~> 2.0'
  end