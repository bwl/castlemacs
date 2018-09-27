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
