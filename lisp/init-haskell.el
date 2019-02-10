;; haskell mode
(use-package haskell-mode
  :ensure t)

(use-package intero
  :ensure t
  :config
  (add-hook 'haskell-mode-hook 'intero-mode))

(provide 'init-haskell)
;;; init-haskell.el ends here
