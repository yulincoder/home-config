
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-theme 'tango-dark 1)	;; 默认主题
(global-linum-mode t)		;; 默认显示行号

;; set emacs mode
(setq load-path (append (list "~/.emacs_lib_tete") load-path))
(autoload 'nesc-mode "nesc.el")
(add-to-list 'auto-mode-alist '("\\.nc\\'" . nesc-mode))

;; markdown 编辑器
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))



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
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))


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
 '(package-selected-packages (quote (auto-complete neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
