;;; init.el --- Entry point for Emacs configuration

;;; Commentary:
; This file does the following:
; 1. Initializes the package manager
; 2. Bootstraps use-package
; 3. Ensures org-mode is installed
; 4. Loads config.org (org-babel based configuration file)

;;; Code:

;; Helper function to reload init file
(defun reload-init-file ()
  "Reload init.el."
  (interactive)
  (load-file (expand-file-name (concat user-emacs-directory "init.el"))))

;; Prefer UTF-8 encoding
(prefer-coding-system 'utf-8)

;; Initialize package manager
(require 'package)

(add-to-list 'package-archives '("org"          . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa"        . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Ensure org is installed in order to load config.org
(use-package org
  :ensure t
  :init
  (setq org-confirm-babel-evaluate nil))

;; Load config.org file
(require 'org)
(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

;;; init.el ends here
