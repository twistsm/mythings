;;; package --- Summary
;;; Commentary:
;;; Modules:
;;; sr-speedbar
;;; virtualenvwrapper
;;; tern
;;; tern-auto-complete


;;; Code:
;;(add-to-list 'load-path "~/.emacs.d/")
(load-file "~/.emacs.d/init.el")
;;(require 'prelude-modules)

(scroll-bar-mode -1)


(global-set-key (kbd "M-p") 'sr-speedbar-toggle) ; Alt+/
(custom-set-variables
 '(speedbar-show-unknown-files t)
 )

;;; Python settings
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
(setq venv-location "~/.virtualenv/")

;;; Linum settings
(global-linum-mode 1)
(setq linum-format "%4d \u2502 ")
;;(add-hook 'speedbar-before-popup-hook (lambda () (linum-mode -1)))
(add-hook 'speedbar-mode-hook (lambda () (linum-mode -1)))
;;;

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-<") 'shrink-window)
(global-set-key (kbd "C->") 'enlarge-window)
