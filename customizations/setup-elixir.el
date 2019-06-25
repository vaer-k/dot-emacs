;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode. Will not source a `.formatter.exs`. See for details: https://github.com/elixir-editors/emacs-elixir#elixir-format
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

(require 'web-mode)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-indent-style 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode))
