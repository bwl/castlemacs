;; This is your private configuration file. It is loaded automatically, so feel free to add whatever you want.
;; This file will not be affected by Castlemacs updates.

;; Enable transparent title bar on macOS
(when (memq window-system '(mac ns))
  (add-to-list 'default-frame-alist '(ns-appearance . dark)) ;; {light, dark}
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t)))

;; Font
(set-face-attribute 'default nil :font "Source Code Pro 15")
(setq-default line-spacing 3)

;; Disable existing theme before loading ours.
(defun disable-all-themes ()
  "disable all active themes."
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

(defadvice load-theme (before disable-themes-first activate)
  (disable-all-themes))

(load-theme 'misterioso)

;; Show vi-like tilde in the fringe on empty lines.
(use-package vi-tilde-fringe
  :config
  (global-vi-tilde-fringe-mode 0))

;; Set mode-line colors to distinguish between active and inactive windows
(set-face-attribute 'mode-line nil :background "SkyBlue4")
(set-face-attribute 'mode-line-inactive nil :background "gray24")

;; Customize active line highlight style
(set-face-background 'hl-line "DodgerBlue4")

(set-default 'cursor-type 'bar)
(set-cursor-color "#ffffff")

(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(use-package org-bullets
  :after org
  :hook
  (org-mode . (lambda () (org-bullets-mode 1))))


(let* ((variable-tuple
        (cond ((x-list-fonts   "Source Sans Pro") '(:font   "Source Sans Pro"))
              ((x-list-fonts   "Lucida Grande")   '(:font   "Lucida Grande"))
              ((x-list-fonts   "Verdana")         '(:font   "Verdana"))
              ((x-family-fonts "Sans Serif")      '(:family "Sans Serif"))
              (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (base-font-color (face-foreground 'default nil 'default))
       (headline       `(:inherit default :weight bold :foreground ,base-font-color)))

  (custom-theme-set-faces
   'user
   `(variable-pitch     ((t (:family "Source Sans Pro" :height 160 :weight light))))
   `(fixed-pitch        ((t (:family "Source Code Pro"))))
   `(org-level-8        ((t (,@headline ,@variable-tuple))))
   `(org-level-7        ((t (,@headline ,@variable-tuple))))
   `(org-level-6        ((t (,@headline ,@variable-tuple))))
   `(org-level-5        ((t (,@headline ,@variable-tuple))))
   `(org-level-4        ((t (,@headline ,@variable-tuple :height 1))))
   `(org-level-3        ((t (,@headline ,@variable-tuple :height 1))))
   `(org-level-2        ((t (,@headline ,@variable-tuple :height 1.10))))
   `(org-level-1        ((t (,@headline ,@variable-tuple :height 1.25))))
   `(org-document-title ((t (,@headline ,@variable-tuple :height 1.5 :underline nil))))))


(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook 'variable-pitch-mode)
