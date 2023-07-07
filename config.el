;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;;(add-load-path! "~/.doom.d/site-lisp")

;; Basic Settings
;; ===========================================================================
;; my name and email
(setq user-full-name "Apollo"
      user-mail-address "zihangxu123@gmail.com")

;; set theme
(setq doom-theme 'doom-gruvbox-light)

;; set fonts
(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 16)
      doom-variable-pitch-font (font-spec :family "FiraCode Nerd Font")
      doom-unicode-font (font-spec :family "FiraCode Nerd Font")
      doom-big-font (font-spec :family "FiraCode Nerd Font" :size 19))
;;for cjk
(defun init-cjk-fonts()
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
      charset (font-spec :family "霞鹜文楷等宽" :size 16))))
(add-hook 'doom-init-ui-hook 'init-cjk-fonts)

;; enable pixel scroll by default
(when (>= emacs-major-version 28)
  (when (display-graphic-p)
    (pixel-scroll-precision-mode 1)))

;; don't disturb me when quitting emacs
(setq confirm-kill-emacs nil)

;; window size by default
(pushnew! initial-frame-alist '(width . 160) '(height . 40))

;; fullscreen by default
;;(add-hook 'window-setup-hook #'toggle-frame-fullscreen)

;; set org-mode as default mode
;;(setq-default major-mode 'fondamental-mode)

;; display current battery(only for laptop)
;; (unless 0:10:55 (string-match-p "^Power N/A" (battery))
;;   (display-battery-mode 1))

;; open 'info' files with info-mode
(add-to-list 'auto-mode-alist '("\\.info\\'" . info-mode))

;; path of org and org-roam
(setq org-directory "~/org/")
;;(setq org-roam-directory "~/org/roam")

;; don't reset text level when enable zen-mode
(setq +zen-text-scale 0)

;; native-comp optimize(only on emacs28+)
(if (native-comp-available-p)
    (setq native-comp-speed 2))


;; Custom varibles
;;==========================================
(custom-set-variables
 '(display-time-24hr-format t)
 '(display-time-format "%I:%M:%S")
 '(display-time-interval 1)
 '(doom-gruvbox-light-variant 'soft)
 '(display-line-numbers-type 'relative)
 '(nyan-animate-nyancat t)
 '(nyan-wavy-trail t)
 '(writeroom-width 100)
 '(show-paren-context-when-offscreen 'overlay)
 '(org-hide-emphasis-markers t) ;; hide emphasis markets for org-mode
 '(writeroom-mode-line t))

;; Load other config files
;; ===========================================================================
;; load utils
(load! "utils")

;; load key bindings
(load! "keybinds")

;; Language Specific
;; ===========================================================================
;; Vue
(use-package! lsp-volar) ;;use lsp-volar as language sever for vue


;;; rust
;; (after! rustic
;;   (setq rustic-lsp-server 'rust-analyzer)
;;   (setq  lsp-rust-analyzer-server-display-inlay-hints t ;; display inlay hints
;;          lsp-rust-analyzer-display-lifetime-elision-hints-enable "skip_trivial"
;;          lsp-rust-analyzer-display-chaining-hints t
;;          lsp-rust-analyzer-display-lifetime-elision-hints-use-parameter-names nil
;;          lsp-rust-analyzer-display-closure-return-type-hints t
;;          lsp-rust-analyzer-display-parameter-hints t
;;          lsp-rust-analyzer-display-reborrow-hints t)

;;   (dap-register-debug-template
;;    "Rust::Codelldb Run Configuration"
;;    (list :type "lldb"
;;          :request "launch"
;;          :name "CODELLDB::Run"
;;          :program "/Users/apoxu/projects/build_emacs/target/debug/build_emacs"
;;          :cwd nil
;;          :target nil
;;          )))
;; debugger
; use dap-codelldb as dap backend
(setcdr (cdr (cdr (cdr (car (cdr (cdr (cdr (cdr (cdr (cdr (cdr +debugger--dap-alist))))))))))) '(dap-codelldb))
;; set dap-register-debug-template

;;; Additional Plugins
;; ===========================================================================
;; Nyanyanyanyanyanyan!
(nyan-mode 1)

;; posframe-vterm
(use-package! posframe-project-term)

;;
(use-package! mode-minder)
