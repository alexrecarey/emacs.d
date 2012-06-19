;;; Define new actions
;; Backword kill word if no region active. If not, kill regio
(defun backward-kill-word-or-kill-region (&optional arg)
  (interactive "p")
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (backward-kill-word arg)))


;;; Custom key combinations
;;; Swap M-x for C-x C-m
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;;; Bind backwards kill word to C-w and kill region to C-x C-k
(global-set-key "\C-w" 'backward-kill-word-or-kill-region)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
