(require 'package)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(setq el-get-user-package-directory "~/.emacs.d/el-get-user/packages-init")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (goto-char (point-max))
       (eval-print-last-sexp)))))

(setq el-get-github-default-url-type 'git)
(setq el-get-verbose t)

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get 'sync
        '(magit
          rhtml-mode
          haml-mode				 
          sass-mode		
          coffee-mode	
          maxframe
          js2-mode
          markdown-mode
          textile-mode
          textmate
          ;; ruby set
          inf-ruby
          ruby-mode
          rspec-mode
          ruby-electric
          ruby-compilation
          rvm
          mmm-mode
          yaml-mode
          ;; common set
          color-theme
          color-theme-railscasts
          psvn
          ;;session
          auto-complete
          auto-complete-css
          auto-complete-emacs-lisp
          auto-complete-ruby
          ;; processing
          ;;processing-mode
          ;; clojure
          clojure-mode
          paredit
          ))
