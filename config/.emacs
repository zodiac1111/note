(setq default-farme-alist
      '((heught . 100)(width . 100)(menubar-lines . 0)(tool-bar-lines . 0)))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(ede-project-directories (quote ("/home/zodiac1111/tmp/ldd/init")))
  '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  )

;;;; 缩进设置
(setq tab-width 8)
(setq default-tab-width 8)
(setq indent-tabs-mode t)
(setq c-basic-offset 8)

;;;; C语言设置 C language setting
(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "Linux")
	     (c-toggle-auto-state)
	     (setq tab-width 8)
	     (setq indent-tabs-mode t)
	     (setq c-basic-offset 8)))

;;;; C++ language setting
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (c-set-style "K&R")
	     ;;(c-toggle-auto-state)
	     (setq tab-width 8)
	     (setq indent-tabs-mode t)
	     (setq c-basic-offset 8)))

;;;; C  mode 括号补全
(add-hook 'c-mode-hook 'hs-minor-mode)
(defun my-c-mode-auto-pair ()
	(interactive)
	(make-local-variable 'skeleton-pair-alist)
	(setq skeleton-pair-alist  '(
		(?' ? _ "'")
		(?\( ?  _ ")")
		(?\" ?  _ "\"")
		(?\[ ?  _ "]")
		(?{ \n > _ \n ?} >)))
(setq skeleton-pair t)
	(local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
	(local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
