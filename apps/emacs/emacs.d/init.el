(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/org-yt")

;; ux settings to resemble a modern editor
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)
(global-visual-line-mode t) ;; word wrap by default
(setq-default word-wrap t)
(set-window-scroll-bars (minibuffer-window) nil nil)
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . light))
(blink-cursor-mode 0)    ;; Reduce visual noise
(setq ring-bell-function 'ignore)
(global-hl-line-mode 1)
(set-face-background hl-line-face "azure")
(setq-default cursor-type 'bar)
(set-frame-font "Hack Nerd Font 14" nil t)
;;(set-frame-font "Gill Sans Light 18" nil t)
(setq-default line-spacing 0.5)
(desktop-save-mode 1)
(global-undo-tree-mode)
(delete-selection-mode 1)
;; modern keybindings
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
;; https://www.emacswiki.org/emacs/SavePlace
(save-place-mode 1)

;; stop asking to confirm if a theme is safe
(setq custom-safe-themes t)

;; update default key bindings to use more powerful equivalents
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

;; Org-mode settings
(require 'org)
(setq org-odd-levels-only t)
(setq org-startup-indented t)
(setq org-todo-keywords
      '((sequence "TODO" "WAITING" "|" "CANCELLED" "DONE")))
(setq org-agenda-files '("~/Desktop/org/"))
(setq org-special-ctrl-a/e t)
(setq org-image-actual-width '(400))
(setq org-startup-with-inline-images t)

;; air-pop-to-org-agenda ref: https://blog.aaronbieber.com/2016/01/30/dig-into-org-mode.html
(defun air-pop-to-org-agenda (split)
  "Visit the org agenda, in the current window or a SPLIT."
  (interactive "P")
  (org-agenda-list)
  (when (not split)
    (delete-other-windows)))
(define-key global-map (kbd "C-c t a") 'air-pop-to-org-agenda)

;; composite agenda view
(setq org-agenda-custom-commands
      '(("c" "Simple agenda view"
         ((agenda "")
          (alltodo "")))))

(defun org-hook-function ()
  ;; add your code here. it will be called every
  ;; time org mode is run.
  (local-set-key (kbd "s-<right>") 'org-end-of-line)
  (local-set-key (kbd "s-<left>") 'org-beginning-of-line)
  (local-set-key (kbd "RET") 'org-meta-return)
  (local-set-key (kbd "<S-return>") 'org-return)
  )
(add-hook 'org-mode-hook 'org-hook-function)

;; helm config
(require 'helm)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(helm-mode 1)

;; load color theme
(load-theme 'intellij t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-code ((t (:background "ivory" :foreground "red1" :inherit fixed-pitch))))
 '(org-level-1 ((t nil)))
 '(org-level-2 ((t nil)))
 '(org-level-3 ((t nil)))
 '(org-level-4 ((t nil)))
 '(org-level-5 ((t nil)))
 '(org-level-6 ((t nil)))
 '(org-level-7 ((t nil)))
 '(org-todo ((t (:foreground "dark red" :weight bold)))))

;; better bullets in org mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-hide-emphasis-markers t)

;; display previews of online images and youtube videos
(require 'org-yt)
(defun org-image-link (protocol link _description)
  "Interpret LINK as base64-encoded image data."
  (cl-assert (string-match "\\`img" protocol) nil
             "Expected protocol type starting with img")
  (let ((buf (url-retrieve-synchronously (concat (substring protocol 3) ":" link))))
    (cl-assert buf nil
               "Download of image \"%s\" failed." link)
    (with-current-buffer buf
      (goto-char (point-min))
      (re-search-forward "\r?\n\r?\n")
      (buffer-substring-no-properties (point) (point-max)))))

(org-link-set-parameters
 "imghttp"
 :image-data-fun #'org-image-link)

(org-link-set-parameters
 "imghttps"
 :image-data-fun #'org-image-link)

;; auto-save to avoid sync conflicts as much as possible
;; solution 1: use internal lib: auto-save-buffers
;;(require 'auto-save-buffers)
;;(run-with-idle-timer 5 t 'auto-save-buffers)

;; solution 3: use MELPA package: auto-save-buffers-enhanced
;; ref: https://github.com/kentaro/auto-save-buffers-enhanced/blob/master/auto-save-buffers-enhanced.el
(require 'auto-save-buffers-enhanced)
(auto-save-buffers-enhanced t)

(global-auto-revert-mode t)
