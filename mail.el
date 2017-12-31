;; Tell emacs about the path to notmuch
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(autoload 'notmuch "notmuch" "notmuch mail" t)

;; Use msmtp to send mail
(setq message-send-mail-function 'message-send-mail-with-sendmail)
(setq sendmail-program "/usr/local/bin/msmtp")

;; Tell msmtp to choose the SMTP server according to the from field in
;; the outgoing email
(setq message-sendmail-extra-arguments '("--read-envelope-from"))
(setq message-sendmail-f-is-evil 't)

;; Some notmuch key bindings magic for
;; tagging mail with ease.
;; From https://notmuchmail.org/emacstips/#index5h2
(eval-after-load 'notmuch-show
  '(define-key notmuch-show-mode-map "`" 'notmuch-show-apply-tag-macro))

(setq notmuch-show-tag-macro-alist
  (list
   ;; Some examples:
   ;; '("m" "+notmuch::patch" "+notmuch::moreinfo" "-notmuch::needs-review") 
   ;; '("n" "+notmuch::patch" "+notmuch::needs-review" "-notmuch::pushed")
   ;; '("o" "+notmuch::patch" "+notmuch::obsolete"
   ;;       "-notmuch::needs-review" "-notmuch::moreinfo")
   ;; '("p" "-notmuch::pushed" "-notmuch::needs-review"
   ;;   "-notmuch::moreinfo" "+pending")
   ;; '("P" "-pending" "-notmuch::needs-review" "-notmuch::moreinfo" "+notmuch::pushed")
   ;; '("r" "-notmuch::patch" "+notmuch::review")
   ;; '("s" "+notmuch::patch" "-notmuch::obsolete" "-notmuch::needs-review" "-notmuch::moreinfo" "+notmuch::stale")
   ;; '("t" "+notmuch::patch" "-notmuch::needs-review" "+notmuch::trivial")
   ;; '("w" "+notmuch::patch" "+notmuch::wip" "-notmuch::needs-review")))
     '("t" "+me")))

(defun notmuch-show-apply-tag-macro (key)
  (interactive "k")
  (let ((macro (assoc key notmuch-show-tag-macro-alist)))
    (apply 'notmuch-show-tag-message (cdr macro))))
