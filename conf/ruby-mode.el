(autoload 'ruby-mode "ruby-mode" "" t)
(autoload 'rspec-mode "rspec-mode" "" t)
(autoload 'inf-ruby "inf-ruby" "" t)
(autoload 'ruby-electric-mode "ruby-electric" "" t)
(autoload 'ruby-compilation-minor-mode "ruby-compilation" "" t)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Thorfile" . ruby-mode))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (require 'ruby-compilation)
             (ruby-electric-mode t)
             (inf-ruby-keys)
             (local-set-key (kbd "C-c h r") 'ri)
             (local-set-key (kbd "TAB") nil)))

(add-hook 'rspec-mode-hook
          '(lambda ()
             (setq yas/mode-symbol 'rspec-mode))) 

(add-to-list 'completion-ignored-extensions ".rbc")
