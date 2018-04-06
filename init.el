;; Enable init files in org format.
;; From https://emacs.stackexchange.com/questions/3143/can-i-use-org-mode-to-structure-my-emacs-or-other-el-configuration-file

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)

(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"))
 '(custom-enabled-themes (quote (cherry-blossom)))
 '(custom-safe-themes
   (quote
    ("cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "554b7f0439155d6eb648d4837ef03902f51124cacee021217e76f39e9dd314c2" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "5e52ce58f51827619d27131be3e3936593c9c7f9f9f9d6b33227be6331bf9881" default)))
 '(debug-on-quit nil)
 '(excorporate-configuration
   (quote
    ("thomas.minor@usg.edu" . "https://outlook.office365.com/EWS/Exchange.asmx")))
 '(fci-rule-color "#3E4451")
 '(hipchat-api-key "WjtGrA6TPfYxslQKzERldnfxR63SzZ8NZgzyVbK2")
 '(hipchat-nickname "Thomas Minor")
 '(hl-sexp-background-color "#1c1f26")
 '(jdee-db-active-breakpoint-face-colors (cons "#2b2a27" "#ff5d38"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#2b2a27" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#2b2a27" "#3f444a"))
 '(notmuch-saved-searches
   (quote
    ((:name "inbox" :query "tag:inbox" :key "i")
     (:name "Nagios" :query "tag:nagios and date:yesterday..now")
     (:name "Tenshi" :query "tag:syslog and date:yesterday..now")
     (:name "unread" :query "tag:unread" :key "u")
     (:name "flagged" :query "tag:flagged" :key "f")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "all mail" :query "*" :key "a"))))
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages
   (quote
    (jabber request highlight-indent-guides speed-type excorporate org-pomodoro treemacs-evil treemacs-projectile treemacs neotree eproject cherry-blossom-theme atom-one-dark-theme evil-org org-mime rainbow-delimiters powershell hydra rainbow-mode magit material-theme hc-zenburn-theme ivy ace-window framemove zenburn-theme auctex elpy use-package evil)))
 '(show-paren-mode t)
 '(treemacs-git-mode (quote extended))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
