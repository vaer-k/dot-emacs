;;!important -- You must install required dependencies with pip before elpy will
;; function properly: https://github.com/jorgenschaefer/elpy

;; The following suppresses a warning about readline not being supported:
;; Warning (python): Your ‘python-shell-interpreter’ doesn’t seem to support readline, 
;; yet ‘python-shell-completion-native’ was t and "ipython3" is not part of the 
;; ‘python-shell-completion-native-disabled-interpreters’ list. Native completions have been disabled locally.
;; It appears this issue will be resolved in an upcoming version of emacs or elpy
;; https://github.com/jorgenschaefer/elpy/issues/887
(setq python-shell-completion-native-enable nil)

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")
(elpy-enable)

;; Turn on electric local when elpy is active
(add-hook 'elpy-mode-hook
          (lambda ()
            (electric-pair-local-mode)))

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; black for strict adherence to pep8
(add-hook 'python-mode-hook 'blacken-mode)
