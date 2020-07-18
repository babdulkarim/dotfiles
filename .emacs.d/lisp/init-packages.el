;;--------------------------------;
;; Packages
;;--------------------------------;

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
  (package-initialize))

(setq package-selected-packages
      '(
        airline-themes
        alert
        apropospriate-theme
        auth-source-pass
        auto-complete
        cargo
        circe
        color-theme-sanityinc-tomorrow
        company
        company-lsp
        company-restclient
        csharp-mode
        docker
        elfeed
        elpy
        emojify
        evil
        evil-collection
        evil-commentary
        evil-escape
        evil-ledger
        evil-magit
        evil-multiedit
        evil-org
        exwm
        flycheck
        forge
        geiser
        hackernews
        helm
        helm-company
        helm-descbinds
        helm-flycheck
        helm-ls-git
        helm-lsp
        helm-notmuch
        helm-org
        helm-org-contacts
        helm-pass
        jiralib2
        js2-mode
<<<<<<< HEAD
=======
        kubernetes
        kubernetes-evil
        kubernetes-helm
        kubernetes-tramp
>>>>>>> d2eb01d573c15f01168df47e7d29ee469986ca09
        language-detection
        ledger-mode
        lispy
        lispyville
        lsp-mode
        lsp-ui
        magit
        magit-todos
        markdown-mode+
        notmuch
        oauth2
        org
        org-bullets
        org-journal
        org-superstar
        org-trello
        orgit
        rainbow-delimiters
        rainbow-mode
        request
        restclient
        rjsx-mode
        rmsbolt
        rust-mode
        slime
        sly
        sly-asdf
        sly-macrostep
        sly-quicklisp
        solarized-theme
        transmission
        typescript-mode
        websocket
        which-key
	      xelb
        yasnippet
        youtube-dl
        ))

(provide 'init-packages)
