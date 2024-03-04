((elpaca :source
   "lockfile" :date (26085 45707 647691 0) :recipe
   (:source nil :protocol https :inherit t :depth 1 :repo
            "https://github.com/progfolio/elpaca.git" :ref
            "3cadcad34708b846e70ae05ccbe486114d9b26a5" :files
            (:defaults "elpaca-test.el" (:exclude "extensions"))
            :build (:not elpaca--activate-package) :package "elpaca"))
 (elpaca-use-package :source "lockfile" :date (26085 45707 642447 0)
                     :recipe
                     (:package "elpaca-use-package" :repo
                               "https://github.com/progfolio/elpaca.git"
                               :files
                               ("extensions/elpaca-use-package.el")
                               :main
                               "extensions/elpaca-use-package.el"
                               :build (:not elpaca--compile-info)
                               :source "Elpaca extensions" :protocol
                               https :inherit t :depth 1 :ref
                               "3cadcad34708b846e70ae05ccbe486114d9b26a5"))
 (org :source "lockfile" :date (26085 45707 637174 0) :recipe
      (:package "org" :local-repo "org" :repo
                "https://git.savannah.gnu.org/git/emacs/org-mode.git"
                :pre-build
                (progn
                  (require 'elpaca-menu-org) (elpaca-menu-org--build))
                :autoloads "org-loaddefs.el" :build
                (:not elpaca--generate-autoloads-async) :files
                (:defaults ("etc/styles/" "etc/styles/*" "doc/*.texi"))
                :source "Org" :protocol https :inherit t :depth 1 :ref
                "902dacb9cad762ef42ebdd004d311f49c77be6c3"))
 (nerd-icons :source "lockfile" :date (26085 45707 631754 0) :recipe
             (:package "nerd-icons" :repo
                       "rainstormstudio/nerd-icons.el" :fetcher github
                       :files (:defaults "data") :source "MELPA"
                       :protocol https :inherit t :depth 1 :ref
                       "c6a4acf19454b415cba1c43daf4bfca8fccdd9ba"))
 (snazzy-theme :source "lockfile" :date (26085 45707 626423 0) :recipe
               (:package "snazzy-theme" :repo
                         "weijiangan/emacs-snazzy" :fetcher github
                         :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :protocol https :inherit t
                         :depth 1 :ref
                         "57a1763b49b4a776084c16bc70c219246fa5b412"))
 (base16-theme :source "lockfile" :date (26085 45707 621104 0) :recipe
               (:package "base16-theme" :repo
                         "tinted-theming/base16-emacs" :fetcher github
                         :files (:defaults "build/*.el") :source
                         "MELPA" :protocol https :inherit t :depth 1
                         :ref
                         "c24d84b6c4794d1fc92429b6c70009434a137fe4"))
 (general :source "lockfile" :date (26085 45707 615855 0) :recipe
          (:package "general" :fetcher github :repo
                    "noctuid/general.el" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "ced143c30de8e20f5a3761a465e684a1dc48471e"))
 (hydra :source "lockfile" :date (26085 45707 610383 0) :recipe
        (:package "hydra" :repo "abo-abo/hydra" :fetcher github :files
                  (:defaults (:exclude "lv.el")) :source "MELPA"
                  :protocol https :inherit t :depth 1 :ref
                  "317e1de33086637579a7aeb60f77ed0405bf359b"))
 (use-package-hydra :source "lockfile" :date (26085 45707 605120 0)
                    :recipe
                    (:package "use-package-hydra" :repo
                              "to1ne/use-package-hydra" :fetcher
                              gitlab :files
                              ("*.el" "*.el.in" "dir" "*.info"
                               "*.texi" "*.texinfo" "doc/dir"
                               "doc/*.info" "doc/*.texi"
                               "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el"
                                         "tests.el" "*-test.el"
                                         "*-tests.el" "LICENSE"
                                         "README*" "*-pkg.el"))
                              :source "MELPA" :protocol https :inherit
                              t :depth 1 :ref
                              "8cd55a1128fbdf6327bb38a199d206225896d146"))
 (lv :source "lockfile" :date (26085 45707 599816 0) :recipe
     (:package "lv" :repo "abo-abo/hydra" :fetcher github :files
               ("lv.el") :source "MELPA" :protocol https :inherit t
               :depth 1 :ref
               "317e1de33086637579a7aeb60f77ed0405bf359b"))
 (evil :source "lockfile" :date (26085 45707 594524 0) :recipe
       (:package "evil" :repo "emacs-evil/evil" :fetcher github :files
                 (:defaults "doc/build/texinfo/evil.texi"
                            (:exclude "evil-test-helpers.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "a7ffa73bbdc523c0e473d79c0ded7c6457bcb65c"))
 (undo-tree :source "lockfile" :date (26085 45707 589168 0) :recipe
            (:package "undo-tree" :repo
                      "https://gitlab.com/tsc25/undo-tree" :local-repo
                      "undo-tree" :files ("*" (:exclude ".git"))
                      :source "GNU-devel ELPA" :protocol https
                      :inherit t :depth 1 :ref
                      "2bf5e230f1d11df7bbd9d8c722749e34482bc458"))
 (evil-org :source "lockfile" :date (26085 45707 583841 0) :recipe
           (:package "evil-org" :fetcher github :repo
                     "Somelauw/evil-org-mode" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "b1f309726b1326e1a103742524ec331789f2bf94"))
 (evil-collection :source "lockfile" :date (26085 45707 578531 0)
                  :recipe
                  (:package "evil-collection" :fetcher github :repo
                            "emacs-evil/evil-collection" :files
                            (:defaults "modes") :source "MELPA"
                            :protocol https :inherit t :depth 1 :ref
                            "54e1eb02d918fb38b4e71c87ea9a8fe8f499dc5f"))
 (evil-surround :source "lockfile" :date (26085 45707 573169 0)
                :recipe
                (:package "evil-surround" :repo
                          "emacs-evil/evil-surround" :fetcher github
                          :old-names (surround) :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth 1 :ref
                          "c7116cdc774b1e259eaf3e9e7a318a6c99c2da17"))
 (evil-commentary :source "lockfile" :date (26085 45707 567807 0)
                  :recipe
                  (:package "evil-commentary" :repo
                            "linktohack/evil-commentary" :fetcher
                            github :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info"
                             "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el"
                                       "tests.el" "*-test.el"
                                       "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :source "MELPA" :protocol https :inherit t
                            :depth 1 :ref
                            "c5945f28ce47644c828aac1f5f6ec335478d17fb"))
 (evil-goggles :source "lockfile" :date (26085 45707 562426 0) :recipe
               (:package "evil-goggles" :repo "edkolev/evil-goggles"
                         :fetcher github :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :protocol https :inherit t
                         :depth 1 :ref
                         "34ca276a85f615d2b45e714c9f8b5875bcb676f3"))
 (evil-owl :source "lockfile" :date (26085 45707 557039 0) :recipe
           (:package "evil-owl" :repo "mamapanda/evil-owl" :fetcher
                     github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "a41a6d28e26052b25f3d21da37ccf1d8fde1e6aa"))
 (evil-anzu :source "lockfile" :date (26085 45707 551668 0) :recipe
            (:package "evil-anzu" :fetcher github :repo
                      "emacsorphanage/evil-anzu" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "d1e98ee6976437164627542909a25c6946497899"))
 (vertico :source "lockfile" :date (26085 45707 546355 0) :recipe
          (:package "vertico" :repo "minad/vertico" :files
                    (:defaults "extensions/*") :fetcher github :source
                    "MELPA" :protocol https :inherit t :depth 1
                    :includes
                    (vertico-buffer vertico-directory vertico-flat
                                    vertico-indexed vertico-mouse
                                    vertico-quick vertico-repeat
                                    vertico-reverse)
                    :ref "68cbd47589446e9674921bae0b98ff8fbe28be23"))
 (orderless :source "lockfile" :date (26085 45707 540992 0) :recipe
            (:package "orderless" :repo "oantolin/orderless" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "7545dc7c07d1465e9661209ca5930ae3f1a870a3"))
 (consult :source "lockfile" :date (26085 45707 535642 0) :recipe
          (:package "consult" :repo "minad/consult" :fetcher github
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "888b4525361c4050f35f4766fe7651c97d3274ce"))
 (consult-ls-git :source "lockfile" :date (26085 45707 530346 0)
                 :recipe
                 (:package "consult-ls-git" :repo "rcj/consult-ls-git"
                           :fetcher github :files
                           ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                            "*.texinfo" "doc/dir" "doc/*.info"
                            "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                            (:exclude ".dir-locals.el" "test.el"
                                      "tests.el" "*-test.el"
                                      "*-tests.el" "LICENSE" "README*"
                                      "*-pkg.el"))
                           :source "MELPA" :protocol https :inherit t
                           :depth 1 :ref
                           "3ccd9d80da73a05ef2a74616ffdc469860f74c21"))
 (marginalia :source "lockfile" :date (26085 45707 525035 0) :recipe
             (:package "marginalia" :repo "minad/marginalia" :fetcher
                       github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "ea356ebb1ddb8d6da78574b517155475cf52d46f"))
 (embark :source "lockfile" :date (26085 45707 519698 0) :recipe
         (:package "embark" :repo "oantolin/embark" :fetcher github
                   :files ("embark.el" "embark-org.el" "embark.texi")
                   :source "MELPA" :protocol https :inherit t :depth 1
                   :ref "c93abadc8220c0caa6fea805f7a736c346d47e7e"))
 (embark-consult :source "lockfile" :date (26085 45707 514351 0)
                 :recipe
                 (:package "embark-consult" :repo "oantolin/embark"
                           :fetcher github :files
                           ("embark-consult.el") :source "MELPA"
                           :protocol https :inherit t :depth 1 :ref
                           "c93abadc8220c0caa6fea805f7a736c346d47e7e"))
 (all-the-icons-completion :source "lockfile" :date
                           (26085 45707 509013 0) :recipe
                           (:package "all-the-icons-completion" :repo
                                     "iyefrat/all-the-icons-completion"
                                     :fetcher github :files
                                     ("*.el" "*.el.in" "dir" "*.info"
                                      "*.texi" "*.texinfo" "doc/dir"
                                      "doc/*.info" "doc/*.texi"
                                      "doc/*.texinfo" "lisp/*.el"
                                      (:exclude ".dir-locals.el"
                                                "test.el" "tests.el"
                                                "*-test.el"
                                                "*-tests.el" "LICENSE"
                                                "README*" "*-pkg.el"))
                                     :source "MELPA" :protocol https
                                     :inherit t :depth 1 :ref
                                     "4c8bcad8033f5d0868ce82ea3807c6cd46c4a198"))
 (corfu :source "lockfile" :date (26085 45707 503680 0) :recipe
        (:package "corfu" :repo "minad/corfu" :files
                  (:defaults "extensions/corfu-*.el") :fetcher github
                  :source "MELPA" :protocol https :inherit t :depth 1
                  :ref "d82bc357c9baccfaaca288526d128c895af61274"))
 (flycheck :source "lockfile" :date (26085 45707 498260 0) :recipe
           (:package "flycheck" :repo "flycheck/flycheck" :fetcher
                     github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "02148c6ce7edb0fd0986460db327cc9463939747"))
 (flycheck-eglot :source "lockfile" :date (26085 45707 492796 0)
                 :recipe
                 (:package "flycheck-eglot" :fetcher github :repo
                           "intramurz/flycheck-eglot" :files
                           ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                            "*.texinfo" "doc/dir" "doc/*.info"
                            "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                            (:exclude ".dir-locals.el" "test.el"
                                      "tests.el" "*-test.el"
                                      "*-tests.el" "LICENSE" "README*"
                                      "*-pkg.el"))
                           :source "MELPA" :protocol https :inherit t
                           :depth 1 :ref
                           "114e1315aaf0dc3196da67da426bbe2b46384fe2"))
 (rainbow-delimiters :source "lockfile" :date (26085 45707 487393 0)
                     :recipe
                     (:package "rainbow-delimiters" :fetcher github
                               :repo "Fanael/rainbow-delimiters"
                               :files
                               ("*.el" "*.el.in" "dir" "*.info"
                                "*.texi" "*.texinfo" "doc/dir"
                                "doc/*.info" "doc/*.texi"
                                "doc/*.texinfo" "lisp/*.el"
                                (:exclude ".dir-locals.el" "test.el"
                                          "tests.el" "*-test.el"
                                          "*-tests.el" "LICENSE"
                                          "README*" "*-pkg.el"))
                               :source "MELPA" :protocol https
                               :inherit t :depth 1 :ref
                               "f40ece58df8b2f0fb6c8576b527755a552a5e763"))
 (rainbow-mode :source "lockfile" :date (26085 45707 482045 0) :recipe
               (:package "rainbow-mode" :repo
                         "git://git.sv.gnu.org/emacs/elpa" :local-repo
                         "rainbow-mode" :branch
                         "externals/rainbow-mode" :files
                         ("*" (:exclude ".git")) :source
                         "GNU-devel ELPA" :protocol https :inherit t
                         :depth 1 :ref
                         "f7db3b5919f70420a91eb199f8663468de3033f3"))
 (doom-modeline :source "lockfile" :date (26085 45707 476665 0)
                :recipe
                (:package "doom-modeline" :repo
                          "seagle0128/doom-modeline" :fetcher github
                          :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth 1 :ref
                          "f67f627574e02b4a474b2dc5e8a68dbdf6cfd913"))
 (minions :source "lockfile" :date (26085 45707 471302 0) :recipe
          (:package "minions" :fetcher github :repo "tarsius/minions"
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "07caa8c30b12c35f3fe563a036f9823c4a6a5f01"))
 (eyebrowse :source "lockfile" :date (26085 45707 465905 0) :recipe
            (:package "eyebrowse" :fetcher git :url
                      "https://depp.brause.cc/eyebrowse.git" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "f7e129b84183367f54f0d0d3c9db8540f754bd8d"))
 (dashboard :source "lockfile" :date (26085 45707 460533 0) :recipe
            (:package "dashboard" :fetcher github :repo
                      "emacs-dashboard/emacs-dashboard" :files
                      (:defaults "banners") :source "MELPA" :protocol
                      https :inherit t :depth 1 :ref
                      "ed1a6a452e26e2042faec2e073f1441d73a69447"))
 (goto-line-preview :source "lockfile" :date (26085 45707 455170 0)
                    :recipe
                    (:package "goto-line-preview" :repo
                              "emacs-vs/goto-line-preview" :fetcher
                              github :files
                              ("*.el" "*.el.in" "dir" "*.info"
                               "*.texi" "*.texinfo" "doc/dir"
                               "doc/*.info" "doc/*.texi"
                               "doc/*.texinfo" "lisp/*.el"
                               (:exclude ".dir-locals.el" "test.el"
                                         "tests.el" "*-test.el"
                                         "*-tests.el" "LICENSE"
                                         "README*" "*-pkg.el"))
                              :source "MELPA" :protocol https :inherit
                              t :depth 1 :ref
                              "4e712da4e5e90b02440bd1f435a89ad02ff5a894"))
 (alert :source "lockfile" :date (26085 45707 449780 0) :recipe
        (:package "alert" :fetcher github :repo "jwiegley/alert"
                  :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                   "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                   "doc/*.texinfo" "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el"
                             "*-test.el" "*-tests.el" "LICENSE"
                             "README*" "*-pkg.el"))
                  :source "MELPA" :protocol https :inherit t :depth 1
                  :ref "7774b5fd2feb98d4910ff06435d08c19fba93e26"))
 (treemacs :source "lockfile" :date (26085 45707 444485 0) :recipe
           (:package "treemacs" :fetcher github :repo
                     "Alexander-Miller/treemacs" :files
                     (:defaults "Changelog.org" "icons"
                                "src/elisp/treemacs*.el"
                                "src/scripts/treemacs*.py"
                                (:exclude "src/extra/*"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "8c6df39f01a4d47fda2cc943645fa067f771b748"))
 (treemacs-evil :source "lockfile" :date (26085 45707 439102 0)
                :recipe
                (:package "treemacs-evil" :fetcher github :repo
                          "Alexander-Miller/treemacs" :files
                          ("src/extra/treemacs-evil.el") :source
                          "MELPA" :protocol https :inherit t :depth 1
                          :ref
                          "8c6df39f01a4d47fda2cc943645fa067f771b748"))
 (treemacs-projectile :source "lockfile" :date (26085 45707 433816 0)
                      :recipe
                      (:package "treemacs-projectile" :fetcher github
                                :repo "Alexander-Miller/treemacs"
                                :files
                                ("src/extra/treemacs-projectile.el")
                                :source "MELPA" :protocol https
                                :inherit t :depth 1 :ref
                                "8c6df39f01a4d47fda2cc943645fa067f771b748"))
 (treemacs-icons-dired :source "lockfile" :date (26085 45707 428469 0)
                       :recipe
                       (:package "treemacs-icons-dired" :fetcher
                                 github :repo
                                 "Alexander-Miller/treemacs" :files
                                 ("src/extra/treemacs-icons-dired.el")
                                 :source "MELPA" :protocol https
                                 :inherit t :depth 1 :ref
                                 "8c6df39f01a4d47fda2cc943645fa067f771b748"))
 (treemacs-magit :source "lockfile" :date (26085 45707 423143 0)
                 :recipe
                 (:package "treemacs-magit" :fetcher github :repo
                           "Alexander-Miller/treemacs" :files
                           ("src/extra/treemacs-magit.el") :source
                           "MELPA" :protocol https :inherit t :depth 1
                           :ref
                           "8c6df39f01a4d47fda2cc943645fa067f771b748"))
 (treemacs-all-the-icons :source "lockfile" :date
                         (26085 45707 417820 0) :recipe
                         (:package "treemacs-all-the-icons" :fetcher
                                   github :repo
                                   "Alexander-Miller/treemacs" :files
                                   ("src/extra/treemacs-all-the-icons.el")
                                   :source "MELPA" :protocol https
                                   :inherit t :depth 1 :ref
                                   "8c6df39f01a4d47fda2cc943645fa067f771b748"))
 (smex :source "lockfile" :date (26085 45707 412497 0) :recipe
       (:package "smex" :repo "nonsequitur/smex" :fetcher github
                 :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "55aaebe3d793c2c990b39a302eb26c184281c42c"))
 (eldoc-box :source "lockfile" :date (26085 45707 407068 0) :recipe
            (:package "eldoc-box" :repo "casouri/eldoc-box" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "c36f31074b09930e8425963f39d5508da6d2c32d"))
 (magit :source "lockfile" :date (26085 45707 401680 0) :recipe
        (:package "magit" :fetcher github :repo "magit/magit" :files
                  ("lisp/magit*.el" "lisp/git-rebase.el"
                   "docs/magit.texi" "docs/AUTHORS.md" "LICENSE"
                   "Documentation/magit.texi"
                   "Documentation/AUTHORS.md"
                   (:exclude "lisp/magit-libgit.el"
                             "lisp/magit-libgit-pkg.el"
                             "lisp/magit-section.el"
                             "lisp/magit-section-pkg.el"))
                  :source "MELPA" :protocol https :inherit t :depth 1
                  :ref "65ecb9c5fc7586a1c527b60d180a97ea230da99f"))
 (git-link :source "lockfile" :date (26085 45707 396381 0) :recipe
           (:package "git-link" :fetcher github :repo "sshaw/git-link"
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "aded95807f277f30e1607313bdf9ac9a016a2305"))
 (git-timemachine :source "lockfile" :date (26085 45707 390887 0)
                  :recipe
                  (:package "git-timemachine" :fetcher codeberg :repo
                            "pidu/git-timemachine" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info"
                             "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el"
                                       "tests.el" "*-test.el"
                                       "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :source "MELPA" :protocol https :inherit t
                            :depth 1 :ref
                            "69474bfc653bb076f94d97d22903e2299a3d8a8b"))
 (git-modes :source "lockfile" :date (26085 45707 385551 0) :recipe
            (:package "git-modes" :fetcher github :repo
                      "magit/git-modes" :old-names
                      (gitattributes-mode gitconfig-mode
                                          gitignore-mode)
                      :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "3cc94974c09c43462dfbfbe20396a414352dbb92"))
 (projectile :source "lockfile" :date (26085 45707 380055 0) :recipe
             (:package "projectile" :fetcher github :repo
                       "bbatsov/projectile" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "0163b335a18af0f077a474d4dc6b36e22b5e3274"))
 (vterm :source "lockfile" :date (26085 45707 374646 0) :recipe
        (:package "vterm" :fetcher github :repo
                  "akermu/emacs-libvterm" :files
                  ("CMakeLists.txt" "elisp.c" "elisp.h"
                   "emacs-module.h" "etc" "utf8.c" "utf8.h" "vterm.el"
                   "vterm-module.c" "vterm-module.h")
                  :source "MELPA" :protocol https :inherit t :depth 1
                  :ref "c3a3a23a5eace137947524c93644204bf6b56cff"))
 (multi-vterm :source "lockfile" :date (26085 45707 369274 0) :recipe
              (:package "multi-vterm" :fetcher github :repo
                        "suonlight/multi-vterm" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "36746d85870dac5aaee6b9af4aa1c3c0ef21a905"))
 (docker :source "lockfile" :date (26085 45707 363926 0) :recipe
         (:package "docker" :fetcher github :repo "Silex/docker.el"
                   :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                    "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                    "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE"
                              "README*" "*-pkg.el"))
                   :source "MELPA" :protocol https :inherit t :depth 1
                   :ref "d5255a65b7240d0038cc417f301b43df05a27922"))
 (kubernetes :source "lockfile" :date (26085 45707 358367 0) :recipe
             (:package "kubernetes" :repo
                       "kubernetes-el/kubernetes-el" :fetcher github
                       :files
                       (:defaults (:exclude "kubernetes-evil.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "423c216fdef06d32dde835bb91daff353f41b72e"))
 (editorconfig :source "lockfile" :date (26085 45707 352902 0) :recipe
               (:package "editorconfig" :fetcher github :repo
                         "editorconfig/editorconfig-emacs" :old-names
                         (editorconfig-core editorconfig-fnmatch)
                         :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :protocol https :inherit t
                         :depth 1 :ref
                         "4b81a5992858cbf03bcd7ed6ef31e4be0b55a7c1"))
 (origami :source "lockfile" :date (26085 45707 347492 0) :recipe
          (:package "origami" :fetcher github :repo
                    "gregsexton/origami.el" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "e558710a975e8511b9386edc81cd6bdd0a5bda74"))
 (copilot :source "lockfile" :date (26085 45707 342139 0) :recipe
          (:source nil :protocol https :inherit t :depth 1 :host
                   github :repo "zerolfx/copilot.el" :files
                   ("dist" "*.el") :package "copilot" :ref
                   "fd4d7e8c1e95aa9d3967b19905c9b8c3e03f6a5c"))
 (treesit-auto :source "lockfile" :date (26085 45707 336797 0) :recipe
               (:package "treesit-auto" :fetcher github :repo
                         "renzmann/treesit-auto" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :protocol https :inherit t
                         :depth 1 :ref
                         "299dd88c9e5f1ff91a8f1989ad1e97e86c220020"))
 (dotenv-mode :source "lockfile" :date (26085 45707 331435 0) :recipe
              (:package "dotenv-mode" :repo
                        "preetpalS/emacs-dotenv-mode" :fetcher github
                        :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "e3701bf739bde44f6484eb7753deadaf691b73fb"))
 (format-all :source "lockfile" :date (26085 45707 326139 0) :recipe
             (:package "format-all" :fetcher github :repo
                       "lassik/emacs-format-all-the-code" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "1f4a69811b4b6a00c74fa2566ef731b17b9a2ed1"))
 (org-bullets :source "lockfile" :date (26085 45707 320745 0) :recipe
              (:package "org-bullets" :fetcher github :repo
                        "integral-dw/org-bullets" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "767f55feb58b840a5a04eabfc3fbbf0d257c4792"))
 (htmlize :source "lockfile" :date (26085 45707 315310 0) :recipe
          (:package "htmlize" :fetcher github :repo
                    "hniksic/emacs-htmlize" :version-regexp
                    "release/\\(.*\\)" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "09d43dfa44899f194095bb3500a45ec5b34d59c6"))
 (org-drill :source "lockfile" :date (26085 45707 309886 0) :recipe
            (:package "org-drill" :fetcher gitlab :repo
                      "phillord/org-drill" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "bf8fe812d44a3ce3e84361fb39b8ef28ca10fd0c"))
 (anki-editor :source "lockfile" :date (26085 45707 304503 0) :recipe
              (:package "anki-editor" :fetcher github :repo
                        "louietan/anki-editor" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "546774a453ef4617b1bcb0d1626e415c67cc88df"))
 (markdown-mode :source "lockfile" :date (26085 45707 299090 0)
                :recipe
                (:package "markdown-mode" :fetcher github :repo
                          "jrblevin/markdown-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth 1 :ref
                          "e096bb97a91fcd4dc2b46d8b6e093194b03b7364"))
 (jest :source "lockfile" :date (26085 45707 293652 0) :recipe
       (:package "jest" :repo "edmundmiller/emacs-jest" :fetcher
                 github :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "c8145635c54bd7df9711000e889753d267afcdc4"))
 (auctex :source "lockfile" :date (26085 45707 288306 0) :recipe
         (:package "auctex" :repo
                   "https://git.savannah.gnu.org/git/auctex.git"
                   :local-repo "auctex" :files
                   ("*.el" "doc/*.info*" "etc" "images" "latex"
                    "style")
                   :source "GNU-devel ELPA" :protocol https :inherit t
                   :depth 1 :pre-build
                   (("./autogen.sh")
                    ("./configure" "--without-texmf-dir"
                     "--with-packagelispdir=./"
                     "--with-packagedatadir=./")
                    ("make"))
                   :build (:not elpaca--compile-info) :version
                   (lambda (_) (require 'tex-site) AUCTeX-version)
                   :ref "0f8901dc5dff4687def1250983ff1a66d2322db5"))
 (json-mode :source "lockfile" :date (26085 45707 282923 0) :recipe
            (:package "json-mode" :fetcher github :repo
                      "json-emacs/json-mode" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "bfd1557aaa20b7518b808fdc869f094b52205234"))
 (lua-mode :source "lockfile" :date (26085 45707 277556 0) :recipe
           (:package "lua-mode" :repo "immerrr/lua-mode" :fetcher
                     github :files
                     (:defaults (:exclude "init-tryout.el")) :source
                     "MELPA" :protocol https :inherit t :depth 1 :ref
                     "d074e4134b1beae9ed4c9b512af741ca0d852ba3"))
 (haskell-mode :source "lockfile" :date (26085 45707 272155 0) :recipe
               (:package "haskell-mode" :repo "haskell/haskell-mode"
                         :fetcher github :files
                         (:defaults "NEWS" "logo.svg") :source "MELPA"
                         :protocol https :inherit t :depth 1 :ref
                         "43b4036bf02b02de75643a1a2a31e28efac1c50b"))
 (pdf-tools :source "lockfile" :date (26085 45707 266723 0) :recipe
            (:package "pdf-tools" :fetcher github :repo
                      "vedang/pdf-tools" :files
                      (:defaults "README" ("build" "Makefile")
                                 ("build" "server"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "c69e7656a4678fe25afbd29f3503dd19ee7f9896"))
 (yaml-mode :source "lockfile" :date (26085 45707 261305 0) :recipe
            (:package "yaml-mode" :repo "yoshiki/yaml-mode" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "5b58248ab255dff6cfa4c4057a191bc4446ee5b6"))
 (graphql-mode :source "lockfile" :date (26085 45707 255969 0) :recipe
               (:package "graphql-mode" :repo "davazp/graphql-mode"
                         :fetcher github :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :protocol https :inherit t
                         :depth 1 :ref
                         "2183895ea7932359586c4bb99e8562c4aef3aaf7"))
 (cargo-transient :source "lockfile" :date (26085 45707 250647 0)
                  :recipe
                  (:package "cargo-transient" :repo
                            "peterstuart/cargo-transient" :fetcher
                            github :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info"
                             "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             (:exclude ".dir-locals.el" "test.el"
                                       "tests.el" "*-test.el"
                                       "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :source "MELPA" :protocol https :inherit t
                            :depth 1 :ref
                            "34d63dfb99ee9a6068dadd6390763c9735c17a85"))
 (protobuf-mode :source "lockfile" :date (26085 45707 245347 0)
                :recipe
                (:package "protobuf-mode" :fetcher github :repo
                          "protocolbuffers/protobuf" :files
                          ("editors/protobuf-mode.el") :source "MELPA"
                          :protocol https :inherit t :depth 1 :ref
                          "396e26b4756f7fe8bb4e7bc4e338ccc620283998"))
 (vimrc-mode :source "lockfile" :date (26085 45707 239967 0) :recipe
             (:package "vimrc-mode" :fetcher github :repo
                       "mcandre/vimrc-mode" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "13bc150a870d5d4a95f1111e4740e2b22813c30e"))
 (swift-mode :source "lockfile" :date (26085 45707 234510 0) :recipe
             (:package "swift-mode" :repo "swift-emacs/swift-mode"
                       :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "26ca22a913cd6626fa6d9b187ffe34a82c075202"))
 (esup :source "lockfile" :date (26085 45707 229084 0) :recipe
       (:package "esup" :fetcher github :repo "jschaf/esup" :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "4b49c8d599d4cc0fbf994e9e54a9c78e5ab62a5f"))
 (persistent-scratch :source "lockfile" :date (26085 45707 223795 0)
                     :recipe
                     (:package "persistent-scratch" :fetcher github
                               :repo "Fanael/persistent-scratch"
                               :files
                               ("*.el" "*.el.in" "dir" "*.info"
                                "*.texi" "*.texinfo" "doc/dir"
                                "doc/*.info" "doc/*.texi"
                                "doc/*.texinfo" "lisp/*.el"
                                (:exclude ".dir-locals.el" "test.el"
                                          "tests.el" "*-test.el"
                                          "*-tests.el" "LICENSE"
                                          "README*" "*-pkg.el"))
                               :source "MELPA" :protocol https
                               :inherit t :depth 1 :ref
                               "5ff41262f158d3eb966826314516f23e0cb86c04"))
 (scratch :source "lockfile" :date (26085 45707 218350 0) :recipe
          (:package "scratch" :fetcher codeberg :repo
                    "emacs-weirdware/scratch" :files ("scratch.el")
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "f000648c9663833a76a8de9b1e78c99a9d698e48"))
 (exec-path-from-shell :source "lockfile" :date (26085 45707 212860 0)
                       :recipe
                       (:package "exec-path-from-shell" :fetcher
                                 github :repo
                                 "purcell/exec-path-from-shell" :files
                                 ("*.el" "*.el.in" "dir" "*.info"
                                  "*.texi" "*.texinfo" "doc/dir"
                                  "doc/*.info" "doc/*.texi"
                                  "doc/*.texinfo" "lisp/*.el"
                                  (:exclude ".dir-locals.el" "test.el"
                                            "tests.el" "*-test.el"
                                            "*-tests.el" "LICENSE"
                                            "README*" "*-pkg.el"))
                                 :source "MELPA" :protocol https
                                 :inherit t :depth 1 :ref
                                 "d95677ad608c214647b87bc20df1642763e3b400"))
 (which-key :source "lockfile" :date (26085 45707 207287 0) :recipe
            (:package "which-key" :repo "justbur/emacs-which-key"
                      :fetcher github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "0f5733b3ff72d1612220b0a8cab618992baf6df6"))
 (lorem-ipsum :source "lockfile" :date (26085 45707 201804 0) :recipe
              (:package "lorem-ipsum" :fetcher github :repo
                        "jschaf/emacs-lorem-ipsum" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "4e87a899868e908a7a9e1812831d76c8d072f885"))
 (restclient :source "lockfile" :date (26085 45707 196411 0) :recipe
             (:package "restclient" :repo "pashky/restclient.el"
                       :fetcher github :files ("restclient.el")
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "e2a2b13482d72634f8e49864cd9e5c907a5fe137"))
 (wgrep :source "lockfile" :date (26085 45707 190974 0) :recipe
        (:package "wgrep" :fetcher github :repo
                  "mhayashi1120/Emacs-wgrep" :files ("wgrep.el")
                  :source "MELPA" :protocol https :inherit t :depth 1
                  :ref "208b9d01cfffa71037527e3a324684b3ce45ddc4"))
 (gptel :source "lockfile" :date (26085 45707 185524 0) :recipe
        (:package "gptel" :repo "karthink/gptel" :fetcher github
                  :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                   "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                   "doc/*.texinfo" "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el"
                             "*-test.el" "*-tests.el" "LICENSE"
                             "README*" "*-pkg.el"))
                  :source "MELPA" :protocol https :inherit t :depth 1
                  :ref "87c190076e9af03cbff9d8c93d4c63d397a612cc"))
 (fireplace :source "lockfile" :date (26085 45707 180193 0) :recipe
            (:package "fireplace" :fetcher github :repo
                      "johanvts/emacs-fireplace" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :protocol https :inherit t
                      :depth 1 :ref
                      "f6c23e259349922aae25cf2898ba815a7d8f2527"))
 (wttrin :source "lockfile" :date (26085 45707 174622 0) :recipe
         (:package "wttrin" :fetcher github :repo
                   "bcbcarl/emacs-wttrin" :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                    "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                    "doc/*.texinfo" "lisp/*.el"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE"
                              "README*" "*-pkg.el"))
                   :source "MELPA" :protocol https :inherit t :depth 1
                   :ref "df5427ce2a5ad4dab652dbb1c4a1834d7ddc2abc"))
 (xkcd :source "lockfile" :date (26085 45707 169240 0) :recipe
       (:package "xkcd" :fetcher github :repo "vibhavp/emacs-xkcd"
                 :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "80011da2e7def8f65233d4e0d790ca60d287081d"))
 (emojify :source "lockfile" :date (26085 45707 163761 0) :recipe
          (:package "emojify" :fetcher github :repo
                    "iqbalansari/emacs-emojify" :files
                    (:defaults "data" "images") :source "MELPA"
                    :protocol https :inherit t :depth 1 :ref
                    "1b726412f19896abf5e4857d4c32220e33400b55"))
 (goto-chg :source "lockfile" :date (26085 45707 158267 0) :recipe
           (:package "goto-chg" :repo "emacs-evil/goto-chg" :fetcher
                     github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "278cd3e6d5107693aa2bb33189ca503f22f227d0"))
 (queue :source "lockfile" :date (26085 45707 152697 0) :recipe
        (:package "queue" :repo "git://git.sv.gnu.org/emacs/elpa"
                  :local-repo "queue" :branch "externals/queue" :files
                  ("*" (:exclude ".git")) :source "GNU-devel ELPA"
                  :protocol https :inherit t :depth 1 :ref
                  "f986fb68e75bdae951efb9e11a3012ab6bd408ee"))
 (annalist :source "lockfile" :date (26085 45707 147128 0) :recipe
           (:package "annalist" :fetcher github :repo
                     "noctuid/annalist.el" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "134fa3f0fb91a636a1c005c483516d4b64905a6d"))
 (anzu :source "lockfile" :date (26085 45707 141046 0) :recipe
       (:package "anzu" :fetcher github :repo "emacsorphanage/anzu"
                 :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "26fb50b429ee968eb944b0615dd0aed1dd66172c"))
 (all-the-icons :source "lockfile" :date (26085 45707 135620 0)
                :recipe
                (:package "all-the-icons" :repo
                          "domtronn/all-the-icons.el" :fetcher github
                          :files (:defaults "data") :source "MELPA"
                          :protocol https :inherit t :depth 1 :ref
                          "ee414384938ccf2ce93c77d717b85dc5538a257d"))
 (shrink-path :source "lockfile" :date (26085 45707 130257 0) :recipe
              (:package "shrink-path" :fetcher gitlab :repo
                        "bennya/shrink-path.el" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "c14882c8599aec79a6e8ef2d06454254bb3e1e41"))
 (s :source "lockfile" :date (26085 45707 124846 0) :recipe
    (:package "s" :fetcher github :repo "magnars/s.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
               "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
               "lisp/*.el"
               (:exclude ".dir-locals.el" "test.el" "tests.el"
                         "*-test.el" "*-tests.el" "LICENSE" "README*"
                         "*-pkg.el"))
              :source "MELPA" :protocol https :inherit t :depth 1 :ref
              "dda84d38fffdaf0c9b12837b504b402af910d01d"))
 (dash :source "lockfile" :date (26085 45707 119539 0) :recipe
       (:package "dash" :fetcher github :repo "magnars/dash.el" :files
                 ("dash.el" "dash.texi") :source "MELPA" :protocol
                 https :inherit t :depth 1 :ref
                 "5df7605da5a080df769d4f260034fb0e5e86a7a4"))
 (f :source "lockfile" :date (26085 45707 114205 0) :recipe
    (:package "f" :fetcher github :repo "rejeep/f.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
               "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
               "lisp/*.el"
               (:exclude ".dir-locals.el" "test.el" "tests.el"
                         "*-test.el" "*-tests.el" "LICENSE" "README*"
                         "*-pkg.el"))
              :source "MELPA" :protocol https :inherit t :depth 1 :ref
              "4f03d7bb724a9049b0ab9ef86127694756f99656"))
 (gntp :source "lockfile" :date (26085 45707 108780 0) :recipe
       (:package "gntp" :repo "tekai/gntp.el" :fetcher github :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "767571135e2c0985944017dc59b0be79af222ef5"))
 (log4e :source "lockfile" :date (26085 45707 103338 0) :recipe
        (:package "log4e" :repo "aki2o/log4e" :fetcher github :files
                  ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                   "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                   "doc/*.texinfo" "lisp/*.el"
                   (:exclude ".dir-locals.el" "test.el" "tests.el"
                             "*-test.el" "*-tests.el" "LICENSE"
                             "README*" "*-pkg.el"))
                  :source "MELPA" :protocol https :inherit t :depth 1
                  :ref "6d71462df9bf595d3861bfb328377346aceed422"))
 (ace-window :source "lockfile" :date (26085 45707 97859 0) :recipe
             (:package "ace-window" :repo "abo-abo/ace-window"
                       :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "77115afc1b0b9f633084cf7479c767988106c196"))
 (pfuture :source "lockfile" :date (26085 45707 92430 0) :recipe
          (:package "pfuture" :repo "Alexander-Miller/pfuture"
                    :fetcher github :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "19b53aebbc0f2da31de6326c495038901bffb73c"))
 (ht :source "lockfile" :date (26085 45707 86893 0) :recipe
     (:package "ht" :fetcher github :repo "Wilfred/ht.el" :files
               ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                "lisp/*.el"
                (:exclude ".dir-locals.el" "test.el" "tests.el"
                          "*-test.el" "*-tests.el" "LICENSE" "README*"
                          "*-pkg.el"))
               :source "MELPA" :protocol https :inherit t :depth 1
               :ref "1c49aad1c820c86f7ee35bf9fff8429502f60fef"))
 (cfrs :source "lockfile" :date (26085 45707 81473 0) :recipe
       (:package "cfrs" :repo "Alexander-Miller/cfrs" :fetcher github
                 :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :protocol https :inherit t :depth 1
                 :ref "f3a21f237b2a54e6b9f8a420a9da42b4f0a63121"))
 (posframe :source "lockfile" :date (26085 45707 76004 0) :recipe
           (:package "posframe" :fetcher github :repo
                     "tumashu/posframe" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "017deece88360c7297265680d78a0bb316470716"))
 (avy :source "lockfile" :date (26085 45707 70388 0) :recipe
      (:package "avy" :repo "abo-abo/avy" :fetcher github :files
                ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                 "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                 "lisp/*.el"
                 (:exclude ".dir-locals.el" "test.el" "tests.el"
                           "*-test.el" "*-tests.el" "LICENSE"
                           "README*" "*-pkg.el"))
                :source "MELPA" :protocol https :inherit t :depth 1
                :ref "be612110cb116a38b8603df367942e2bb3d9bdbe"))
 (git-commit :source "lockfile" :date (26085 45707 64736 0) :recipe
             (:package "git-commit" :fetcher github :repo
                       "magit/magit" :files
                       ("lisp/git-commit.el" "lisp/git-commit-pkg.el")
                       :old-names (git-commit-mode) :source "MELPA"
                       :protocol https :inherit t :depth 1 :ref
                       "65ecb9c5fc7586a1c527b60d180a97ea230da99f"))
 (magit-section :source "lockfile" :date (26085 45707 59044 0) :recipe
                (:package "magit-section" :fetcher github :repo
                          "magit/magit" :files
                          ("lisp/magit-section.el"
                           "lisp/magit-section-pkg.el"
                           "docs/magit-section.texi"
                           "Documentation/magit-section.texi")
                          :source "MELPA" :protocol https :inherit t
                          :depth 1 :ref
                          "65ecb9c5fc7586a1c527b60d180a97ea230da99f"))
 (with-editor :source "lockfile"
   :date (26085 45707 53170 0) :recipe
   (:package "with-editor" :fetcher github :repo "magit/with-editor"
             :files
             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
              "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
              "lisp/*.el"
              (:exclude ".dir-locals.el" "test.el" "tests.el"
                        "*-test.el" "*-tests.el" "LICENSE" "README*"
                        "*-pkg.el"))
             :source "MELPA" :protocol https :inherit t :depth 1 :ref
             "5db5f0eb2202f52d44f529fe00654c866bb64eb1"))
 (aio :source "lockfile" :date (26085 45707 47070 0) :recipe
      (:package "aio" :fetcher github :repo "skeeto/emacs-aio" :files
                ("aio.el" "README.md" "UNLICENSE") :source "MELPA"
                :protocol https :inherit t :depth 1 :ref
                "da93523e235529fa97d6f251319d9e1d6fc24a41"))
 (tablist :source "lockfile" :date (26085 45707 40466 0) :recipe
          (:package "tablist" :fetcher github :repo
                    "emacsorphanage/tablist" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :protocol https :inherit t :depth
                    1 :ref "fcd37147121fabdf003a70279cf86fbe08cfac6f"))
 (magit-popup :source "lockfile" :date (26085 45707 34081 0) :recipe
              (:package "magit-popup" :fetcher github :repo
                        "magit/magit-popup" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "d8585fa39f88956963d877b921322530257ba9f5"))
 (request :source "lockfile"
   :date (26085 45707 27598 0) :recipe
   (:package "request" :repo "tkf/emacs-request" :fetcher github
             :files ("request.el") :source "MELPA" :protocol https
             :inherit t :depth 1 :ref
             "01e338c335c07e4407239619e57361944a82cb8a"))
 (inheritenv :source "lockfile" :date (26085 45707 21042 0) :recipe
             (:package "inheritenv" :fetcher github :repo
                       "purcell/inheritenv" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :protocol https :inherit t
                       :depth 1 :ref
                       "bac62ca6324828623cf8ce5a3d6aee0fcb65d620"))
 (language-id :source "lockfile" :date (26085 45707 14220 0) :recipe
              (:package "language-id" :fetcher github :repo
                        "lassik/emacs-language-id" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "1ad782d7e448c1e8d8652861f01f4a58315826c3"))
 (persist :source "lockfile" :date (26085 45707 7095 0) :recipe
          (:package "persist" :repo "git://git.sv.gnu.org/emacs/elpa"
                    :local-repo "persist" :branch "externals/persist"
                    :files ("*" (:exclude ".git")) :source
                    "GNU-devel ELPA" :protocol https :inherit t :depth
                    1 :ref "f569906232c3812f5f5d934130edfefbc9165d7f"))
 (js2-mode :source "lockfile" :date (26085 45706 999470 0) :recipe
           (:package "js2-mode" :repo "mooz/js2-mode" :fetcher github
                     :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :protocol https :inherit t :depth
                     1 :ref "dfbc6dad4cc9a4ce7ddb54efd1546af4346a2dc3"))
 (json-snatcher :source "lockfile" :date (26085 45706 991183 0)
                :recipe
                (:package "json-snatcher" :fetcher github :repo
                          "Sterlingg/json-snatcher" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :protocol https :inherit t
                          :depth 1 :ref
                          "b28d1c0670636da6db508d03872d96ffddbc10f2"))
 (xterm-color :source "lockfile" :date (26085 45706 980527 0) :recipe
              (:package "xterm-color" :repo "atomontage/xterm-color"
                        :fetcher github :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :protocol https :inherit t
                        :depth 1 :ref
                        "2ad407c651e90fff2ea85d17bf074cee2c022912")))
