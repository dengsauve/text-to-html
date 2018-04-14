require 'test/unit'
require 'text-to-html'

class TestTextToHtml < Test::Unit::TestCase

    def test_to_list_simple
        simple_input = "should be a one item list"
        assert_equal(
            "<li>\n\tshould be a one item list\n</li>",
            TextToHtml.to_list(simple_input),
            ".to_list failed simple input"
        )

        assert_equal(
            "<ul>\n\t<li>\n\t\t#{simple_input}\n\t</li>\n</ul>",
            TextToHtml.to_ul(simple_input),
            ".to_list failed simple input ul"
        )

        assert_equal(
            "<ul class=\"features-list\">\n\t<li>\n\t\t#{simple_input}\n\t</li>\n</ul>",
            TextToHtml.to_ul(simple_input, true, "features-list"),
            ".to_list failed simple input ul"
        )

        assert_equal(
            "<ol>\n\t<li>\n\t\t#{simple_input}\n\t</li>\n</ol>",
            TextToHtml.to_ol(simple_input),
            ".to_list failed simple input ol"
        )

        assert_equal(
            "<ol class=\"features-list\">\n\t<li>\n\t\t#{simple_input}\n\t</li>\n</ol>",
            TextToHtml.to_ol(simple_input, true, "features-list"),
            ".to_list failed simple input ol"
        )
    end

    def test_to_list_two_lines
        # Test basic two line input
        two_line_input = "Writing tests\nDocumenting your code"
        assert_equal(
            "<li>\n\tWriting tests\n</li>\n<li>\n\tDocumenting your code\n</li>",
            TextToHtml.to_list(two_line_input),
            ".to_list failed two line input"
        )

        # Test basic two line input ul
        assert_equal(
            "<ul>\n\t<li>\n\t\tWriting tests\n\t</li>\n\t<li>\n\t\tDocumenting your code\n\t</li>\n</ul>",
            TextToHtml.to_ul(two_line_input),
            ".to_list failed two line input"
        )

        # Test basic two line input ul w/class
        assert_equal(
            "<ul class=\"features-list\">\n\t<li>\n\t\tWriting tests\n\t</li>\n\t<li>\n\t\tDocumenting your code\n\t</li>\n</ul>",
            TextToHtml.to_ul(two_line_input, true, "features-list"),
            ".to_list failed two line input w/class"
        )

        # Test basic two line input ol
        assert_equal(
            "<ol>\n\t<li>\n\t\tWriting tests\n\t</li>\n\t<li>\n\t\tDocumenting your code\n\t</li>\n</ol>",
            TextToHtml.to_ol(two_line_input),
            ".to_list failed two line input"
        )

        # Test basic two line input ol w/class
        assert_equal(
            "<ol class=\"features-list\">\n\t<li>\n\t\tWriting tests\n\t</li>\n\t<li>\n\t\tDocumenting your code\n\t</li>\n</ol>",
            TextToHtml.to_ol(two_line_input, true, "features-list"),
            ".to_list failed two line input w/class"
        )

        # Test basic two line input with tab at start
        two_line_input = "\tWriting tests\n\tDocumenting your code"
        assert_equal(
            "<li>\n\tWriting tests\n</li>\n<li>\n\tDocumenting your code\n</li>",
            TextToHtml.to_list(two_line_input),
            ".to_list failed two line tabbed input"
        )
    end

end