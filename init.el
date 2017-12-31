;; General configuration
(setq inhibit-startup-message t)
;; Explanation here https://emacs.stackexchange.com/questions/22717/what-does-require-package-mean-for-emacs-and-how-does-it-differ-from-load-fil
(require 'package)
;; https://www.reddit.com/r/emacs/comments/1rdstn/set_packageenableatstartup_to_nil_for_slightly/
(package-initialize)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; Enable linum-mode universally.
(global-linum-mode 1)

;; For modularizing emacs configuration
;; from https://stackoverflow.com/questions/2079095/how-to-modularize-an-emacs-configuration
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))
(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; From http://cestlaz.github.io/posts/using-emacs-1-setup/#.Wb03a44pCfU
;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; List of included lisp files.
;; See the each file for explanatory comments.
(load-user-file "packages.el")
(load-user-file "mail.el")
(load-user-file "org.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("5e52ce58f51827619d27131be3e3936593c9c7f9f9f9d6b33227be6331bf9881" default)))
 '(package-selected-packages
   (quote
    (ivy ace-window framemove zenburn-theme auctex elpy use-package evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
