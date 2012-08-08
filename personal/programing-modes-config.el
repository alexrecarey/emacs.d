;; Configure ENSIME for Scala
;; Load the ensime lisp code...
(add-to-list 'load-path "vendor/ensime_2.9.1-0.7.6/elisp/")
(require 'ensime)

;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; MINI HOWTO:
;; Open .scala file. M-x ensime (once per project)
