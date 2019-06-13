;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode. Will not source a `.formatter.exs`. See for details: https://github.com/elixir-editors/emacs-elixir#elixir-format
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode))
