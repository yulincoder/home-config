;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


;; 猪场代理
;;-----------------------  Start -------------------------------------
(setq package-archives
        '(("melpa-cn" . "http://mirrors.163.com/elpa/melpa/")
          ("org-cn"   . "http://mirrors.163.com/elpa/org/")
          ("gnu-cn"   . "http://mirrors.163.com/elpa/gnu/")))
;;-----------------------  End -------------------------------------

;; 常规配置项
;;-----------------------  Start -------------------------------------
(setq make-backup-files nil) ;; 不要生成#开头的备份文件
(global-linum-mode t) ;; 显示行号
(tool-bar-mode -1) ;; disable tool-bar
;;(menu-bar-mode -1) ;; disable menu bar
;;(toggle-scroll-bar -1) ;; disable scroll bar

(add-hook 'c-mode-hook #'electric-operator-mode);操作符两边自动加空格
(add-hook 'python-mode-hook #'electric-operator-mode);操作符两边自动加空格
(add-hook 'go-mode-hook #'electric-operator-mode); electric-operator-mode不是一个全局模式,需要单独设定
(electric-pair-mode 1);自动补全括号
(show-paren-mode 1);配对括号高亮

;;-----------------------  End -------------------------------------


;; 主题相关
;;-----------------------  Start -------------------------------------
;; load all theme from replace-colorthemes folder
;; A ton of themes, very nice, see: https://github.com/emacs-jp/replace-colorthemes

;;;;;;; Tomorrow, A good theme manager ;;;;;;;;;;;;;;;;;
;; Github: https://github.com/purcell/color-theme-sanityinc-tomorrow
;;(require 'color-theme-sanityinc-tomorrow)
;; M-x color-theme-sanityinc-tomorrow
;; M-x color-theme-sanityinc-tomorrow-day
;; M-x color-theme-sanityinc-tomorrow-night
;; M-x color-theme-sanityinc-tomorrow-blue
;; M-x color-theme-sanityinc-tomorrow-bright
;; M-x color-theme-sanityinc-tomorrow-eighties
;; In newer Emacs versions, just require the library as above, then
;; M-x customize-themes


(load-theme 'tango-dark 1) ;; set theme
;;(load-theme  'sanityinc-tomorrow-day 1) ;; set theme
;;(load-theme 'sanityinc-tomorrow-blue 1) ;; set theme ;; It is disable, because of above color-theme manager has take the setting.

(elpy-enable)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#000000" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#eaeaea"))
 '(beacon-color "#d54e53")
 '(custom-safe-themes
   (quote
    ("d86ddb4126c19487edd10a0f1a16f77fdaadafbdac9f4fcd695cf1c0a215117b" "8ca8fbaeaeff06ac803d7c42de1430b9765d22a439efc45b5ac572c2d9d09b16" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "57290e991bf30a375509b74ea7ecfdb5de5150e0a14130c925582726f003c919" "f738c3eb5cfc7e730fea413f9cd8ba0624bd8b4837451660fe169f13f77c7814" "f9aede508e587fe21bcfc0a85e1ec7d27312d9587e686a6f5afdbb0d220eab50" "2679db166117d5b26b22a8f12a940f5ac415d76b004de03fcd34483505705f62" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" default)))
 '(fci-rule-color "#424242")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(package-selected-packages
   (quote
    (color-theme-modern auto-complete-sage flymake-shell company-shell toml-mode dts-mode cargo flycheck-rust lsp-java flycheck lsp-ui imenu-anywhere pylint monochrome-theme twilight-theme mood-one-theme monotropic-theme monokai-theme magic-latex-buffer humanoid-themes company-erlang racer rust-mode rustic ppd-sr-speedbar function-args color-theme-sanityinc-tomorrow afternoon-theme abyss-theme grip-mode flymd auto-complete-c-headers auto-complete company dired-icon dired-explorer dired-subtree dired-sidebar elpy)))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "#e78c45")
     (60 . "#e7c547")
     (80 . "#b9ca4a")
     (100 . "#70c0b1")
     (120 . "#7aa6da")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "#e78c45")
     (200 . "#e7c547")
     (220 . "#b9ca4a")
     (240 . "#70c0b1")
     (260 . "#7aa6da")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "#e78c45")
     (340 . "#e7c547")
     (360 . "#b9ca4a"))))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant italic :weight normal :height 128 :width normal)))))
;;-----------------------  End -------------------------------------

