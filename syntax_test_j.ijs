NB. SYNTAX TEST "Packages/J.sublime-syntax"

NB. foo
NB.  ^ source.j comment.j

     'mystring'
NB.  ^ punctuation.definition.string.begin
NB.     ^ string.quoted.j
NB.           ^ punctuation.definition.string.end
'Hello, World! NB. not a comment'
NB. ^ string.quoted.j
NB.                  ^ string.quoted.j

3 : 0
    count=. #y
NB.      ^^ copula.local
NB.         ^ identifier.verb.j
NB.          ^ exparg
    if. 1<count do. return. end.
NB. ^^^ definition.expdef.j keyword.control.j
NB.             ^^^ definition.expdef.j keyword.control.j
NB.                 ^^^^^^^ definition.expdef.j keyword.control.j
NB.                         ^^^^ definition.expdef.j keyword.control.j
NB.     ^ constant.numeric.j
)

    if. 0 <: count do. break. end.
NB.  <- source.j
NB.     ^ constant.numeric
NB.       ^^ identifier.verb
     NB.  <- source.j - keyword.control.j
                    NB.  <- source.j - keyword.control.j

OUT_SireSumry=: 'SireSummary.csv''
NB.          ^^ source.j copula.global
NB.                  ^ string.quoted.j
NB.                                ^ invalid.illegal.unclosed-string.j
    ^. }. ^: `:  
NB. ^^ identifier.verb
NB.    ^^ identifier.verb
NB.       ^^ identifier.conjunction
NB.          ^^ identifier.conjunction
NB.              ^ invalid.deprecated.trailing-whitespace

    _9: _8: 7: *0: _0: p.. A. c.C.e.E.i.I.j.L.o.p.r.i:p:q:s:u:x:
NB. ^^^ identifier.verb
NB.     ^^^ identifier.verb
NB.         ^^ identifier.verb
NB.            ^ identifier.verb
NB.             ^^ identifier.verb
NB.                ^^^ source.j - constant.numeric
NB.                    ^^^ source.j identifier.verb
NB.                        ^^ identifier.verb
NB.                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ identifier.verb

      <.>.+.*.-.%.^.$.~.|.,.#.{.}.".?.
NB.   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ identifier.verb
      <:>:_:+:*:-:%:$:~:|:,:;:#:/:\:[:{:}:":
NB.   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ identifier.verb
      <>=+*-%^$|,;#!][{?
NB.   ^^^^^^^^^^^^^^^^^^ identifier.verb
     /. \. b.f.M.t. b: t:/\}~
NB.  ^^ identifier.adverb
NB.     ^^ identifier.adverb
NB.        ^^^^^^^^ identifier.adverb
NB.                 ^^ source.j - identifier.adverb
NB.                    ^^^^^^ identifier.adverb

    ^: &.: d.D.H.T.D:L:S:
NB. ^^ identifier.conjunction
NB.    ^^^ identifier.conjunction
NB.        ^^^^^^^^^^^^^^ identifier.conjunction
    ;. !.@.&.
NB. ^^ identifier.conjunction
NB.    ^^^^^^ identifier.conjunction
    &:@:^:!:`:&"
NB. ^^^^^^^^^^^^ identifier.conjunction
     : . :. .: ::
NB. ^^^^^^^^^^^^^ identifier.conjunction
    3:0
NB.  ^ identifier.verb - identifier.conjunction
NB.   ^ constant.numeric
