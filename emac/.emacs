(require 'package) ;; You might already have this line
(add-to-list 'package-archives
                          '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    ;;   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
    ;;   (package-initialize) ;; You might already have this line
(add-to-list 'package-archives
                          '("melpa-stable" . "https://stable.melpa.org/packages/") t))

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
;;(progn
;;    (switch-to-buffer
;;          (url-retrieve-synchronously
;;                  "https://raw.github.com/milkypostman/package-filter/master/package-filter.el"))
;;      (package-install-from-buffer  (package-buffer-info) 'single))
 ;; Set your lisp system and, optionally, some contribs
(add-to-list 'load-path "~/.emacs.d/")

(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes (quote ("bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" default)))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(fringe-mode 4 nil (fringe))
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun fontify-frame (frame)
    (set-frame-parameter frame 'font "Monospace-8"))


;;(require 'auto-complete)
;;(global-auto-complete-mode t)
