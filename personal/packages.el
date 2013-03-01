; Install list of packages
(setq personal-package-list
  '(
    multiple-cursors ; Use multiple cursors at the same time. Awesome!
    ;mark-more-like-this
    mark-multiple
    expand-region
    pony-mode      ; Mode for editing django files
    lua-mode       ; Mode for editing lua
    less-css-mode  ; Edit less css files
    scala-mode     ; Mode for editing scala
    org            ; Outline based notes and organization
    flymake-coffee ; flymake extensions for coffescript
    flymake-css    ; flymake for css
    flymake-cursor ; flymake error messages in minibufer
    flymake-haml   ; flymake handler for haml files
    flymake-jslint ; flymake support for javascript using jslint
    flymake-php    ; flymake for php
    flymake-python-pyflakes ; flymake for python
    flymake-ruby   ; flymake for ruby
    flymake-sass   ; flymake for sass
    flymake-shell  ; flymake for bash
    csv-mode       ; edit and navigate csv files
    nginx-mode     ; editing nginx configuration files
    nhexl-mode     ; edit hex dump files
   )
)

; fetch the list of packages available
(when (not package-archive-contents)
  (package-refresh-contents))

; Install the missing packages
(dolist (package personal-package-list)
  (when (not (package-installed-p package))
    (package-install package)))

; Test packages list
; These packages are packages I found interesting and want to test
'(google-maps
  google-this
  google-translate
  handlebars-mode
  jinja2-mode
  js-comint ; javascript terminal
)

; Packages to package with melpa
'(chop.el
  pydoc-info
  ensime
)
