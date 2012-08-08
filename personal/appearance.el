;; Show line numbers
(global-linum-mode 1)

;; Hide scrollbars
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Font and size for Windows.
(if (eq system-type 'windows-nt)
  ;; Large size due to 30" High pixel density screen
  (set-default-font "-outline-Consolas-normal-r-normal-normal-16-97-96-96-c-*-iso8859-1"))
;; (if (eq window-system 'x)
;;   (set-default-font "Inconsolata-12"))

;; Disable whitespace-mode and flyspace-mode that are default in emacs-prelude
(flyspell-mode-off)

;; Tweak scrolling
;; scroll-conservatively = how many lines from center before scrolling
(setq
  scroll-margin 15
;  scroll-conservatively 10
  scroll-preserve-screen-position 0)


;; Shell colors
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
