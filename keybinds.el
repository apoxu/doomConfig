;;; $DOOMDIR/keybinds.el -*- lexical-binding: t; -*-
(map!
 (:leader
 (:prefix-map ("a" . "applications"))  ;remember to delete the last ) when using kana
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
 (:prefix ("ov" . "vterm-posframe")
  :desc "创建悬浮终端" "c" #'posframe-project-term-toggle
  :desc "删除悬浮终端" "k" #'posframe-project-term-killall)
;;中文行内格式优化
) ;;-----ends of "leader" tag.

;;绑定C-[
 (:desc "back to normal mode" "C-【" #'evil-force-normal-state)
;;绑定C-[

;;大跳J、K
 (:desc "shift up" :nvm "K" (lambda ()
                             (interactive)
                        (evil-previous-line 10)))
 (:desc "shift down" :nvm "J" (lambda ()
                                    (interactive)
                                    (evil-next-line 10)))
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
