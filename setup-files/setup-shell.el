;; Time-stamp: <2015-02-13 11:41:58 kmodi>

;; Shell Script Mode

(use-package shell-script-mode
  :mode (("\\.alias\\'"   . shell-script-mode)
         ("\\.setup.*\\'" . shell-script-mode)
         ("\\.gpms\\'"    . shell-script-mode)
         ("\\.cfg\\'"     . shell-script-mode)
         ("\\.*csh.*\\'"  . shell-script-mode)
         ("crontab.*\\'"  . shell-script-mode)))

(defun my/tcsh-set-indent-functions ()
  (when (buffer-file-name) ; do this only if the buffer is a file
    (when (string-match ".*csh" (format "%s" sh-shell))
      (require 'csh-mode) ; https://github.com/Tux/tcsh/blob/master/csh-mode.el
      (setq-local indent-line-function   'csh-indent-line)
      (setq-local indent-region-function 'csh-indent-region))))
(add-hook 'sh-set-shell-hook #'my/tcsh-set-indent-functions)

;; Also set the csh indent functions in conf mode (for files like .tmux.conf )
(add-hook 'conf-space-mode-hook #'my/tcsh-set-indent-functions)

;; Don't display async command execution windows
;; http://emacs.stackexchange.com/a/5554/115
(add-to-list 'display-buffer-alist
             (cons "\\*Async Shell Command\\*.*"
                   (cons #'display-buffer-no-window nil)))


(provide 'setup-shell)
