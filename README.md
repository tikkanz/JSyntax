JSyntax
=======

SublimeText Syntax highlighting for J.

Contains the following scopes:
 *  string.quoted.j (matches strings)
 *  constant.numeric.j (matches numbers)
 *  comment.j (matches `NB.` and `Note` to end of line)
 *  copula.global.j (matches =:)
 *  copula.local.j (matches =.)
 *  keyword.control.j (matches while/whilst/if/elseif/else/do/end etc.)
 *  identifier.noun.j (matches all primitive nouns)
 *  identifier.conjunction.j (matches all primitive conjunctions)
 *  identifier.adverb.j (matches all primitive adverbs)
 *  identifier.verb.j (matches all primitive verbs)
 *  invalid.illegal.unclosed-string.j (identifies open quotes)
 *  invalid.deprecated.trailing-whitespace (identifies lines with trailing whitespace)
 *  definition.expdef.j (matches multi-line verb, adverb & conjunction definitions)
 *  definition.noundef.j (matches multi-line nouns)
 *  definition.note.j (matches multi-line notes)

Syntax highlighting is context aware, so keyword.control.j and expargs are only identified within definition.expdef.j blocks.
 


Install
-------

Sublime Text 3 can use both `.tmLanguage` and (after build 3103) `.sublime-syntax` file formats for syntax highlighting. The `.sublime-syntax` format is more [concise and easier to develop](http://www.sublimetext.com/docs/3/syntax.html). The `.sublime-syntax` file here is more complete.

Add the `J.sublime-syntax` (and optionally `syntax_test_j.ijs`) to 
  * `"%APPDATA%/Sublime Text 3/Packages/"` (Windows),
  * `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/` (Mac)

or install through Package control. You may need to edit your Color Scheme Preferences to highlight all available scopes.

LICENSE
-------

Provided under an MIT License
