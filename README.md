JSyntax
=======

SublimeText Syntax highlighting for J.

Contains the following scopes:
 *  string.quoted.j (matches strings)
 *  constant.numeric.j (matches numbers)
 *  comment.line.j (matches `NB.` and `Note` to end of line)
 *  copula.global.j (matches =:)
 *  copula.local.j (matches =.)
 *  keyword.control.j (matches while/whilst/if/elseif/else/do/end etc.)
 *  identifier.noun.j (matches all primitive nouns)
 *  identifier.conjunction.j (matches all primitive conjunctions)
 *  identifier.adverb.j (matches all primitive adverbs)
 *  identifier.verb.j (matches all primitive verbs)
 *  invalid.illegal.unclosed-string.j (identifies open quotes)
 *  invalid.deprecated.trailing-whitespace (identifies lines with trailing whitespace)
 *  definition.explicit.block.j (matches multi-line verb, adverb & conjunction definitions)
 *  string.noun.j (matches multi-line nouns)
 *  comment.block.j (matches multi-line notes)
 *  variable.parameter.j (matches explicit references to arguments within explicit blocks)

Syntax highlighting is context aware, so keyword.control.j and variable.paramenter.j are only identified if contained within the definition.explicit.block.j context.

Supports toggling single-line comments and comment blocks.


Install
-------

Sublime Text 3 can use both `.tmLanguage` and (after build 3103) `.sublime-syntax` file formats for syntax highlighting. The `.sublime-syntax` format is more [concise and easier to develop](http://www.sublimetext.com/docs/3/syntax.html). The `.sublime-syntax` file here is more complete.

Add the `J` folder and contents to: 
  * `"%APPDATA%/Sublime Text 3/Packages/"` (Windows),
  * `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/` (Mac)
  * `~/.config/sublime-text-3/Packages/` (Ubuntu)

or install through Package control. You may need to edit your Color Scheme Preferences to highlight all available scopes.


GitHub
------
 The `.tmLanguage` file in this repository is used by the [github/linguist library](https://github.com/github/linguist) for syntax highlighting J code on GitHub. The [YAML reference version](https://github.com/tikkanz/j-vscode/blob/master/syntaxes/j.tmLanguage.yaml) of this TextMate grammar is used for any development and the PLIST version here is generated by converting the YAML reference to PropertyList format using the [TextMate Languages extension](https://marketplace.visualstudio.com/items?itemName=Togusa09.tmlanguage) for [VS Code](https://code.visualstudio.com/).

LICENSE
-------

Provided under an MIT License
