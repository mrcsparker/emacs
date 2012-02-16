(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/ChandleWEi/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq my-el-get-packages
      (append
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
         ruby-electric
         ruby-compilation
         rvm
         mmm-mode
         yaml-mode
         ;; common set
         color-theme
         color-theme-twilight
         tabbar-mode
         psvn
         ;;session
         auto-complete
         auto-complete-css
         auto-complete-emacs-lisp
         auto-complete-ruby
         )
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-el-get-packages)
