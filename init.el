;;; init.el --- Entry point for Emacs configuration

;;; Commentary:
; This file executes all source code blocoks in config.org.

;;; Code:

;; Load config.org file
(require 'org)
(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

;;; init.el ends here
