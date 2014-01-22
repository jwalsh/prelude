;;; package --- Personal settings using prelude

;;; Code:
(load-theme 'adwaita)
;; (load-theme 'solarized-dark t)
;; (disable-theme 'zenburn)
;; (load-theme 'solarized-dark t)

;; https://github.com/briancarper/dotfiles/blob/master/.emacs
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; (global-set-key "\C-\\;" 'comment-or-uncomment-region)
(global-set-key [C-tab] 'other-window)

;; http://eschulte.me/emacs-starter-kit/starter-kit-bindings.html
(global-set-key (kbd "C-x g") 'magit-status)


(setq org-directory "~/sandbox/notes")
(setq org-agenda-files '(concat org-directory  "/gtd.org"))
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-inbox-for-pull "~/Dropbox/MobileOrg/index.org")

;;; Commentary:

(setq org-feed-alist
      '(("Hacker News"
         "http://news.ycombinator.com/rss"
         "~/notes/feeds.org" "Hacker News")))

(setq org-capture-templates
      `(("t" "Todo" entry (file+headline "~/sandbox/notes/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/sandbox/notes/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("u"
         "Task: Read this URL"
         entry
         (file+headline "tasks.org" "Articles To Read")
         ,(concat "* TODO Read article: '%:description'\nURL: %c\n\n")
         :empty-lines 1
         :immediate-finish t)

        ("w"
         "Capture web snippet"
         entry
         (file+headline "my-facts.org" "Inbox")
         ,(concat "* Fact: '%:description'        :"
                  ":\n:PROPERTIES:\n:DATE_ADDED: %u\n:SOURCE_URL: %c\n:END:\n\n%i\n%?\n")
         :empty-lines 1
         :immediate-finish t)
        ("c"
         "Default template"
         entry
         (file+headline "~/sandbox/notes/capture.org" "Notes")
         "* %^{Title}\n\n  Source: %u, %c\n\n  %i"
         :empty-lines 1)))

(provide 'jwalsh)
;;; jwalsh.el ends here
