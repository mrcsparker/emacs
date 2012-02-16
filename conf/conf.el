(setq initial-scratch-message "")

(setq user-full-name "Chris Parker")
(setq user-mail-address "mrcsparker@gmail.com")

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Don't show that splash screen
(setq inhibit-startup-message t)
;; Allows syntax highlighting to work, among other things
(global-font-lock-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)

