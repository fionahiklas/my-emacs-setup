(add-to-list 'load-path "~/.emacs.d/lisp/")


;; Markdown support
(add-to-list 'load-path "~/.emacs.d/lisp/markdown-mode")

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
;; Markdown support

;; Git Auto Commit support
(add-to-list 'load-path "~/.emacs.d/lisp/git-auto-commit")

(autoload 'git-auto-commit-mode "git-auto-commit-mode"
  "Minor mode for pushing changes to git on save" t)
;; Git Auto Commit support


;; nXML editing mode
(add-to-list 'load-path "~/.emacs.d/lisp/nxml-mode")

(load "rng-auto.el")

(setq auto-mode-alist
        (cons '("\\.\\(xml\\|xsl\\|xslt\\|rng\\|xhtml\\)\\'" . nxml-mode)
              auto-mode-alist))
;; nXML editing mode

;; Yaml Mode
(add-to-list 'load-path "~/.emacs.d/lisp/yaml-mode")

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(add-hook 'yaml-mode-hook
	  '(lambda ()
	     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
;; Yaml Mode

;; Go mode
(add-to-list 'load-path "~/.emacs.d/lisp/go-mode")
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
;; Go mode

;; Include the s.el string library
(add-to-list 'load-path "~/.emacs.d/lisp/s")
;;

;; Dockerfile mode
(add-to-list 'load-path "~/.emacs.d/lisp/dockerfile-mode")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
;; Dockerfile mode

;; Terraform mode
(add-to-list 'load-path "~/.emacs.d/lisp/emacs-hcl-mode")
(add-to-list 'load-path "~/.emacs.d/lisp/terraform-mode")
(require 'terraform-mode)
(add-to-list 'auto-mode-alist '("\\.tf\\'" . terraform-mode))
;; Terraform mode

;; Jenkinsfile mode
(add-to-list 'load-path "~/.emacs.d/lisp/dash")
(add-to-list 'load-path "~/.emacs.d/lisp/groovy-mode")
(add-to-list 'load-path "~/.emacs.d/lisp/jenkinsfile-mode")
(require 'jenkinsfile-mode)
;; Jenkinsfile mode



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(line-number-mode nil)
 '(safe-local-variable-values (quote ((gac-automatically-push-p . 1)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
