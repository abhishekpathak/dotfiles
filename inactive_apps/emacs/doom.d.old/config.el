;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Abhishek Pathak"
      user-mail-address "4abhishekpathak@gmail.com")

(setq doom-theme 'doom-one-light)
(setq doom-font (font-spec :family "Iosevka Term SS04 Extended" :size 15))

(setq display-line-numbers-type t)
(setq-default line-spacing 0.5)

(require 'real-auto-save)
(setq real-auto-save-interval 2) ;; in seconds
(add-hook 'prog-mode-hook 'real-auto-save-mode)

(global-auto-revert-mode t)

(require 'org)
(setq org-image-actual-width 400)
(setq org-startup-with-inline-images t)
(setq org-agenda-files '("~/Dropbox/workspace/org"))
(setq org-hide-emphasis-markers t)

;; display previews of online images and youtube videos
;;(require 'org-yt)
;;(defun org-image-link (protocol link _description)
;;  "Interpret LINK as base64-encoded image data."
;;  (cl-assert (string-match "\\`img" protocol) nil
;;             "Expected protocol type starting with img")
;;  (let ((buf (url-retrieve-synchronously (concat (substring protocol 3) ":" link))))
;;    (cl-assert buf nil
;;               "Download of image \"%s\" failed." link)
;;   (with-current-buffer buf
;;      (goto-char (point-min))
;;      (re-search-forward "\r?\n\r?\n")
;;      (buffer-substring-no-properties (point) (point-max)))))
;;(org-link-set-parameters
;; "imghttp"
;; :image-data-fun #'org-image-link)
;;(org-link-set-parameters
;; "imghttps"
;; :image-data-fun #'org-image-link)

(after! org
  (set-face-attribute 'org-link nil
                      :weight 'normal
                      :background nil)
  (set-face-attribute 'org-code nil
                      :foreground "red1"
                      :background nil)
  (set-face-attribute 'org-date nil
                      :foreground "#5B6268"
                      :background nil)
  (set-face-attribute 'org-level-1 nil
                      :background nil
                      :foreground "black"
                      :height 1.0
                      :weight 'normal)
  (set-face-attribute 'org-level-2 nil
                      :background nil
                      :foreground "black"
                      :height 1.0
                      :weight 'normal)
  (set-face-attribute 'org-level-3 nil
                      :background nil
                      :foreground "black"
                      :height 1.0
                      :weight 'normal)
  (set-face-attribute 'org-level-4 nil
                      :background nil
                      :foreground "black"
                      :height 1.0
                      :weight 'normal)
  (set-face-attribute 'org-level-5 nil
                      :weight 'normal)
  (set-face-attribute 'org-level-6 nil
                      :weight 'normal)
  (set-face-attribute 'org-level-7 nil
                      :weight 'normal)
  (set-face-attribute 'org-level-8 nil
                      :weight 'normal)
  (set-face-attribute 'org-document-title nil
                      :foreground "SlateGray1"
                      :background nil
                      :height 1.2
                      :weight 'bold)
  (set-face-attribute 'org-default nil
                      :foreground "grey71"
                      :background nil
                      :height 1.0
                      :weight 'normal)
    (set-face-attribute 'org-done nil
                      :foreground "red"
                      :background nil
                      :strike-through t
                      :height 1.0
                      :weight 'normal)
)
