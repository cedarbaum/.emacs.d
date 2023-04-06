;;; init.el --- Entry point for Emacs configuration

;;; Commentary:
; This file executes all source code blocks in config.org.

;;; Code:

;; Initialize straight.el package manager.
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use-package and always use =straight.el= to install missing packages.
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; Add :ensure-system-package extension.
(use-package use-package-ensure-system-package)

;; Load config.org file
(use-package org)
(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

;;; init.el ends here
