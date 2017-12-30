;; This file specifies what packages
;;   use-package should manage.
;;
;; More here: https://github.com/jwiegley/use-package
;;
;; As package configuration starts to get
;;   much longer, I'll probably move it to
;;   its own *.el file.

;; Evil mode stuff.
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; From http://cestlaz.github.io/posts/using-emacs-1-setup/#.Wb03a44pCfU
;; Facilitates trying a package before installation.
(use-package try
  :ensure t)

;; From http://cestlaz.github.io/posts/using-emacs-1-setup/#.Wb03a44pCfU
;; Provides key combination completion suggestions
;;   when a pause occurs after the first key in a sequence.
(use-package which-key
  :ensure t 
  :config
  (which-key-mode))

;; From http://cestlaz.github.io/posts/using-emacs-2-org/#.Wb1EQY4pCfU
;; Use bullets instead of asterisks.
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; Window navigation stuff.
(use-package ace-window
  :ensure t
  :config
  ;; ace-window meta key, change window keys to home row
  (global-set-key (kbd "M-p") 'ace-window)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

;; ido-mode stuff.
;; Good reference: https://www.masteringemacs.org/article/introduction-to-ido-mode
;; (use-package ido
;;   :ensure t
;;   :config
;;   (setq ido-enable-flex-matching t)
;;   (setq ido-everywhere t)
;;   (ido-mode 1))

;; Neat guide here:
;; https://writequit.org/denver-emacs/presentations/2017-04-11-ivy.html
(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
            ivy-count-format "%d/%d "))
