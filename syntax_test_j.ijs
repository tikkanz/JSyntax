NB. SYNTAX TEST "Packages/J/J.sublime-syntax"

NB. foo
NB.  ^ source.j comment.line.j

     'mystring Note''s dksl' 'ssdfs
NB.  ^ punctuation.definition.string.begin
NB.     ^ string.quoted.j
NB.                        ^ punctuation.definition.string.end
'Hello, World! NB. not a comment'
NB. ^ string.quoted.j
NB.                  ^ string.quoted.j

x y Note 'This is a single-line Note/comment'
NB. <- source.j - variable.parameter.j
NB.  ^ comment.line.j

Note 'This is a multi-line Note/comment'
NB.   ^ punctuation.definition.comment.block.begin
The content is 
NB.  ^ comment.block
)
NB. <- punctuation.definition.comment.block.end

my_explicitstring_def=: verb def '2 * y'
my_explicitstring_def=: dyad def 'x * y'  NB. check
my_explicitstring_def=: 2 def '(u x) % v y'
my_explicitstring_def=: adverb : 'u/ y'
my_explicitstring_def=: 4 : 'x * y'
my_explicitstring_def=: conjunction : '(u x) % v y'

my_multiline_verb=: 3 : 0
NB.                 ^ punctuation.definition.explicit.block.begin
    count=. #y
NB.      ^^ copula.local.j
NB.         ^ keyword.operator.verb.j
NB.          ^ variable.parameter.j
    if. 1<count do. return. end.
NB. ^^^ definition.explicit keyword.control.j
NB.             ^^^ definition.explicit keyword.control.j
NB.                 ^^^^^^^ definition.explicit keyword.control.j
NB.                         ^^^^ definition.explicit keyword.control.j
NB.     ^ constant.numeric.j
    'a b c d e f g h i j k l m n o p q r s t u v w x y z'=. i.26
    +/ a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z

)
NB. <- punctuation.definition.explicit.block.end

my_multiline_conjunction=: 2 : 0
    (u x) + (v y)
    'a b c d e f g h i j k l m n o p q r s t u v w x y z'=. i.26
    +/ a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
)

my_multiline_adverb=: 1 : 0
    if. #y do. res=. u *: y
    else.      res=. 1
    end.
    res
)

my_multiline_noun=: noun define
NB.                 ^ punctuation.definition.string.block.begin
This is the first line of a multi-line noun 
This is the 2nd line.
NB.   ^ string.noun
)
NB.  <- punctuation.definition.string.block.end

    if. 0 <: count do. break. end.
NB.  <- source.j
NB.     ^ constant.numeric.j
NB.       ^^ keyword.operator.verb.j
    NB.  <- source.j - keyword.control.j
                    NB.  <- source.j - keyword.control.j

OUT_SireSumry=: 'SireSummary.csv''
NB.          ^^ copula.global.j
NB.                  ^ string.quoted.j
NB.                               ^ invalid.illegal.unclosed-string.j
    ^. }. ^: `:  
NB. ^^ keyword.operator.verb.j
NB.    ^^ keyword.operator.verb.j
NB.       ^^ keyword.operator.conjunction.j
NB.          ^^ keyword.operator.conjunction.j
NB.              ^ invalid.deprecated.trailing-whitespace

    _9: _8: 7: *0: _0: p.. {:: A. c.C.e.E.i.I.j.L.o.p.r.i:p:q:s:u:x:
NB. ^^^ keyword.operator.verb.j
NB.     ^^^ keyword.operator.verb.j
NB.         ^^ keyword.operator.verb.j
NB.            ^ keyword.operator.verb.j
NB.             ^^ keyword.operator.verb.j
NB.                ^^^ source.j - constant.numeric
NB.                    ^^^ source.j keyword.operator.verb.j
NB.                        ^^^ keyword.operator.verb.j
NB.                            ^^ keyword.operator.verb.j
NB.                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ keyword.operator.verb.j

      <.>.+.*.-.%.^.$.~.|.,.#.{.}.".?.
NB.   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ keyword.operator.verb.j
      <:>:_:+:*:-:%:$:~:|:,:;:#:/:\:[:{:}:":
NB.   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ keyword.operator.verb.j
      <>=+*-%^$|,;#!][{?
NB.   ^^^^^^^^^^^^^^^^^^ keyword.operator.verb.j
     /. \. b.f.M.t. b: t:/\}~
NB.  ^^ keyword.operator.adverb.j
NB.     ^^ keyword.operator.adverb.j
NB.        ^^^^^^^^ keyword.operator.adverb.j
NB.                 ^^ source.j - keyword.operator.adverb.j
NB.                    ^^^^^^ keyword.operator.adverb.j

    ^: &.: d.D.H.T.D:L:S:
NB. ^^ keyword.operator.conjunction.j
NB.    ^^^ keyword.operator.conjunction.j
NB.        ^^^^^^^^^^^^^^ keyword.operator.conjunction.j
    ;. !.@.&.
NB. ^^ keyword.operator.conjunction.j
NB.    ^^^^^^ keyword.operator.conjunction.j
    &:@:^:!:`:&"
NB. ^^^^^^^^^^^^ keyword.operator.conjunction.j
     : . :. .. .: ::
NB. ^^^^^^^^^^^^^^^^ keyword.operator.conjunction.j

     &':'
NB.  ^ keyword.operator.conjunction.j
NB.   ^ punctuation.definition.string.begin
NB.    ^ string.quoted.j
NB.     ^ punctuation.definition.string.end

    3:0
NB.  ^ keyword.operator.verb.j - keyword.operator.conjunction.j
NB.   ^ constant.numeric
