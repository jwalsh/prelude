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
;; (global-set-key [C-tab] 'other-window)

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

; (provide 'jwalsh)
;;; jwalsh.el ends here
