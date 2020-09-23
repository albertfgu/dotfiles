(defconst org-roam-packages
  '(org-roam org-roam-bibtex))

(defun org-roam/init-org-roam ()
  (use-package org-roam
    :hook
    (after-init . org-roam-mode)
    :custom
    (org-roam-directory "~/Dropbox/org/")
    :init
    (progn
      (spacemacs/declare-prefix "ar" "org-roam")
      (spacemacs/set-leader-keys
       "arl" 'org-roam
       "ard" 'org-roam-dailies-today
       "arf" 'org-roam-find-file
       "arg" 'org-roam-graph)

      (spacemacs/declare-prefix-for-mode 'org-mode "mr" "org-roam")
      (spacemacs/set-leader-keys-for-major-mode 'org-mode
                                                "rl" 'org-roam
                                                "ry" 'org-roam-dailies-yesterday
                                                "rd" 'org-roam-dailies-today
                                                "rt" 'org-roam-dailies-tomorrow
                                                "rc" 'org-roam-dailies-date
                                                "rb" 'org-roam-switch-to-buffer
                                                "rf" 'org-roam-find-file
                                                "ri" 'org-roam-insert
                                                "rg" 'org-roam-graph)))
  :config
  ;; capture templates
  ;; the valid preformat keywords, used in the capture template for orb-edit-notes, are specified in orb-preformat-keywords
  (setq org-roam-capture-templates
           '(("d" "default" plain #'org-roam-capture--get-point
              "%?"
              ;; :file-name "%<%Y%m%d%H%M%S>-${slug}"
              :file-name "${slug}"
              :head "#+TITLE: ${title}\n#+CREATED:  %U\n#+MODIFIED: %U\n#+ROAM_ALIAS:\n#+ROAM_TAGS:\n- related ::"
              :unnarrowed t))
           )
  ;; (setq org-roam-dailies-capture-templates
  ;;       '(("d" "daily" plain (function org-roam-capture--get-point)
  ;;          ""
  ;;          :immediate-finish t
  ;;          :file-name "dailies/%<%Y-%m-%d>"
  ;;          :head "#+TITLE: %<%Y-%m-%d>\n#+MODIFIED: %U\n*TODO")))
  )

(defun org-roam/init-org-roam-bibtex ()
  (use-package org-roam-bibtex
    :after org-roam
    :hook (org-roam-mode . org-roam-bibtex-mode)
    :bind (:map org-mode-map
                (("C-c n a" . orb-note-actions))))
    :config
     (setq reftex-default-bibliography '("~/Dropbox/org/bibtex/ref.bib"))

     ;; see org-ref for use of these variables
     (setq org-ref-bibliography-notes "~/Dropbox/org/bibtex/org-ref-notes.org"
           org-ref-notes-directory "~/Dropbox/org/bibtex/helm-bibtex-notes"
           org-ref-default-bibliography '("~/Dropbox/org/bibtex/ref.bib")
           org-ref-pdf-directory "~/Dropbox/org/bibtex/pdf/")
     ;; helm-bibtex variables
     (setq bibtex-completion-bibliography "~/Dropbox/org/bibtex/ref.bib"
           bibtex-completion-library-path "~/Dropbox/org/bibtex/pdf"
           bibtex-completion-notes-path "~/Dropbox/org/bibtex/helm-bibtex-notes")

     ;; open pdf with system pdf viewer (works on mac)
     (setq bibtex-completion-pdf-open-function
           (lambda (fpath)
             (start-process "open" "*open*" "open" fpath)))

     (setq orb-templates
           '(("r" "ref" plain (function org-roam-capture--get-point) ""
              :file-name "${citekey}"
              :head "#+TITLE: ${title} (${author-abbrev} ${date}) \n#+ROAM_KEY: ${ref}\n#+CREATED:  %U\n#+MODIFIED: %U\n- Authors :: ${author}" ; <--
              :unnarrowed t)))
  )
;; the valid preformat keywords, used in the capture template for orb-edit-notes, are specified in orb-preformat-keywords

