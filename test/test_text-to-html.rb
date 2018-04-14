require 'test/unit'
require 'text-to-html'

class TestTextToHtml < Test::Unit::TestCase

    def test_to_list_simple
        simple_input = "should be a one item list"
        assert_equal("<li>\n\tshould be a one item list\n</li>", TextToHtml.to_list(simple_input), ".to_list failed simple input")
    end

    def test_to_list_two_lines
        # Test basic two line input
        two_line_input = "Writing tests\nDocumenting your code"
        assert_equal("<li>\n\tWriting tests\n</li>\n<li>\n\tDocumenting your code\n</li>", TextToHtml.to_list(two_line_input), ".to_list failed two line input")

        # Test basic two line input with tab at start
        two_line_input = "\tWriting tests\n\tDocumenting your code"
        assert_equal("<li>\n\tWriting tests\n</li>\n<li>\n\tDocumenting your code\n</li>", TextToHtml.to_list(two_line_input), ".to_list failed two line input")
    end

end