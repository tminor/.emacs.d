;; This file specifies what packages
;; use-package should manage.
;; More here: https://github.com/jwiegley/use-package

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; From http://cestlaz.github.io/posts/using-emacs-1-setup/#.Wb03a44pCfU
;; Facilitates trying a package before installation
(use-package try
  :ensure t)

;; From http://cestlaz.github.io/posts/using-emacs-1-setup/#.Wb03a44pCfU
;; Provides key combination completion suggestions
;; when a pause occurs after the first key in a sequence.
(use-package which-key
	:ensure t 
	:config
	(which-key-mode))

;; From http://cestlaz.github.io/posts/using-emacs-2-org/#.Wb1EQY4pCfU
;; Use bullets instead of asterisks
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
