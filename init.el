;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "https://stable.melpa.org/packages/")
                    ("marmalade" . "http://marmalade-repo.org/packages/")
                    ("tromey" . "http://tromey.com/elpa/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(setq package-pinned-packages '((cider . "melpa-stable")
                                (ensime . "melpa-stable")))

;; LOAD and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)
(use-package paredit)
(use-package clojure-mode)
(use-package clojure-mode-extra-font-locking)
(use-package cider)
(use-package smex)
(use-package projectile)
(use-package rainbow-delimiters)
(use-package tagedit)
(use-package better-defaults)
(use-package elpy)
(use-package flycheck)
(use-package py-autopep8)
(use-package haskell-mode)
(use-package ensime)
(use-package iedit)
(use-package spacemacs-theme :defer t)
(use-package ivy)
(use-package all-the-icons)
(use-package counsel)
(use-package neotree)
(use-package which-key)
(use-package magit)


;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
;;
;; For example, if you download yaml-mode.el to ~/.emacs.d/vendor,
;; then you can add the following code to this file:
;;
;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;; 
;; Adding this code will make Emacs enter yaml mode whenever you open
;; a .yml file
;;(add-to-list 'load-path "~/.emacs.d/vendor")


;;;;
;; Customization
;;;;

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")

;; Hard-to-categorize customizations
(load "misc-personal.el")

;; For editing lisps
(load "elisp-editing.el")

;; Langauage-specific
;; Requires companion setup file in .emacs.d/customizations
(defvar langs '("clojure" "python" "haskell"))
(dolist (l langs)
  (load (concat "setup-" l ".el")))

