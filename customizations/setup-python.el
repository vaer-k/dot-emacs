;; The following suppresses a warning about readline not being supported:
;; Warning (python): Your ‘python-shell-interpreter’ doesn’t seem to support readline, yet ‘python-shell-completion-native’ was t and "ipython3" is not part of the ‘python-shell-completion-native-disabled-interpreters’ list. Native completions have been disabled locally.
;; It appears this issue will be resolved in an upcoming version of emacs or elpy
;; https://github.com/jorgenschaefer/elpy/issues/887
(setq python-shell-completion-native-enable nil)
(elpy-enable)

