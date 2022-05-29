;;; init.el --- Emacs Configuration
;;; Author: Tabletop (tabletop@horsefucker.org)
;;; Commentary
;; fuck you
;;; Code

(setq gc-cons-threshold 2000000)
(setq read-process-output-max (* 1024 1024))

(defconst tbt-config/config-location
  (expand-file-name (concat user-emacs-directory "config.org"))
  "The location on the filesystem where the configuration is saved.")

(defconst tbt-config/secret-config-location
  (expand-file-name (concat user-emacs-directory "secret.org"))
  "The location on the filesystem where the secret configuraiton is saved.")

(defun tbt-config/load-config (filename)
  "Load the org file from FILENAME using babel."
  (let ((file-name-handler-alist nil))
    (when (file-readable-p filename)
      (org-babel-load-file filename))))

(tbt-config/load-config tbt-config/secret-config-location)
(tbt-config/load-config tbt-config/config-location)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(help-at-pt-display-when-idle '(flymake-diagnostic) nil (help-at-pt))
 '(help-at-pt-timer-delay 0.1)
 '(package-selected-packages
   '(kind-icon orderless eldoc-box eglot selectrum yasnippet-snippets which-key web-mode vue-mode visual-fill-column use-package undo-tree typescript-mode slime-company shell-pop rustic rg rainbow-mode rainbow-delimiters page-break-lines ob-mermaid ob-ipython nim-mode multi-vterm mermaid-mode magit lsp-python-ms lsp-java lsp-dart js-comint impatient-mode hover expand-region evil-collection emmet-mode dumb-jump diminish diff-hl dashboard csharp-mode corfu consult cmake-mode beacon all-the-icons aggressive-indent ag)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fixed-pitch-serif ((t (:family cherry/font-name)))))
