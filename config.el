;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
;; name and email
(setq user-full-name "Apollo"
      user-mail-address "zihangxu123@gmail.com")

;; set theme
(setq doom-theme 'doom-gruvbox-light)
;; configs of theme: gruvbox-light
(custom-set-variables
 '(doom-gruvbox-light-variant 'soft))

;; line number: nil, t or 'relative
(setq display-line-numbers-type 'relative)

;;load utils
(load! "utils")
;;load key bindings
(load! "keybinds")

;; path of org and org-roam
(setq org-directory "~/org/")
;;(setq org-roam-directory "~/org/roam")

;; windowsize by default
(pushnew! initial-frame-alist '(width . 140) '(height . 40))
;; or fullscreen by default
;;(add-hook 'window-setup-hook #'toggle-frame-fullscreen)

;; pixel scroll(only on emacs29+)
(pixel-scroll-precision-mode 1)

;; set org-mode as default mode
(setq-default major-mode 'org-mode)
(setq org-hide-emphasis-markets t)

;; display current rime on mode-line
(display-time-mode 1)
(setq display-time-24hr-format t
      display-time-format "%I:%M:%S"
      display-time-interval 1
      display-time-load-average nil)

;; display current battery
;; (unless (string-match-p "^Power N/A" (battery))
;;   (display-battery-mode 1))

;; display mode-line on zen mode
(setq writeroom-mode-line t)

;; set fonts
(setq doom-font (font-spec :family "FiraCode NF" :size 16)
      doom-variable-pitch-font (font-spec :family "FiraCode NF")
      doom-unicode-font (font-spec :family "FiraCode NF")
      doom-big-font (font-spec :family "FiraCode NF" :size 19))

;; don't ask me when quitting emacs
(setq confirm-kill-emacs nil)

;; native-comp optimize(only for emacs28+)
(setq native-comp-speed 2)

;; rust
(after! rustic
  (setq rustic-lsp-server 'rust-analyzer)
  (setq lsp-rust-analyzer-server-display-inlay-hints t)
  (setq lsp-rust-analyzer-inlay-hints-mode t))

;; open 'info' files with info-mode
(add-to-list 'auto-mode-alist '("\\.info\\'" . info-mode))

;; Nyanyanyanyanyanyan!
(nyan-mode 1)
(setq nyan-animate-nyancat t
      nyan-wavy-trail t)
