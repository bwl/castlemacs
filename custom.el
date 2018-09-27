;; This file is used for the built-in customization UI in Emacs (M-x customize)
;; This file will not be affected by Castlemacs updates
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(org-agenda-files
   '("~/org/main.org" "/Users/bwl/org/inbox.org" "/Users/bwl/org/agenda.org"))
 '(package-selected-packages
   '(paradox emmet-mode web-mode markdown-mode haml-mode yaml-mode define-word powerthesaurus flyspell-correct-popup flyspell-correct company shell-pop git-gutter magit counsel-projectile ivy-rich avy flx smex counsel swiper ivy projectile multiple-cursors visual-regexp move-text expand-region which-key vi-tilde-fringe neotree rich-minority smartparens all-the-icons undo-tree simpleclip exec-path-from-shell use-package))
 '(paradox-github-token t)
 '(shell-pop-shell-type
   '("ansi-term" "*ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell))))
 '(shell-pop-universal-key "s-="))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
