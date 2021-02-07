

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; load all theme from replace-colorthemes folder
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/replace-colorthemes"))
;(load-theme 'lethe t t) ;; setting default theme from .emacs.d
;(load-theme 'wheat t t) ;; setting default theme from .emacs.d
;(enable-theme 'lethe)
;---- another way to set default color theme --- best theme for me following -----
;(load-theme 'dracula 1)	;; 默认主题(这个和上面三号都行)
(load-theme 'goldenrod 1)
;(load-theme 'blue-mood 1)
;(load-theme 'blue-sea 1)



(global-linum-mode t)		;; 默认显示行号

;;using proxy
;;(setq url-gateway-method 'scoks)
;;(setq scoks-server '("Default server" "127.0.0.1" 1080 5))
;;(setq url-proxy-services '(
;;      ("http" . "127.0.0.1:1080")
;;      ))

(add-hook 'c-mode-hook #'electric-operator-mode);操作符两边自动加空格
(add-hook 'python-mode-hook #'electric-operator-mode);操作符两边自动加空格
(add-hook 'go-mode-hook #'electric-operator-mode); electric-operator-mode不是一个全局模式,需要单独设定
(electric-pair-mode 1);自动补全括号
(show-paren-mode 1);配对括号高亮


;; 设置tab缩进，但是没什么用
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq default-tab-width 4)

;; set emacs mode
(setq load-path (append (list "~/.emacs_lib_tete") load-path))
(autoload 'nesc-mode "nesc.el")
(add-to-list 'auto-mode-alist '("\\.nc\\'" . nesc-mode))

;; markdown 编辑器
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))


;; neotree 一个目录树, F8启动
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;; 设置备份文件目录(否则每打开一个文件总会在当前目录下创建filename~文件)
(setq backup-directory-alist `(("."."~/.emacs_saves_te")))

;; 设置nesc支持
(setq load-path (cons (expand-file-name "~/.emacs.d/nesc") load-path))
(require 'cl)
(autoload 'nesc-mode "nesc.el")
(add-to-list 'auto-mode-alist '("\\.nc\\'" . nesc-mode))
;;(load "~/.emacs.d/nesc/nesc.el")


;; 设置golang-mode
(add-to-list 'load-path "~/.emacs.d/go-mode")
(require 'go-mode-autoloads)


;; 设置包管理源－清华melpa镜像
;;(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                         ("marmalade" . "http://marmalade-repo.org/packages/")
;;                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))




;; 设置golang自动补全,使用gocode（https://github.com/nsf/gocode）
;; 这依赖于于gocode工具，因此在新平台使用时应当安装gocode(参照以上地址)
;; gocode的自动补全有时候不能提示库函数，这是因为它找不到库函数
;; 这时需要设置~/.config/gocode/*.json中的lib-path
(add-to-list 'load-path "~/.emacs.d/goautocomplete")
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6e03b7f86fcca5ce4e63cda5cd0da592973e30b5c5edf198eddf51db7a12b832" "3fe4861111710e42230627f38ebb8f966391eadefb8b809f4bfb8340a4e85529" "0e8c264f24f11501d3f0cabcd05e5f9811213f07149e4904ed751ffdcdc44739" "1f126eb4a1e5d6b96b3faf494c8c490f1d1e5ad4fc5a1ce120034fe140e77b88" "995d0754b79c4940d82bd430d7ebecca701a08631ec46ddcd2c9557059758d33" "0c5204945ca5cdf119390fe7f0b375e8d921e92076b416f6615bbe1bd5d80c88" "39a854967792547c704cbff8ad4f97429f77dfcf7b3b4d2a62679ecd34b608da" "1c10e946f9a22b28613196e4c02b6508970e3b34660282ec92d9a1c293ee81bb" "9d9b2cf2ced850aad6eda58e247cf66da2912e0722302aaa4894274e0ea9f894" "4bcdfc98cf64ce6145684dc8288fd87489cfa839e07f95f6c791d407624d04f8" "63aff36a40f41b28b0265ac506faa098fd552fac0a1813b745ba7c27efa5a943" "d9e811d5a12dec79289c5bacaecd8ae393d168e9a92a659542c2a9bab6102041" "11e5e95bd3964c7eda94d141e85ad08776fbdac15c99094f14a0531f31a156da" "05d009b7979e3887c917ef6796978d1c3bbe617e6aa791db38f05be713da0ba0" "db510eb70cf96e3dbd48f5d24de12b03db30674ea0853f06074d4ccf7403d7d3" "67b11ee5d10f1b5f7638035d1a38f77bca5797b5f5b21d16a20b5f0452cbeb46" "da8e6e5b286cbcec4a1a99f273a466de34763eefd0e84a41c71543b16cd2efac" "a455366c5cdacebd8adaa99d50e37430b0170326e7640a688e9d9ad406e2edfd" "0ca71d3462db28ebdef0529995c2d0fdb90650c8e31631e92b9f02bd1bfc5f36" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "9fcac3986e3550baac55dc6175195a4c7537e8aa082043dcbe3f93f548a3a1e0" "242527ce24b140d304381952aa7a081179a9848d734446d913ca8ef0af3cef21" "3edbdd0ad45cb8f7c2575c0ad8f6625540283c6e928713c328b0bacf4cfbb60f" "eecacf3fb8efc90e6f7478f6143fd168342bbfa261654a754c7d47761cec07c8" default)))
 '(font-use-system-font t)
 '(package-selected-packages
   (quote
    (transpose-frame flycheck-pycheckers flycheck electric-operator dired-subtree afternoon-theme eziam-theme exotica-theme dracula-theme exec-path-from-shell load-dir jedi-direx jedi auto-complete neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Sans CJK SC" :foundry "adobe" :slant normal :weight bold :height 143 :width normal)))))
(put 'downcase-region 'disabled nil)

;; for python auto-complete using jedi plugin
(autoload 'jedi:setup "jedi" nil t)
(setq jedi:setup-keys t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


;; org-mode configure
;; 复选框变化自动执行org-update-checkbox-count 以更新进度
;; 定义函数调用checkbox-count
(defun custom-org-auto-check()
  (org-update-checkbox-count t)
  )
;; 添加钩子到保存文件
(add-hook 'org-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'custom-org-auto-check nil 'make-it-local)))
