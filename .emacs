(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("elpa" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Loading ido-flex package
(use-package ido
  :init
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  :config
  (ido-mode 1))

;; Loading powerline package
(use-package powerline
  :config
  (set-face-attribute 'mode-line nil
		    :foreground "Black"
		    :background "DarkOrange"
		    :box nil)
  (setq powerline-arrow-shape 'curve)
  (powerline-default-theme))

;; Loading whitespace
(use-package whitespace
  :init
  (setq whitespace-style '(face empty tabs trailing))
  (set-default 'ident-tabs-mode nil)
  (setq-default erlang-indent-level 2))

;; Loading undo-tree
(use-package undo-tree)

;; Global configuration
(global-whitespace-mode 1)

;; Loading theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'lush t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
