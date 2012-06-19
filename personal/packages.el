; Install list of packages
(setq personal-package-list
  '(prelude-c
    prelude-clojure
    prelude-coffee
    prelude-common-lisp
    prelude-css
    prelude-erlang
    prelude-haskell
    prelude-js
    prelude-perl
    prelude-python
    prelude-ruby
    prelude-xml
    pony-mode ; Mode for editing django files
    lua-mode ; Mode for editing lua
    less-css-mode ; Edit less css files
    scala-mode ; Mode for editing scala
    org ; Outline based notes and organization
   )
)

; fetch the list of packages available
(when (not package-archive-contents)
  (package-refresh-contents))

; Install the missing packages
(dolist (package personal-package-list)
  (when (not (package-installed-p package))
    (package-install package)))
