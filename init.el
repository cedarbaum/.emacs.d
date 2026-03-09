;;; init.el --- Entry point for Emacs configuration

;;; Commentary:
; This file executes all source code blocks in config.org.

;;; Code:

;; Set up package archives
(require 'package)
(setq package-archives '(("melpa"  . "https://melpa.org/packages/")
                         ("gnu"    . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
(package-initialize)

;; Refresh package contents on first run
(unless package-archive-contents
  (package-refresh-contents))

;; use-package is built-in as of Emacs 29
(require 'use-package)
(setq use-package-always-ensure t)

;; Track package load times — run M-x use-package-report to see results
(setq use-package-compute-statistics t)

;; Load config.org file
(use-package org :ensure nil)
(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

;;; init.el ends here
