# text-to-html

## Description

#### Concept

This gem is a tool for web developers who need to convert plaintext into html elements (paragraphs, headers, tables, etc.) and really don't want to do it by hand (like me).

#### Usage

From the TextToHtml class, you will be able to call class functions like `to_list(input)` and `to_paragraph(input, class_name)`. These will return formatted text with the appropriate tags.

#### Input

Plain text, separated by new lines.

## Future Plans

I plan on covering the basics of html text elements (headers, paragraphs, lists, tables). More advanced features, such as taking newline and comma/tab deliminated text to create anchor tags are also on the table.

I also want to break em and strong away from paragraph to their own method, allowing users to chain instead of having to declare arguments.

## TODO:

- [ ] Headers
- [ ] Paragraphs
    - [ ] em
    - [ ] strong
    - [ ] use class
- [x] Lists
    - [x] ordered
    - [x] unordered
- [ ] Anchor Tags
- [ ] Tables

## Status: Unreleased

## [0.0.4] - 04-16-2018
- .to_paragraph - option to enclose text in `em`
- .to_paragraph - option to enclose text in `strong`

## [0.0.3] - 04-16-2018
- gemspec changes

## [0.0.2] - 04-16-2018

### Added
- .to_paragraph basic functionality
- .to_paragraph basic tests

## [0.0.1] - 04-13-2018

### Added
- Initial files, etc.
- TextToHtml.to_list tested and working
- .to_list support for ul and ol
- .to_list class support for ul/ol added.
