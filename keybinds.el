;;; $DOOMDIR/keybinds.el -*- lexical-binding: t; -*-

(map!
 (:leader
  :desc "Explorer"           "e" #'+treemacs/toggle
 (:prefix-map ("a" . "applications"))  ;remember to delete the last ) when kana enabled
 (:prefix-map ("d" . "dap")
 ;; basics
 :desc "dap next"            "n" #'dap-next
 :desc "dap step in"         "i" #'dap-step-in
 :desc "dap step out"        "o" #'dap-step-out
 :desc "dap continue"        "c" #'dap-continue
 :desc "dap hydra"           "h" #'dap-hydra
 :desc "dap debug restart"   "r" #'dap-debug-restart
 :desc "dap debug"           "s" #'dap-debug

 ;; debug
 :prefix ("dd" . "Debug")
 :desc "dap debug recent"    "r" #'dap-debug-recent
 :desc "dap debug last"      "l" #'dap-debug-last

 ;; eval
 :prefix ("de" . "Eval")
 :desc "eval"                "e" #'dap-eval
 :desc "eval region"         "r" #'dap-eval-region
 :desc "eval thing at point" "s" #'dap-eval-thing-at-point
 :desc "add expression"      "a" #'dap-ui-expressions-add
 :desc "remove expression"   "d" #'dap-ui-expressions-remove

 :prefix ("db" . "Breakpoint")
 :desc "dap breakpoint toggle"      "b" #'dap-breakpoint-toggle
 :desc "dap breakpoint condition"   "c" #'dap-breakpoint-condition
 :desc "dap breakpoint hit count"   "h" #'dap-breakpoint-hit-condition
 :desc "dap breakpoint log message" "l" #'dap-breakpoint-log-message)
;;  :desc "kana" "k" #'kana)
;;osxDictionary
 ;; (:prefix ("ad" . "macos词典")
 ;;  :desc "选中翻译" "p" #'osx-dictionary-search-word-at-point
 ;;  :desc "输入翻译" "i" #'osx-dictionary-search-input)
;;osxDictionary

;;centaur-tabs
(:prefix ("ac" . "centaur-tabs")
 :desc "tab-kill" "k" #'centaur-tabs--kill-this-buffer-dont-ask
 :desc "tab-go-lift" "h" #'centaur-tabs-forward
 :desc "tab-go-right" "l" #'centaur-tabs-backward
 :desc "ace jump" "j" #'centaur-tabs-ace-jump
 :desc "open-new-tab" "o" #'centaur-tabs--create-new-tab
 :desc "kill-other-tabs" "q" #'centaur-tabs-kill-other-buffers-in-current-group)
;;centaur-tabs

;;popweb
 ;; (:prefix ("ap" . "popweb")
 ;;  :desc "dict-bing" "b" #'popweb-dict-bing-pointer
 ;;  :desc "dict-youdao" "y" #'popweb-dict-youdao-pointer
 ;;  :desc "popweb-latex" "l" #'popweb-latex
 ;;  :desc "popweb-org-roam-link" "o" #'popweb-org-roam-link-preview-select)
;;popweb

;;eaf
;; (:prefix ("e" . "eaf")
;;  :desc "Open demo" "d" #'eaf-open-demo
;;  :desc "Open vue demo" "v" #'eaf-open-vue-demo
;;  :desc "Open browser" "b" #'eaf-open-browser
;;  :desc "Kill process" "k" #'eaf-kill-process
;;  :desc "Preview org files" "p" #'eaf-org-previewer
;;  :desc "File manager" "f" #'eaf-open-in-file-manager)
;;eaf

;;中文行内格式优化
 (:prefix ("ig" . "行内格式")
  :desc "高亮" "*" #'(lambda ()
                       (interactive)

                       (me/org-emphasize-dwim "*"))
  :desc "斜体" "/" #'(lambda ()
                       (interactive)
                       (me/org-emphasize-dwim "/"))
  :desc "等宽" "~" #'(lambda ()
                       (interactive)
                       (me/org-emphasize-dwim "~"))
  :desc "下划线" "_" #'(lambda ()
                         (interactive)
                         (me/org-emphasize-dwim "_"))
  :desc "删除线" "+" #'(lambda ()
                         (interactive)
                         (me/org-emphasize-dwim "+"))
  :desc "高亮" "=" #'(lambda ()
                       (interactive)
                       (me/org-emphasize-dwim "=")))
;;中文行内格式优化

;; 悬浮终端
 ;; (:prefix ("ov" . "vterm-posframe")
 ;;  :desc "创建悬浮终端" "c" #'posframe-project-term-toggle
 ;;  :desc "删除悬浮终端" "k" #'posframe-project-term-killall
 ;; )
;; 悬浮终端

;; 悬浮终端
(:desc "终端" "ov" #'posframe-project-term-toggle)
;; 悬浮终端
) ;;-----end of "leader" tag.

;;绑定C-[
 (:desc "back to normal mode" "C-【" #'evil-force-normal-state)
;;绑定C-[

;;大跳J、K
 ;; (:desc "shift up" :nvm "K" (lambda ()
 ;;                             (interactive)
 ;;                        (evil-previous-line 10)))
 ;; (:desc "shift down" :nvm "J" (lambda ()
 ;;                                    (interactive)
 ;;                                    (evil-next-line 10)))
;;大跳J、K

;;kana
;;  (:after kana :map kana-mode-map
;;   :nm "v" #'kana-validate
;;   :nm "s" #'kana-say-question
;;   :nm "p" #'kana-previous
;;   :nm "n" #'kana-next
;;   :nm "t" #'kana-toggle-kana
;;   :nm "r" #'kana-toggle-random
;;   :nm "l" #'kana-loop-toggle
;;   :nm "]" #'kana-loop-inc
;;   :nm "[" #'kana-loop-dec
;;   :nm "a" #'kana-first
;;   :nm "j" #'kana-jump
;;   :nm "q" #'kana-quit
;;   :nm "d" #'kana-details)
;;  ;;kana
;; );-----end of map!

)
