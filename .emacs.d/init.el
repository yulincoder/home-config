
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
(package-initialize)


;; 设置备份文件目录(否则每打开一个文件总会在当前目录下创建filename~文件)
(setq backup-directory-alist `(("."."~/.emacs_saves_te")))

;; 设置nesc支持
(setq load-path (cons (expand-file-name "~/.emacs.d/nesc") load-path))
(require 'cl)
(autoload 'nesc-mode "nesc.el")
(add-to-list 'auto-mode-alist '("\\.nc\\'" . nesc-mode))
;;(load "~/.emacs.d/nesc/nesc.el")


;; 设置golang-mode
(add-to-list 'load-path "/home/tete/.emacs.d/go-mode")
(require 'go-mode-autoloads)
