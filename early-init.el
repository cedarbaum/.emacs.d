;;; early-init.el --- Early Emacs configuration -*- lexical-binding: t; -*-

;;; Commentary:
;; This file runs before package and UI initialization.
;; Performance-critical settings belong here.

;;; Code:

;; Allow package.el to load packages at startup
(setq package-enable-at-startup t)

;; Defer garbage collection during startup (restored in config.org)
(setq gc-cons-threshold most-positive-fixnum)

;; Prevent stale bytecode from shadowing newer source files
(setq load-prefer-newer t)

;; Skip file-name-handler-alist regex matching during init.
;; Emacs checks this list on every file operation (TRAMP, compression, etc).
(defvar default-file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq file-name-handler-alist default-file-name-handler-alist)))

;; Disable UI elements before the frame is drawn (avoids redraw flash).
;; This is faster than calling (menu-bar-mode -1) etc. after init.
(push '(menu-bar-lines . 0)  default-frame-alist)
(push '(tool-bar-lines . 0)  default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Don't resize the frame at this early stage
(setq frame-inhibit-implied-resize t)

;;; early-init.el ends here
