
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(setq org-startup-indented t)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(set-register ?p (cons 'file "~/org/personal/organizer.org"))
(set-register ?w (cons 'file "~/org/work/organizer.org"))

(setq org-default-notes-file (concat org-directory "/capture.org"))

(setq org-capture-templates
      (quote (("t" "todo" entry (file (concat org-directory "/capture.org"))
               "* TODO %?\n%U\n%a\n")
              ("n" "note" entry (file (concat org-directory "/capture.org"))
               "* %? :NOTE:\n%U\n%a\n")
              ("p" "Personal Journal" entry (file+datetree (concat org-directory "/personal/journal.org"))
               "* %?\n%U\n")
              ("w" "Work Journal" entry (file+datetree (concat org-directory "/work/journal.org"))
               "* %?\n%U\n")
              )))

(setq org-base-directory "~/org/")

(setq org-agenda-files (list (concat org-base-directory "work")
                             (concat org-base-directory "personal")))

(setq org-agenda-todo-ignore-scheduled t)

(setq org-refile-targets
      '((nil :maxlevel . 1)
        (org-agenda-files :maxlevel . 1)))

(setq org-outline-path-complete-in-steps nil)

(setq org-refile-use-outline-path 'full-file-path)

(setq org-src-fontify-natively t)

(defface org-block-begin-line
    '((t (:underline "#6CA0A3" :foreground "#DCDCCC" :background "#5F5F5F")))
    "Face used for the line delimiting the begin of source blocks.")

;; Doesn't work, see note.
(defface org-block-background
    '((t (:background "#4F4F4F")))
    "Face used for the source block background.")

(defface org-block-end-line
    '((t (:overline "#6CA0A3" :foreground "#DCDCCC" :background "#5F5F5F")))
    "Face used for the line delimiting the end of source blocks.")

(defun package-config ()
  (unless (package-installed-p 'org-plus-contrib)
    (package-refresh-contents)
    (package-install 'org-plus-contrib)))

(add-hook 'after-init-hook 'package-config)

(setq org-modules '(org-habit
                    org-checklist))

(setq org-todo-keywords
  '((sequence "TODO(t)" "|" "DONE(d/!)" "CANCELLED")))

(require 'org-habit)

(setq org-log-into-drawer t)

(require 'org-checklist)

(use-package org2jekyll
  :ensure t
  :defer 3
  :config
  (setq org2jekyll-blog-author       "tminor"
        org2jekyll-source-directory  (expand-file-name "~/org/blog")
        org2jekyll-jekyll-directory  (expand-file-name "~/blog")
        org2jekyll-jekyll-drafts-dir ""
        org2jekyll-jekyll-posts-dir  "_posts/"
        org-publish-project-alist
            `(("default"
                :base-directory ,(org2jekyll-input-directory)
                :base-extension "org"
                ;; :publishing-directory "/ssh:user@host:~/html/notebook/"
                :publishing-directory ,(org2jekyll-output-directory)
                :publishing-function org-html-publish-to-html
                :headline-levels 4
                :section-numbers nil
                :with-toc nil
                :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>"
                :html-preamble t
                :recursive t
                :make-index t
                :html-extension "html"
                :body-only t)

            ("post"
                :base-directory ,(org2jekyll-input-directory)
                :base-extension "org"
                :publishing-directory ,(org2jekyll-output-directory org2jekyll-jekyll-posts-dir)
                :publishing-function org-html-publish-to-html
                :headline-levels 4
                :section-numbers nil
                :with-toc nil
                :html-head "<link rel='stylesheet' href='https://blog.tminor.io/assets/core.css'>"
                :html-preamble t
                :recursive t
                :make-index t
                :html-extension "html"
                :body-only t)

            ("images"
                :base-directory ,(org2jekyll-input-directory "img")
                :base-extension "jpg\\|gif\\|png"
                :publishing-directory ,(org2jekyll-output-directory "img")
                :publishing-function org-publish-attachment
                :recursive t)

            ("js"
                :base-directory ,(org2jekyll-input-directory "js")
                :base-extension "js"
                :publishing-directory ,(org2jekyll-output-directory "js")
                :publishing-function org-publish-attachment
                :recursive t)

            ("css"
                :base-directory ,(org2jekyll-input-directory "css")
                :base-extension "css\\|el"
                :publishing-directory ,(org2jekyll-output-directory "css")
                :publishing-function org-publish-attachment
                :recursive t)

            ("web" :components ("images" "js" "css")))))