;; 目录侧边栏
;;-----------------------  Start -------------------------------------
(global-set-key (kbd "<f8>") 'dired-sidebar-toggle-sidebar)
;; (use-package dired-sidebar
;;   :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
;;   :ensure t
;;   :commands (dired-sidebar-toggle-sidebar)
;;   :init
;;   (add-hook 'dired-sidebar-mode-hook
;;             (lambda ()
;;               (unless (file-remote-p default-directory)
;;                 (auto-revert-mode))))
;;   :config
;;   (push 'toggle-window-split dired-sidebar-toggle-hidden-commands)
;;   (push 'rotate-windows dired-sidebar-toggle-hidden-commands)

;;   (setq dired-sidebar-subtree-line-prefix "__")
;;   (setq dired-sidebar-theme 'vscode)
;;   (setq dired-sidebar-use-term-integration t)
;;   (setq dired-sidebar-use-custom-font t))
;;-----------------------  End -------------------------------------

;; For whitespcae-mode, 可以显示tab，空格等不可见符号
;;-----------------------  Start -------------------------------------
(global-set-key (kbd "<f9>") 'whitespace-mode)
;;-----------------------  End -------------------------------------

;; set 4 space instead of a tab
;;-----------------------  Start -------------------------------------
(setq-default indent-tabs-mode nil) ;; disable tab
(setq default-tab-width 4) 
(setq c-basic-offset 4) ;; set c/c++ indent 4
(setq c-default-style "linux") ;; if have no this
;;-----------------------  End -------------------------------------


;; for cscope
;;-----------------------  Start -------------------------------------
;;(load-file "~/.emacs.d/site-lisp")
(add-to-list 'load-path' "~/.emacs.d/site-lisp")
(add-hook 'c-mode-common-hook
	  '(lambda ()
	    (require 'xcscope)))
;;-----------------------  End -------------------------------------

;; for taglist
;;-----------------------  Start -------------------------------------
(add-hook 'c-mode-common-hook
	  '(lambda ()
	    (load "taglist")))
(defun my-c-mode-common-hook ()
 (define-key c-mode-base-map (kbd "M-o") 'taglist-switch-h-cpp)
 (define-key c-mode-base-map (kbd "M-m") 'taglist-list-tags))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(defun my-python-mode-hook ()
 (define-key python-mode-map (kbd "M-m") 'taglist-list-tags))
(add-hook 'python-mode-hook 'my-python-mode-hook)

(define-key lisp-mode-shared-map (kbd "M-m") 'taglist-list-tags)
;;-----------------------  End -------------------------------------

;; For Rust
;;-----------------------  Start -------------------------------------
;; irony-mode for c auto complete
;;(add-hook 'c++-mode-hook 'irony-mode)
;;(add-hook 'c-mode-hook 'irony-mode)
;;(add-hook 'objc-mode-hook 'irony-mode)
;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(add-hook 'c-mode-hook 'auto-complete-mode)
;;(add-hook 'c-mode-hook 'show-paren-mode)

;; add in your commonly used packages/include directories here, for
;; example, SDL or OpenGL. this shouldn't slow down cpp, even if
;; you've got a lot of them
;;(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
;;(add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)
;;-----------------------  End -------------------------------------


;; For Rust
;;-----------------------  Start -------------------------------------
;; Link https://github.com/rust-lang/rust-mode
(require 'rust-mode)

(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(setq rust-format-on-save t)
(define-key rust-mode-map (kbd "C-c C-c") 'rust-run)

;; Link https://github.com/racer-rust/emacs-racer
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(define-key rust-mode-map (kbd "C-x 4") 'racer-find-definition-other-frame)

(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
;;-----------------------  End -------------------------------------


;; lsp(language server protocol) (目前只用到imenu功能)
;; 显示文件内函数或变量
;; 自动调用imenu(生成当前文件缓冲器的符号索引，emacs自带)
;;-----------------------  Start -------------------------------------
;; 设置font-lock-mode，任何模式都会调用
(setq global-font-lock-mode t)

;; 在font-lock-mode-hook上调用imenu
;; 在顶部菜单栏显示
(defun try-to-add-imenu ()
  (condition-case nil (imenu-add-to-menubar "Imenu") (error nil)))
(add-hook 'font-lock-mode-hook 'try-to-add-imenu)

;; 自带imenu不好用，使用imenu-anywhere,从elpy安装
(global-set-key (kbd "C-c M-.") 'ivy-imenu-anywhere)


;; 又安装了lsp-ui, 其带有一系列工具，包括lsp-ui-imenu, 更好用
;; https://github.com/emacs-lsp/lsp-ui
(add-hook 'after-init-hook 'lsp-ui-mode) ;; 启动执行lsp-mode(还有其他lsp插件，进入lsp-ui-mode才能执行下面命令)
(global-set-key (kbd "M-.") 'lsp-ui-imenu)
;;-----------------------  End -------------------------------------------
