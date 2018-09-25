;; This is your private configuration file. It is loaded automatically, so feel free to add whatever you want.
;; This file will not be affected by Castlemacs updates.

;; Enable transparent title bar on macOS
(when (memq window-system '(mac ns))
  (add-to-list 'default-frame-alist '(ns-appearance . dark)) ;; {light, dark}
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t)))

;; Font
(set-face-attribute 'default nil :font "Source Code Pro 15")
(setq-default line-spacing 3)

;; Nice and simple default dark theme.
(load-theme 'misterioso)

;; Show vi-like tilde in the fringe on empty lines.
(use-package vi-tilde-fringe
  :config
  (global-vi-tilde-fringe-mode 0))

;; Set colors to distinguish between active and inactive windows
(set-face-attribute 'mode-line nil :background "SkyBlue4")
(set-face-attribute 'mode-line-inactive nil :background "gray24")

(global-hl-line-mode 1)
 ;; To customize the background color
(set-face-background 'hl-line "DodgerBlue4")
;; (set-face-foreground 'hl-line "White")

(set-default 'cursor-type 'bar)
(set-cursor-color "#ffffff")

