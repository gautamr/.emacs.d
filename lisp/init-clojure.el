;;; init-52-coding-clojure.el --- Code for Clojure programming
;;
;; Copyright (C) 2017 Gautam Roy
;;
;; Author: Gautam Roy
;; URL: https://github.com/gautamr/.emacs.d
;; Keywords: configuration, clj-refactor, cider
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; clojure mode and cider configuration

;;; Code:

;; lets try smartparens instead of paredit
;; https://github.com/jabranham/emacs-for-social-science/blob/master/init-emacs.org
(use-package smartparens
  :ensure t
  :init
  (require 'smartparens-config)
  (smartparens-global-mode)
  (show-smartparens-global-mode))

(use-package cider-eval-sexp-fu
  :defer t)

(use-package clj-refactor
  :defer t
  :ensure t
  :diminish clj-refactor-mode
  :config (cljr-add-keybindings-with-prefix "C-c C-m"))

(use-package clojure-mode
  :ensure t
  :config
  ;;(add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))

;; Install and configure Cider
(use-package cider
  :ensure t
  :config
  (setq cider-pprint-fn 'fipp) ; fastest pretty printing
  (setq cider-repl-pretty-print-width 100)
  ;;(setq cljr-inject-dependencies-at-jack-in nil)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  ;;(add-hook 'cider-repl-mode-hook #'paredit-mode)
  (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode))


(provide 'init-clojure)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-clojure.el ends here
