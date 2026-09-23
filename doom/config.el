(setq doom-theme 'doom-tomorrow-night)
(setq doom-localleader-key ",")

(blink-cursor-mode -1)

(after! doom-themes
  (custom-set-faces!
   '(default                   :foreground "#c8c8c8" :background "#000000")
   '(cursor                    :background "#ffffff")
   '(fringe                    :background "#000000")
   '(region                    :background "#262626" :foreground "#ffffff")
   '(highlight                 :background "#262626" :foreground "#ffffff")
   '(hl-line                   :background "#0d0d0d")
   '(vertical-border           :foreground "#262626" :background "#000000")
   '(window-divider            :foreground "#262626")
   '(window-divider-first-pixel :foreground "#262626")
   '(window-divider-last-pixel  :foreground "#262626")
   '(line-number               :foreground "#5a5a5a" :background "#000000")
   '(line-number-current-line  :foreground "#ffffff" :background "#0d0d0d" :weight bold)
   '(header-line               :foreground "#c8c8c8" :background "#000000" :box nil)
   '(minibuffer-prompt         :foreground "#ffffff" :weight bold)
   '(link                      :foreground "#9a9a9a" :underline t)
   '(success                   :foreground "#9a9a9a")
   '(warning                   :foreground "#c8c8c8")
   '(error                     :foreground "#ffffff" :weight bold)
   '(shadow                    :foreground "#5a5a5a")
   '(match                     :foreground "#ffffff" :weight bold)
   '(isearch                   :background "#ffffff" :foreground "#000000" :weight bold)
   '(lazy-highlight            :background "#262626" :foreground "#9a9a9a")
   '(show-paren-match          :foreground "#ffffff" :weight bold :underline t)
   '(show-paren-mismatch       :background "#ffffff" :foreground "#000000")
   '(trailing-whitespace       :background "#1a1a1a")

   '(mode-line                 :foreground "#c8c8c8" :background "#0d0d0d" :box nil)
   '(mode-line-inactive        :foreground "#5a5a5a" :background "#000000" :box nil)
   '(mode-line-emphasis        :foreground "#ffffff")
   '(doom-modeline-bar         :background "#ffffff")
   '(doom-modeline-bar-inactive :background "#000000")
   '(doom-modeline-buffer-file :foreground "#ffffff" :weight bold)
   '(doom-modeline-buffer-modified :foreground "#ffffff" :weight bold)
   '(doom-modeline-buffer-path :foreground "#8a8a8a")
   '(doom-modeline-project-dir :foreground "#9a9a9a")
   '(doom-modeline-info        :foreground "#9a9a9a")
   '(doom-modeline-warning     :foreground "#c8c8c8")
   '(doom-modeline-urgent      :foreground "#ffffff")

   '(font-lock-keyword-face       :foreground "#ffffff")
   '(font-lock-builtin-face       :foreground "#ffffff")
   '(font-lock-preprocessor-face  :foreground "#b4b4b4")
   '(font-lock-function-name-face :foreground "#ffffff" :weight bold)
   '(font-lock-variable-name-face :foreground "#c8c8c8")
   '(font-lock-type-face          :foreground "#ffffff" :weight bold)
   '(font-lock-constant-face      :foreground "#ffffff")
   '(font-lock-string-face        :foreground "#9a9a9a")
   '(font-lock-doc-face           :foreground "#767676" :slant italic)
   '(font-lock-comment-face       :foreground "#8a8a8a" :slant italic)
   '(font-lock-comment-delimiter-face :foreground "#5a5a5a")
   '(font-lock-negation-char-face :foreground "#ffffff")
   '(font-lock-warning-face       :foreground "#ffffff" :weight bold)

   '(org-document-title  :foreground "#ffffff" :weight bold :height 1.4)
   '(org-document-info   :foreground "#8a8a8a")
   '(org-level-1         :foreground "#ffffff" :weight bold :height 1.15)
   '(org-level-2         :foreground "#ffffff" :weight bold)
   '(org-level-3         :foreground "#c8c8c8" :weight bold)
   '(org-level-4         :foreground "#c8c8c8")
   '(org-level-5         :foreground "#8a8a8a")
   '(org-level-6         :foreground "#8a8a8a")
   '(org-ellipsis        :foreground "#5a5a5a" :underline nil)
   '(org-hide            :foreground "#000000")
   '(org-link            :foreground "#9a9a9a" :underline t)
   '(org-footnote        :foreground "#767676")
   '(org-date            :foreground "#8a8a8a" :underline nil)
   '(org-special-keyword :foreground "#5a5a5a")
   '(org-drawer          :foreground "#5a5a5a")
   '(org-property-value  :foreground "#8a8a8a")
   '(org-tag             :foreground "#767676" :weight normal)
   '(org-code            :foreground "#9a9a9a" :background "#0d0d0d")
   '(org-verbatim        :foreground "#9a9a9a")
   '(org-block           :background "#0d0d0d" :foreground "#c8c8c8" :extend t)
   '(org-block-begin-line :foreground "#5a5a5a" :background "#000000" :extend t)
   '(org-block-end-line   :foreground "#5a5a5a" :background "#000000" :extend t)
   '(org-quote           :foreground "#8a8a8a" :slant italic :extend t)
   '(org-table           :foreground "#c8c8c8")
   '(org-checkbox        :foreground "#ffffff" :weight bold)
   '(org-list-dt         :foreground "#ffffff" :weight bold)

   '(org-todo            :foreground "#ffffff" :weight bold)
   '(org-done            :foreground "#767676" :weight normal)
   '(org-headline-done   :foreground "#5a5a5a")
   '(org-priority        :foreground "#b4b4b4")
   '(org-scheduled              :foreground "#c8c8c8")
   '(org-scheduled-today        :foreground "#ffffff" :weight bold)
   '(org-scheduled-previously   :foreground "#ffffff")
   '(org-upcoming-deadline      :foreground "#b4b4b4")
   '(org-imminent-deadline      :foreground "#ffffff" :weight bold)
   '(org-agenda-date            :foreground "#ffffff" :weight bold)
   '(org-agenda-date-today      :foreground "#ffffff" :weight bold :underline t)
   '(org-agenda-date-weekend    :foreground "#8a8a8a")
   '(org-agenda-structure       :foreground "#ffffff" :weight bold)
   '(org-agenda-done            :foreground "#767676")
   '(org-time-grid              :foreground "#5a5a5a")
   '(org-agenda-current-time    :foreground "#9a9a9a" :weight bold)

   '(font-latex-math-face        :foreground "#ffffff")
   '(font-latex-sedate-face      :foreground "#ffffff")
   '(font-latex-warning-face     :foreground "#ffffff" :weight bold)
   '(font-latex-string-face      :foreground "#9a9a9a")
   '(font-latex-sectioning-0-face :foreground "#ffffff" :weight bold :height 1.3)
   '(font-latex-sectioning-1-face :foreground "#ffffff" :weight bold :height 1.2)
   '(font-latex-sectioning-2-face :foreground "#ffffff" :weight bold :height 1.1)
   '(font-latex-sectioning-3-face :foreground "#ffffff" :weight bold)
   '(font-latex-sectioning-4-face :foreground "#c8c8c8" :weight bold)
   '(font-latex-script-char-face :foreground "#b4b4b4")
   '(font-latex-bold-face        :foreground "#ffffff" :weight bold)
   '(font-latex-italic-face      :foreground "#c8c8c8" :slant italic)
   '(font-latex-verbatim-face    :foreground "#9a9a9a")

   '(vertico-current        :background "#262626" :foreground "#ffffff" :weight bold :extend t)
   '(vertico-group-title    :foreground "#ffffff" :weight bold)
   '(orderless-match-face-0 :foreground "#ffffff" :weight bold)
   '(orderless-match-face-1 :foreground "#9a9a9a" :weight bold)
   '(orderless-match-face-2 :foreground "#ffffff" :weight bold)
   '(orderless-match-face-3 :foreground "#8a8a8a" :weight bold)
   '(completions-common-part :foreground "#ffffff" :weight bold)
   '(corfu-default          :background "#0d0d0d" :foreground "#c8c8c8")
   '(corfu-current          :background "#ffffff" :foreground "#000000" :weight bold)
   '(corfu-border           :background "#262626")
   '(company-tooltip        :background "#0d0d0d" :foreground "#c8c8c8")
   '(company-tooltip-selection :background "#ffffff" :foreground "#000000" :weight bold)
   '(company-tooltip-common :foreground "#ffffff" :weight bold)

   '(magit-section-heading      :foreground "#ffffff" :weight bold)
   '(magit-section-highlight    :background "#0d0d0d")
   '(magit-branch-local         :foreground "#ffffff")
   '(magit-branch-remote        :foreground "#9a9a9a")
   '(magit-hash                 :foreground "#5a5a5a")
   '(magit-diff-added           :foreground "#9a9a9a" :background "#0d0d0d")
   '(magit-diff-added-highlight :foreground "#9a9a9a" :background "#1a1a1a")
   '(magit-diff-removed         :foreground "#ffffff" :background "#0d0d0d")
   '(magit-diff-removed-highlight :foreground "#ffffff" :background "#1a1a1a")
   '(magit-diff-context         :foreground "#8a8a8a")
   '(magit-diff-context-highlight :foreground "#c8c8c8" :background "#0d0d0d")
   '(magit-diff-hunk-heading    :foreground "#8a8a8a" :background "#0d0d0d")
   '(magit-diff-hunk-heading-highlight :foreground "#ffffff" :background "#262626")
   '(diff-added                 :foreground "#9a9a9a")
   '(diff-removed               :foreground "#ffffff")
   '(diff-changed               :foreground "#c8c8c8")

   '(diff-hl-insert :foreground "#767676" :background "#767676")
   '(diff-hl-delete :foreground "#b4b4b4" :background "#b4b4b4")
   '(diff-hl-change :foreground "#5a5a5a" :background "#5a5a5a")

   '(doom-modeline-evil-normal-state   :foreground "#ffffff" :weight bold)
   '(doom-modeline-evil-insert-state   :foreground "#9a9a9a" :weight bold)
   '(doom-modeline-evil-visual-state   :foreground "#ffffff" :weight bold)
   '(doom-modeline-evil-replace-state  :foreground "#b4b4b4" :weight bold)
   '(doom-modeline-evil-operator-state :foreground "#8a8a8a" :weight bold)

   '(hl-todo                 :foreground "#000000" :background "#ffffff" :weight bold)
   '(which-key-key-face      :foreground "#ffffff" :weight bold)
   '(which-key-group-description-face   :foreground "#c8c8c8")
   '(which-key-command-description-face :foreground "#8a8a8a")
   '(which-key-separator-face :foreground "#5a5a5a")
   '(tooltip                 :background "#0d0d0d" :foreground "#c8c8c8")
   '(tab-bar                 :background "#000000" :foreground "#5a5a5a")
   '(tab-bar-tab             :background "#000000" :foreground "#ffffff" :weight bold)
   '(tab-bar-tab-inactive    :background "#000000" :foreground "#5a5a5a")
   '(org-roam-title          :foreground "#ffffff" :weight bold)
   '(nav-flash-face          :background "#262626")
   '(solaire-default-face    :background "#000000")
   '(solaire-hl-line-face    :background "#0d0d0d")))

(setq org-directory "~/org/")

(after! org
  (setq org-agenda-files (list "~/org/inbox.org" "~/org/tasks.org"))

  (setq org-todo-keywords
        '((sequence "TODO(t)" "|" "DONE(d)" "KILL(k)")))

  (setq org-log-done 'time
        org-log-into-drawer t)

  (setq org-agenda-custom-commands
        '(("d" "Day"
           ((agenda ""
                    ((org-agenda-span 1)
                     ;; doom defaults this to -3d
                     (org-agenda-start-day nil)
                     (org-agenda-overriding-header "TODAY")
                     (org-deadline-warning-days 7)
                     (org-agenda-skip-scheduled-if-done t)
                     (org-agenda-skip-deadline-if-done t)))
            (todo "TODO"
                  ((org-agenda-files '("~/org/inbox.org"))
                   (org-agenda-overriding-header "INBOX — no date yet")))))))

  (setq org-agenda-window-setup 'current-window
        org-agenda-start-day nil
        org-agenda-start-on-weekday nil
        org-agenda-skip-scheduled-if-done t
        org-agenda-skip-deadline-if-done t)

  (setq org-capture-templates
        '(("t" "Todo — no date, straight to inbox" entry
           (file+headline "~/org/inbox.org" "Inbox")
           "* TODO %?\n" :prepend t)

          ("s" "Todo — scheduled for a day" entry
           (file+headline "~/org/tasks.org" "Scheduled")
           "* TODO %?\nSCHEDULED: %^{When}t\n" :prepend t)

          ("d" "Todo — due by a deadline" entry
           (file+headline "~/org/tasks.org" "Scheduled")
           "* TODO %?\nDEADLINE: %^{Due}t\n" :prepend t)

          ("n" "Note — not a task" entry
           (file+headline "~/org/inbox.org" "Notes")
           "* %?\n%U\n" :prepend t)))

  (setq org-refile-targets '((org-agenda-files :maxlevel . 2))
        org-refile-use-outline-path 'file
        org-outline-path-complete-in-steps nil))

(setq org-roam-directory (file-truename "~/org/roam"))

(after! org-roam
  (setq org-roam-completion-everywhere t
        org-roam-mode-sections '(org-roam-backlinks-section org-roam-reflinks-section))
  (org-roam-db-autosync-mode))


(use-package! org-roam-ui
  :after org-roam
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start nil))

(add-hook! (org-mode markdown-mode LaTeX-mode) #'visual-line-mode)
(add-hook! (org-mode markdown-mode LaTeX-mode) #'flyspell-mode)
(setq ispell-dictionary "en_US")

(after! org
  (setq org-hide-emphasis-markers t     ; show *bold*, not the asterisks
        org-pretty-entities t           ; \alpha renders as α
        org-startup-indented t
        org-startup-folded 'content
        org-ellipsis " ▾"
        org-image-actual-width '(600)
        org-return-follows-link t)

  (add-hook 'org-mode-hook #'turn-on-org-cdlatex)

  (setq org-format-latex-options
        (plist-put org-format-latex-options :scale 1.5))
  (setq org-preview-latex-default-process 'dvisvgm
        org-startup-with-latex-preview t)
  (dolist (pkg '("amsmath" "amssymb" "mathtools" "physics"))
    (add-to-list 'org-latex-packages-alist (list "" pkg t)))
  (add-hook 'org-mode-hook #'org-fragtog-mode))

(setq +latex-viewers '(pdf-tools))
(after! latex (setq TeX-save-query nil))

(setq auto-save-default t
      make-backup-files t
      confirm-kill-emacs nil)
(global-auto-revert-mode 1)

(setq display-line-numbers-type 'relative
      scroll-margin 8
      which-key-idle-delay 0.3)
(setq-default fill-column 88)

(map! :leader
      (:prefix ("d" . "do / tasks")
       :desc "Day view"              "d" (cmd! (org-agenda nil "d"))
       :desc "New todo (no date)"    "t" (cmd! (org-capture nil "t"))
       :desc "New todo (scheduled)"  "s" (cmd! (org-capture nil "s"))
       :desc "New todo (deadline)"   "e" (cmd! (org-capture nil "d"))
       :desc "Open inbox"            "i" (cmd! (find-file "~/org/inbox.org"))
       :desc "Open tasks"            "T" (cmd! (find-file "~/org/tasks.org"))
       :desc "Full agenda"           "a" #'org-agenda)

      (:prefix ("n" . "notes")
       :desc "Find or create a note" "n" #'org-roam-node-find
       :desc "New YouTube video"     "y" (cmd! (org-roam-capture nil "v"))
       :desc "New idea"              "i" (cmd! (org-roam-capture nil "i"))
       :desc "New plan"              "p" (cmd! (org-roam-capture nil "p"))
       :desc "Link to another note"  "l" #'org-roam-node-insert
       :desc "What links here"       "b" #'org-roam-buffer-toggle
       :desc "Graph view"            "g" #'org-roam-ui-open
       :desc "Open YouTube hub"      "Y" (cmd! (org-roam-node-visit
                                                (org-roam-node-from-title-or-alias "YouTube"))))

      :desc "Search project" "/" #'+default/search-project)

(setq evil-escape-key-sequence "jk"
      evil-escape-delay 0.15)

;; breaks doom-first-file-hook on emacs 30
;; on Emacs 30 and aborts doom-first-file-hook. so-long only exists to cope
(remove-hook 'doom-first-file-hook #'global-so-long-mode)

(defun k/task (text &optional date kind)
  "File TEXT as a task.
With no DATE it goes to the Inbox. With a DATE it goes to tasks.org,
SCHEDULED by default or with a DEADLINE when KIND is `deadline'."
  (when date
    (setq date (pcase (downcase (string-trim date))
                 ("today"     "+0")
                 ("tomorrow"  "+1")
                 ("tmr"       "+1")
                 ("yesterday" "-1")
                 ("next week" "+7")
                 ("nextweek"  "+7")
                 (other other))))
  (let* ((raw   (and date (org-read-date nil nil date)))
         (stamp (and raw (format-time-string
                          "%Y-%m-%d %a" (org-time-string-to-time raw))))
         (file  (expand-file-name (if stamp "tasks.org" "inbox.org") org-directory))
         (head  (if stamp "Scheduled" "Inbox"))
         (line  (cond ((null stamp) "")
                      ((eq kind 'deadline) (format "\nDEADLINE: <%s>" stamp))
                      (t                   (format "\nSCHEDULED: <%s>" stamp)))))
    (with-current-buffer (find-file-noselect file)
      (goto-char (point-min))
      (if (re-search-forward (format "^\\* %s[ \t]*$" head) nil t)
          (progn (end-of-line) (insert (format "\n** TODO %s%s" text line)))
        (goto-char (point-max))
        (insert (format "\n* TODO %s%s" text line)))
      (save-buffer))
    (if stamp (format "%s  [%s]" text stamp) text)))

;; file. auto-save-visited-mode saves the actual file -- but it is a GLOBAL
(setq auto-save-visited-interval 10)   ; seconds of idle before it saves

(setq auto-save-visited-predicate
      (lambda ()
        (derived-mode-p 'org-mode 'markdown-mode 'text-mode)))

(auto-save-visited-mode 1)

(after! org-agenda
  (defun k/done ()
    "Mark the item under the cursor DONE, right from the agenda."
    (interactive)
    (org-agenda-todo "DONE")
    (org-save-all-org-buffers))

  ;; evil-org-agenda overwrites earlier binds
  (after! evil-org-agenda
    (evil-define-key 'normal org-agenda-mode-map
      "d" #'k/done
      "u" #'org-agenda-undo))

  (map! :map org-mode-map
        :localleader
        :desc "Mark DONE" "d" (cmd! (org-todo "DONE"))))

(after! org-roam
  (setq org-roam-capture-templates
        `(("p" "Plan something out" plain
           ,(concat "#+title: ${title}\n#+filetags: :plan:\n\n"
                    "Part of [[roam:Planning]]\n\n"
                    "* What this is\n%?\n\n"
                    "* Why\n\n"
                    "* Steps\n** TODO \n\n"
                    "* Open questions\n")
           :target (file "planning/%<%Y%m%d>-${slug}.org") :unnarrowed t)

          ("v" "YouTube video" plain
           ,(concat "#+title: ${title}\n#+filetags: :youtube:\n\n"
                    "Part of [[roam:YouTube]]\n\n"
                    "* Idea\n%?\n\n* Hook\n\n* Script\n\n* Links\n")
           :target (file "youtube/%<%Y%m%d>-${slug}.org") :unnarrowed t)

          ("i" "Just an idea" plain
           ,(concat "#+title: ${title}\n#+filetags: :idea:\n\n"
                    "Part of [[roam:Ideas]]\n\n%?\n")
           :target (file "ideas/%<%Y%m%d>-${slug}.org") :unnarrowed t)

          ("n" "Plain note" plain
           "#+title: ${title}\n\n%?"
           :target (file "notes/%<%Y%m%d>-${slug}.org") :unnarrowed t))))

(map! :leader
      (:prefix "n"
       :desc "Link to a hub"  "h" (cmd! (org-roam-node-insert
                                         (lambda (node)
                                           (member "hub" (org-roam-node-tags node)))))
       :desc "Open Planning"  "P" (cmd! (org-roam-node-visit
                                         (org-roam-node-from-title-or-alias "Planning")))
       :desc "Open Ideas"     "I" (cmd! (org-roam-node-visit
                                         (org-roam-node-from-title-or-alias "Ideas")))))

(add-hook 'org-capture-mode-hook #'delete-other-windows)

(defun k/agenda-in-frame ()
  (remove-hook 'server-after-make-frame-hook #'k/agenda-in-frame)
  (org-agenda nil "d")
  (when (get-buffer "*Org Agenda*")
    (switch-to-buffer "*Org Agenda*")
    (delete-other-windows)))

(defun k/agenda-arm ()
  "Make the next client frame open straight on the day view."
  (add-hook 'server-after-make-frame-hook #'k/agenda-in-frame))

;; 8 parallel gcc workers on a 16GB machine can exhaust it; half is plenty
(setq native-comp-async-jobs-number 4)
