(("verilog-mode/src"
  . ((nil . ((do-not-delete-trailing-whitespace . t)
             ;; Thu Jan 26 11:12:48 EST 2017 - kmodi
             ;; Do not turn on whitespace-mode as magit does not like it.
             ;; user-error: Whitespace-Mode isn’t compatible with Magit.  See
             ;; `magit-diff-paint-whitespace' for an alternative.
             ;; (eval . (whitespace-mode 1))
             ))
     (emacs-lisp-mode . ((lisp-indent-function . lisp-indent-function)
                         (aggressive-indent-mode . nil)))))
 ("matlab-emacs/src"
  . ((emacs-lisp-mode . ((lisp-indent-function . lisp-indent-function)
                         (aggressive-indent-mode . nil))))))
