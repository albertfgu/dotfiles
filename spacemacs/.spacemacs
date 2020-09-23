;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; currently turning off auto-completion layer since I'm only using org-mode and it's unnecessary
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-private-snippets-directory nil
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
                      ;; Don't disable smartparens in snippets
                      :packages (not smartparens)
                      :disabled-for org
                      ;; better-defaults
                      emacs-lisp)
     ;; git
     ;; markdown
     ;; neotree
     ;; treemacs
     org
     osx
     ;; (python :variables python-sort-imports-on-save t)
     ;; ess
     (shell :variables
            shell-default-height 40
            shell-default-full-span nil
            shell-default-position 'left)
     ;; (spell-checking :variables spell-checking-enable-by-default nil)
     ;; syntax-checking
     ;; version-control
     (latex :variables
            latex-build-command "LatexMk"
            latex-enable-auto-fill nil
            latex-enable-folding t
            )
     ;; pdf
     ;; docker
     themes-megapack
     org-roam
     deft
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages
   '(
     org-fragtog
     org-ref
     helm-bibtex
     deft
     ;; org-roam-bibtex ;; included in my org-roam layer
     ;; org-download ;; included with spacemacs org
     ;; posframe
     ;; webkit-katex-render
     )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages
   '(
     evil-escape
     )

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; File path pointing to emacs 27.1 executable compiled with support
   ;; for the portable dumper (this is currently the branch pdumper).
   ;; (default "emacs-27.0.50")
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"
   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 10)
                                (bookmarks . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   ;; dotspacemacs-initial-scratch-message "~~~SCRATCH BUFFER~~~"

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         doom-nova
                         ;; light themes
                         adwaita ;; not bad but inconsistent bolding of font (4th level unbold, 5th level bold) and 6th level has annoying pink color
                         flatui ;; good for org
                         sanityinc-tomorrow-day ;; really nice colors for org
                         gandalf
                         spacemacs-light ;; pretty good for org actually, larger headers
                         whiteboard ;; all shades of blue, nice but no contrast, links too bright
                         anti-zenburn ;; not enough contrast, too dark
                         ample-light
                         moe-light
                         leuven ;; these two have background highlighting, which looks nice but doesn't play well with org latex fragments
                         twilight-bright  ;; too bold
                         poet ;; https://github.com/kunalb/poet https://www.reddit.com/r/emacs/comments/abc3ea/making_poet_an_emacs_theme/
                         ;; lenlen ;; error on install
                         ;; dark themes
                         apropospriate-dark ;; favorite for python
                         doom-nova ;; very nice in org
                         doom-nord
                         solarized-zenburn
                         gruvbox-dark-medium
                         jazz
                         wilson
                         darktooth
                         sanityinc-tomorrow-eighties
                         ample-flat
                         ;; granger
                         brin
                         flatland
                         ;; spacemacs-dark
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; options https://www.gnu.org/software/emacs/manual/html_node/elisp/Low_002dLevel-Font.html
   dotspacemacs-default-font '(
                               ;; "Input Mono Narrow"
                               "Iosevka Type"
                               ;; "Monoid Retina"
                               ;; "Monoisome"
                               ;; "Fira Code"
                               ;; "Monaco"
                               ;; "Hack"
                               ;; "Code New Roman"
                               ;; "SF Mono"
                               :size 16.0
                               :weight light
                               :width condensed ;; none of these settings are working
                               )
   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t

   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t

   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t

   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil

   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global t

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil

   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil

   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom

   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always

   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 100

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 50

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   ;; visual option not documented but see: https://github.com/syl20bnr/spacemacs/issues/6536
   ;; supposedly these options are irrelevant now that there is native relative line numbers in emacs
   dotspacemacs-line-numbers '(:visual t
                               :disabled-for-modes doc-view-mode
                                                   pdf-view-mode)
   ;; dotspacemacs-line-numbers 'relative

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   dotspacemacs-enable-server t

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%a"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  ;; hack to install pdf-tools https://github.com/politza/pdf-tools/issues/480
  ;; (setenv "PKG_CONFIG_PATH" "/usr/local/lib/pkgconfig:/usr/local/Cellar/libffi/3.2.1/lib/pkgconfig")
  (spacemacs/load-spacemacs-env)
  )


(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; (setq LaTeX-math-abbrev-prefix ";")
  ;; (setq-default TeX-master nil)
  ;; ;; 20-06-09 these tex hooks are giving me a startup error "Error in dotspacemacs/user-init: Symbol’s value as variable is void: use-package-inject-hooks"
  (setq-default use-package-inject-hooks t) ;; to make the hooks work
  ;; (spacemacs|use-package-add-hook tex
  ;;   :post-config
  ;;   (progn
  ;;     ;; add "PDF Tools" to the list of possible PDF tools
  ;;     (unless (assoc "PDF Tools" TeX-view-program-list)
  ;;       (add-to-list 'TeX-view-program-list
  ;;                    '("PDF Tools" TeX-pdf-tools-sync-view)))
  ;;     )
  ;; )
  ;; (spacemacs|use-package-add-hook pdf-tools
  ;;   :post-config
  ;;   (evil-define-key 'evilified pdf-view-mode-map (kbd "'") 'pdf-view-jump-to-register)
  ;; )
  ;; (setq exec-path-from-shell-debug t)
  ;; (setq exec-path-from-shell-check-startup-files nil)

  ;; ;; GUI Settings for YAMAMOTO Mitsuharu's Mac port of GNU Emacs.
  ;; ;; https://github.com/railwaycat/homebrew-emacsmacport
  ;; (when (and (spacemacs/system-is-mac) (display-graphic-p))
  ;;   ;; Disable pixel-by-pixel scrolling, since it's extremely choppy.
  ;;   (setq mac-mouse-wheel-smooth-scroll nil))

  ;; configure smartparens, yas-snippet, latex-math-mode to work with org-mode
  (spacemacs|use-package-add-hook smartparens
    :post-config
    (progn
      ;; https://emacs.stackexchange.com/questions/56071/smartparens-does-not-work-well-in-orgmode
      (sp-local-pair 'org-mode "\\[" "\\]")
      (sp-local-pair 'org-mode "$" "$")
      (sp-local-pair 'org-mode "'" "'" :actions '(rem))
      (sp-local-pair 'org-mode "=" "=" :actions '(rem))
      (sp-local-pair 'org-mode "\\left(" "\\right)" :trigger "\\l(" :post-handlers '(sp-latex-insert-spaces-inside-pair))
      (sp-local-pair 'org-mode "\\left[" "\\right]" :trigger "\\l[" :post-handlers '(sp-latex-insert-spaces-inside-pair))
      (sp-local-pair 'org-mode "\\left\\{" "\\right\\}" :trigger "\\l{" :post-handlers '(sp-latex-insert-spaces-inside-pair))
      (sp-local-pair 'org-mode "\\left|" "\\right|" :trigger "\\l|" :post-handlers '(sp-latex-insert-spaces-inside-pair))
      )
    )

)

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  (progn ;; vim keybindings
    ;; motions
    (define-key evil-motion-state-map (kbd "<down>") 'evil-next-visual-line)
    (define-key evil-motion-state-map (kbd "<up>") 'evil-previous-visual-line)
    (define-key evil-motion-state-map (kbd "C-j") 'evil-scroll-down)
    (define-key evil-motion-state-map (kbd "C-k") 'evil-scroll-up)
    (define-key evil-motion-state-map (kbd "C-S-j") 'evil-scroll-line-down)
    (define-key evil-motion-state-map (kbd "C-S-k") 'evil-scroll-line-up)
    ;; also in visual mode
    (define-key evil-visual-state-map (kbd "<down>") 'evil-next-visual-line)
    (define-key evil-visual-state-map (kbd "<up>") 'evil-previous-visual-line)
    (define-key evil-visual-state-map (kbd "C-j") 'evil-scroll-down)
    (define-key evil-visual-state-map (kbd "C-k") 'evil-scroll-up)
    (define-key evil-motion-state-map (kbd "C-S-j") 'evil-scroll-line-down)
    (define-key evil-motion-state-map (kbd "C-S-k") 'evil-scroll-line-up)
    ;; folding
    (define-key evil-motion-state-map (kbd "z h") 'evil-close-fold)
    (define-key evil-motion-state-map (kbd "z l") 'evil-open-fold)
    (spacemacs/set-leader-keys
      "b \[" 'previous-buffer
      "b \]" 'next-buffer)
  )

  (progn ;; smartparen
   (define-key evil-insert-state-map (kbd "C-f") (lambda () (interactive) (expand-abbrev) (sp-up-sexp)))
   (define-key evil-insert-state-map (kbd "C-b") (lambda () (interactive) (expand-abbrev) (sp-down-sexp)))
   ;; (define-key evil-visual-state-map (kbd "s") (lambda (&optional arg) (interactive "P") (sp-wrap-with-pair "(")))
   )

  (progn ;; indentation
    (defun my-setup-indent (n)
      ;; java/c/c++
      (setq c-basic-offset n)
      ;; web development
      (setq coffee-tab-width n) ; coffeescript
      (setq javascript-indent-level n) ; javascript-mode
      (setq js-indent-level n) ; js-mode
      (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
      (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
      (setq web-mode-css-indent-offset n) ; web-mode, css in html file
      (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
      (setq css-indent-offset n) ; css-mode
      )
    (setq-default c-basic-offset 4)
    (defconst my-cc-style
      '("cc-mode"
        (c-offsets-alist . ((innamespace . [0])))))

    (c-add-style "my-cc-mode" my-cc-style)
    (c-set-offset 'innamespace 0)
    (add-hook 'c++-mode-hook (lambda () (c-set-style "my-cc-style") ))
    ;; (my-setup-indent 4) ;
   )

  (progn ;; helm
   (setq helm-ag-base-command "rg --color=never --smart-case --no-heading --no-ignore-vcs --line-number")
   (setq helm-ag-success-exit-status (quote (0 2)))
   (setq helm-ag-command-option " -U" )
   (spacemacs/set-leader-keys
     "s a h" 'helm-ag)
   )


  ;;;;; org-mode ;;;;;
  ;; (use-package org
  ;;   :config
  ;;   (setq org-startup-indented t)
  ;;   (setq org-startup-with-latex-preview t)
  ;;   ;; (setq org-startup-with-inline-images t)
  ;;   )

  (with-eval-after-load 'org
   (setq org-startup-indented t)
   (setq org-startup-with-latex-preview t)
   (setq org-startup-with-inline-images t)

   ;; appearance customization
   (add-hook 'org-mode-hook 'spacemacs/toggle-truncate-lines-off)
   ;; (add-hook 'text-mode-hook 'spacemacs/toggle-visual-line-navigation-on)
   (add-hook 'org-mode-hook 'hl-todo-mode) ;; highlight custom TODO types ;; can also adjust =hl-todo-exclude-modes=?
   ;; (setq org-hide-emphasis-markers t) ;; I really want one that exposes it if you're inside or at least on the same line
   (customize-set-variable 'org-blank-before-new-entry  ;; disables org's magic decision making around new lines
                           '((heading . nil)
                             (plain-list-item . nil)))
   (setq org-cycle-separator-lines 1) ;; maintains visible empty lines while toggling heading contents
   (setq org-adapt-indentation nil) ;; testing this out - disables indentation to match previous heading
   ;; TODO rebind org-return (Enter) to org-return-indent (C-j)

   ;; org-mode latex fragment configuration
   ;; (setq org-startup-with-latex-preview t)
   (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.2))
   ;; (setq org-format-latex-options (plist-put org-format-latex-options :background auto)) ;; the auto option is inconsistent for some reason; doesn't work on startup, only after recompile

   (setq org-preview-latex-default-process 'dvisvgm) ;; dvisvgm instead of dvipng for high resolution latex fragments
   (add-hook 'org-mode-hook 'org-fragtog-mode) ;; automatically toggle fragments
   ;; (use-package webkit-katex-render
   ;;   :load-path "~/.emacs.d/private/emacs-webkit-katex-render"
   ;;   ;; :ensure t
   ;;   )
   ;; Highlight latex text in org-mode
   ;; http://pragmaticemacs.com/emacs/highlight-latex-text-in-org-mode/
   (setq org-highlight-latex-and-related '(latex))  ;; need the parens around latex for some reason

   ;; snippets: smartparens, yas-snippet latex
   (add-hook 'org-mode-hook 'smartparens-mode)

   ;; (add-hook 'org-mode-hook 'spacemacs/toggle-smartparens)
   ;; https://emacs.stackexchange.com/questions/38429/yasnippets-loading-two-major-modes-org-mode-and-latex
   (add-hook 'org-mode-hook
             (lambda () (yas-activate-extra-mode 'latex-mode)))


   ;; use underline rather than highlight to not mess with latex previews background
   ;; (global-hl-line-mode 1) ;; seems to be t by default
   (set-face-attribute hl-line-face nil :background nil :underline t)
   ;; turn off hl-line in org-mode https://www.reddit.com/r/emacs/comments/gnyfbk/how_to_change_face_colors_depending_on_major_mode/
   ;; this only turns off hl-line and doesn't display the underline for some reason
   ;; (add-hook 'org-mode-hook
   ;;           #'(lambda () (face-remap-add-relative hl-line-face :background nil :underline t))
   ;;           )

   ;; org-roam-bibtex
   ;; note that init code is directly in private Spacemacs layer
   ;; these are unnecessary due to the hook in org-roam/init-org-roam-bibtex in the org-roam layer
   ;; (add-hook 'org-mode-hook 'org-roam-bibtex-mode)
   ;; (add-hook 'after-init-hook #'org-roam-bibtex-mode)



   ;; (setq org-todo-keywords '((sequence "TODO" "PROG" "DELG" "|" "DONE" "HOLD" "CNCL")))

   ;; search: deft
   (setq deft-default-extension "org"
         ;; de-couples filename and note title:
         deft-use-filename-as-title nil
         deft-use-filter-string-for-filename t
         ;; disable auto-save
         ;; deft-auto-save-interval -1.0
         ;; converts the filter string into a readable file-name using kebab-case:
         deft-file-naming-rules
         '((noslash . "-")
           (nospace . "-")
           (case-fn . downcase))
         deft-recursive t
         ;; deft-text-mode 'org-mode
         ;; deft-extensions '("org")
         deft-directory "~/Dropbox/org"
         )
   (spacemacs/set-leader-keys-for-major-mode 'org-mode
     "rs" 'spacemacs/deft)
   ;; (global-set-key (kbd "C-=")  'helm-org-in-buffer-headings)  ;; Outline search.
   )

  ;; org-download
  ;; https://zzamboni.org/post/how-to-insert-screenshots-in-org-documents-on-macos/
  (setq
    org-download-method 'directory
    org-download-image-dir "images"
    org-download-timestamp "%y-%m-%d-%H-%M-%S_"
    org-image-actual-width nil
    ;; org-image-actual-width 500
    org-download-screenshot-method "/usr/local/bin/pngpaste %s"
    )
  (setq-default org-download-heading-lvl nil)
  (evil-define-key '(normal insert) org-mode-map (kbd "H-V") 'org-download-screenshot)


  ;;--------------------------
  ;; Handling file properties for ‘CREATED’ & ‘MODIFIED’
  ;;--------------------------
  ;; https://org-roam.discourse.group/t/update-a-field-last-modified-at-save/321


  ;; time-stamp is a built-in emacs solution, but only supports the format Time-stamp: <>
  ;; (require 'time-stamp)
  ;; (setq time-stamp-pattern "5/#+MODIFIED: [%04y-%02m-%02d %a %02H:%02M]")
  ;; ;; (add-hook 'write-file-functions 'time-stamp)
  ;; (add-hook 'before-save-hook 'time-stamp)

  (defun zp/org-find-time-file-property (property &optional anywhere)
    "Return the position of the time file PROPERTY if it exists.
When ANYWHERE is non-nil, search beyond the preamble."
    (save-excursion
      (goto-char (point-min))
      (let ((first-heading
             (save-excursion
               (re-search-forward org-outline-regexp-bol nil t))))
        (when (re-search-forward (format "^#\\+%s:" property)
                                 (if anywhere nil first-heading)
                                 t)
          (point)))))

  (defun zp/org-has-time-file-property-p (property &optional anywhere)
    "Return the position of time file PROPERTY if it is defined.
As a special case, return -1 if the time file PROPERTY exists but
is not defined."
    (when-let ((pos (zp/org-find-time-file-property property anywhere)))
      (save-excursion
        (goto-char pos)
        (if (and (looking-at-p " ")
                 (progn (forward-char)
                        (org-at-timestamp-p 'lax)))
            pos
          -1))))

  (defun zp/org-set-time-file-property (property &optional anywhere pos)
    "Set the time file PROPERTY in the preamble.
When ANYWHERE is non-nil, search beyond the preamble.
If the position of the file PROPERTY has already been computed,
it can be passed in POS."
    (when-let ((pos (or pos
                        (zp/org-find-time-file-property property))))
      (save-excursion
        (goto-char pos)
        (if (looking-at-p " ")
            (forward-char)
          (insert " "))
        (delete-region (point) (line-end-position))
        (let* ((now (format-time-string "[%Y-%m-%d %a %H:%M]")))
          (insert now)))))

  (defun zp/org-set-last-modified ()
    "Update the LAST_MODIFIED file property in the preamble."
    (when (derived-mode-p 'org-mode)
      (zp/org-set-time-file-property "MODIFIED")))

  (add-hook 'before-save-hook #'zp/org-set-last-modified)


  (progn ;; python
    ;; (setq python-shell-interpreter "ipython")
    ;; (setq python-shell-interpreter "/dfs/scratch1/albertgu/anaconda3/bin/ipython")
    ;; ;; (setq python-shell-interpreter "/dfs/scratch1/albertgu/anaconda3/envs/cuda9/bin/ipython")

    ;; (setq paradox-github-token "88a37dd6424ec3c90155e402d19f53c37f097228")
    )

  ;; completion
  ;; (global-company-mode) ;; seems to be not recommended

  ;; abbrev-mode
  ;; (setq-default abbrev-mode t)

  (progn ;; tramp
    (setq tramp-use-ssh-controlmaster-options nil)
    ;; tramp's inline compression has some issue, giving error "gzip: (stdin): unexpected end of file"
    ;; So we set the compression threshold higher.
    (setq tramp-inline-compress-start-size 10000000)
  )

  ;; ;; LaTeX
  (setq LaTeX-math-abbrev-prefix ";")
  (setq-default TeX-master nil)
  (progn ;; indentation
    ;; (setq LaTeX-item-indent 0)
    ;; (setq TeX-newline-function 'reindent-then-newline-and-indent) ;; or newline-and-indent
    ;; ;; (add-hook 'LaTeX-mode-hook
    ;; ;;           (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))
    )
  (progn ;; pdf integration
    ;; ;; Use pdf-tools to open PDF files
    ;; ;; source: https://emacs.stackexchange.com/questions/19472/how-to-let-auctex-open-pdf-with-pdf-tools
    ;; ;; (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
    ;; ;;       TeX-source-correlate-start-server t)
    ;; ;; (setq TeX-view-program-selection '((output-pdf "open")))
    ;; ;; (unless (assoc "PDF Tools" TeX-view-program-list)
    ;; ;;   (add-to-list 'TeX-view-program-list
    ;; ;;                '("PDF Tools" TeX-pdf-tools-sync-view)))
    ;; ;; Use pdf-tools to open PDF files
    ;; (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
    ;;       TeX-source-correlate-start-server t)

    ;; ;; Update PDF buffers after successful LaTeX runs
    ;; (add-hook 'TeX-after-compilation-finished-functions
    ;;           #'TeX-revert-document-buffer)
    )

  (progn ;; math font utilities
    ;; define a function to insert math fonts
    ;; copied from LaTeX-math-cal from latex.el (search LaTeX-math-list for reference to file)
    ;; note: these call TeX-insert-macro, which inserts {} after if not in math mode
    ;; TODO use currying/macros for these
    (defun LaTeX-math-bb (char dollar)
      "Insert a {\\cal CHAR}.  If DOLLAR is non-nil, put $'s around it.
If `TeX-electric-math' is non-nil wrap that symbols around the
char."
      (interactive "*c\nP")
      (if dollar (insert (or (car TeX-electric-math) "$")))
      (insert "\\mathbb{" (char-to-string char) "}")
      (if dollar (insert (or (cdr TeX-electric-math) "$")))
      )
    (defun my-LaTeX-math-cal (char dollar)
      "Insert a {\\cal CHAR}.  If DOLLAR is non-nil, put $'s around it.
If `TeX-electric-math' is non-nil wrap that symbols around the
char."
      (interactive "*c\nP")
      (if dollar (insert (or (car TeX-electric-math) "$")))
      (insert "\\mathcal{" (char-to-string char) "}")
      (if dollar (insert (or (cdr TeX-electric-math) "$"))))
    (defun LaTeX-math-bf (char dollar)
      "Insert a {\\cal CHAR}.  If DOLLAR is non-nil, put $'s around it.
If `TeX-electric-math' is non-nil wrap that symbols around the
char."
      (interactive "*c\nP")
      (if dollar (insert (or (car TeX-electric-math) "$")))
      (insert "\\mathbf{" (char-to-string char) "}")
      (if dollar (insert (or (cdr TeX-electric-math) "$"))))
    (defun LaTeX-math-sf (char dollar)
      "Insert a {\\cal CHAR}.  If DOLLAR is non-nil, put $'s around it.
If `TeX-electric-math' is non-nil wrap that symbols around the
char."
      (interactive "*c\nP")
      (if dollar (insert (or (car TeX-electric-math) "$")))
      (insert "\\mathsf{" (char-to-string char) "}")
      (if dollar (insert (or (cdr TeX-electric-math) "$"))))
    (defun LaTeX-math-font (name)
      (defun latex-math-font-fn (char dollar)
        "Insert a {\\cal CHAR}.  If DOLLAR is non-nil, put $'s around it.
If `TeX-electric-math' is non-nil wrap that symbols around the
char."
        ;; (interactive "*c\nP")
        (if dollar (insert (or (car TeX-electric-math) "$")))
        (insert "\\" name "{" (char-to-string char) "}")
        (if dollar (insert (or (cdr TeX-electric-math) "$")))
        )
      )
  )
  (setq LaTeX-math-list '(
    ;; TODO let <enter> insert the ; itself
    ;; (?v (lambda () (interactive "*") (insert ",")))
    ;; (?\; "colon")
    ;; (?\@ "circ")
    (?q "theta")
    (?Q "Theta")
    (?j "chi")
    (?6 "partial")
    (?8 "infty")
    ;; (?= "equiv")
    ("." "cdot")
    ("; ." "dots")
    ;; (?\C-u "cup")
    ;; (", C-u" "bigcup")
    ;; (?\C-i "cap")
    ;; (", C-i" "bigcap")
    ("; v" "vdots")
    ;; (", c" "centernot")
    ("<" "langle")
    (">" "rangle")
    ("; <" "langle") ;; TODO insert smartparens pairs instead?
    ("(" "subset")
    (")" "supset")
    (?- "overline")
    (?_ "underline")
    ;; (", =" "approx")
    ;; (?o "log")
    (?1 (lambda () (interactive "*") (insert "^{-1}")))  ;; for easy inverse
    (?T (lambda () (interactive "*") (insert "^\\top")))  ;; for easy transpose
    ;; (?\s (lambda () (interactive "*") (expand-abbrev) (insert "; ")))    ;; ,<SPC> turns to , so we can type , as a punctuation
    (?\s (lambda () (interactive "*") (insert "; ")))    ;; ,<SPC> turns to , so we can type , as a punctuation
    (?\/ (lambda () (interactive "*") (yas-expand-snippet "\\frac{$1}{$2}")))
    (?2 (lambda () (interactive "*") (yas-expand-snippet "\\sqrt{$0}"))) ;; TODO these might not need yas-snippet, C-f might work anyways
    (?~ (lambda () (interactive "*") (yas-expand-snippet "\\widetilde{$0}")))
    ;; For preview-latex
    ("; ;" (lambda () (interactive "*") (fill-paragraph) (preview-at-point) ))
    ;; mathbb
    ("; B" LaTeX-math-bb)
    ("; c" my-LaTeX-math-cal)
    ("; b" LaTeX-math-bf)
    ("; s" LaTeX-math-sf)
    ;; ("; b" (LaTeX-math-font "mathbf"))
    ))

  ;; magit
  (progn ;; magit
    (remove-hook 'server-switch-hook 'magit-commit-diff)
    (setq vc-handled-backends nil)
    (setq vc-handled-backends (delq 'Git vc-handled-backends))
    )

  ;; buffer utilities
  (defun revert-all-buffers ()
    "Iterate through the list of buffers and revert them, e.g. after a
    new branch has been checked out."
    (interactive)
    (when (yes-or-no-p "Are you sure - any changes in open buffers will be lost! ")
      (let ((frm1 (selected-frame)))
        (make-frame)
        (let ((frm2 (next-frame frm1)))
          (select-frame frm2)
          (make-frame-invisible)
          (dolist (x (buffer-list))
            (let ((test-buffer (buffer-name x)))
              (when (not (string-match "\*" test-buffer))
                (when (not (file-exists-p (buffer-file-name x)))
                  (select-frame frm1)
                  (when (yes-or-no-p (concat "File no longer exists (" (buffer-name x) "). Close buffer? "))
                    (kill-buffer (buffer-name x)))
                  (select-frame frm2))
                (when (file-exists-p (buffer-file-name x))
                  (switch-to-buffer (buffer-name x))
                  (revert-buffer t t t)))))
          (select-frame frm1)
          (delete-frame frm2)))))
  (defun modi/revert-all-file-buffers ()
    "Refresh all open file buffers without confirmation.
Buffers in modified (not yet saved) state in emacs will not be reverted. They
will be reverted though if they were modified outside emacs.
Buffers visiting files which do not exist any more or are no longer readable
will be killed."
    (interactive)
    (dolist (buf (buffer-list))
      (let ((filename (buffer-file-name buf)))
        ;; Revert only buffers containing files, which are not modified;
        ;; do not try to revert non-file buffers like *Messages*.
        (when (and filename
                   (not (buffer-modified-p buf)))
          (if (file-readable-p filename)
              ;; If the file exists and is readable, revert the buffer.
              (with-current-buffer buf
                (revert-buffer :ignore-auto :noconfirm :preserve-modes))
            ;; Otherwise, kill the buffer.
            (let (kill-buffer-query-functions) ; No query done when killing buffer
              (kill-buffer buf)
              (message "Killed non-existing/unreadable file buffer: %s" filename))))))
    (message "Finished reverting buffers containing unmodified files."))


  (org-reload)
  ;; ;; Latex-math-mode in org-mode (so that ,a -> \alpha)
  ;; ;; But LaTeX-math-mode isn't loaded until 'latex is loaded
  ;; ;; Need to put this after all the latex config
  (require 'latex) ;; There has to be a better way to load 'latex
  (add-hook 'org-mode-hook 'LaTeX-math-mode)

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline success warning error])
 '(ansi-term-color-vector
   [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(beacon-color "#f2777a")
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(evil-emacs-state-cursor (quote ("#E57373" hbar)) t)
 '(evil-insert-state-cursor (quote ("#E57373" bar)) t)
 '(evil-normal-state-cursor (quote ("#FFEE58" box)) t)
 '(evil-visual-state-cursor (quote ("#C5E1A5" box)) t)
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#202325")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(flymake-error-bitmap
   (quote
    (flymake-double-exclamation-mark modus-theme-fringe-red)))
 '(flymake-note-bitmap (quote (exclamation-mark modus-theme-fringe-cyan)))
 '(flymake-warning-bitmap (quote (exclamation-mark modus-theme-fringe-yellow)))
 '(frame-background-mode (quote dark))
 '(highlight-changes-colors (quote ("#DC8CC3" "#bbb0cb")))
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (quote
    ("#680f63eb5998" "#54db645064d0" "#6097535f5322" "#5c2859a95fa1" "#4ede55f24ea4" "#64dd5979525e" "#530060d16157")))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   (quote
    (("#4F4F4F" . 0)
     ("#488249" . 20)
     ("#5dacaf" . 30)
     ("#57a2a4" . 50)
     ("#b6a576" . 60)
     ("#ac7b5a" . 70)
     ("#aa5790" . 85)
     ("#4F4F4F" . 100))))
 '(hl-bg-colors
   (quote
    ("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249")))
 '(hl-fg-colors
   (quote
    ("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F")))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F")))
 '(hl-todo-highlight-punctuation ":")
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("HOLD" . "#2d9574")
     ("WAIT" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DELG" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("CNCL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX" . "#dc752f")
     ("XXXX" . "#dc752f"))))
 '(ibuffer-deletion-face (quote dired-flagged))
 '(ibuffer-filter-group-name-face (quote dired-mark))
 '(ibuffer-marked-face (quote dired-marked))
 '(ibuffer-title-face (quote dired-header))
 '(jdee-db-active-breakpoint-face-colors (cons "#0d0f11" "#7FC1CA"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#0d0f11" "#A8CE93"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#0d0f11" "#899BA6"))
 '(line-spacing 0.2)
 '(linum-format " %5i ")
 '(lsp-ui-doc-border "#FFFFEF")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#488249" "#95d291" "#57a2a4" "#93E0E3" "#DC8CC3" "#bbb0cb")))
 '(objed-cursor-color "#DF8C8C")
 ;; '(org-roam-directory "~/Dropbox/org/")
 '(package-selected-packages
   (quote
    (origami deft yasnippet-snippets company-reftex org-roam-bibtex bibtex-completion biblio parsebib biblio-core org-pomodoro alert log4e zenburn-theme zen-and-art-theme yapfify xterm-color ws-butler winum white-sand-theme which-key volatile-highlights vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spaceline powerline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle shell-pop seti-theme reverse-theme reveal-in-osx-finder restart-emacs rebecca-theme rainbow-delimiters railscasts-theme pyvenv pytest pyenv-mode py-isort purple-haze-theme professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pbcopy paradox spinner osx-trash osx-dictionary orgit organic-green-theme org-projectile org-category-capture org-present gntp org-plus-contrib org-mime org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow magit-popup madhat2r-theme lush-theme lorem-ipsum live-py-mode linum-relative link-hint light-soap-theme launchctl jbeans-theme jazz-theme ir-black-theme inkpot-theme indent-guide hydra lv hy-mode dash-functional hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation heroku-theme hemisu-theme helm-themes helm-swoop helm-pydoc helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-gitignore request helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gandalf-theme fuzzy flyspell-correct-helm flyspell-correct flx-ido flx flatui-theme flatland-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit git-commit with-editor transient evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu ess-smart-equals ess-R-data-view ctable ess julia-mode espresso-theme eshell-z eshell-prompt-extras esh-help dumb-jump dracula-theme django-theme diminish darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-statistics company-quickhelp pos-tip company-auctex company-anaconda company column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme bind-map bind-key badwolf-theme auto-yasnippet yasnippet auto-highlight-symbol auto-dictionary auctex-latexmk auctex apropospriate-theme anti-zenburn-theme anaconda-mode pythonic f s ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core async ac-ispell auto-complete popup gruvbox-theme)))
 '(pdf-view-midnight-colors (quote ("#FDF4C1" . "#282828")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(rustic-ansi-faces
   ["#3c4c55" "#DF8C8C" "#A8CE93" "#DADA93" "#83AFE5" "#D18EC2" "#7FC1CA" "#c5d4dd"])
 '(safe-local-variable-values (quote ((eval progn (pp-buffer) (indent-buffer)))))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(tabbar-background-color "#357535753575")
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(vc-annotate-background "#1f2124")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff0000")
     (40 . "#ff4a52")
     (60 . "#f6aa11")
     (80 . "#f1e94b")
     (100 . "#f5f080")
     (120 . "#f6f080")
     (140 . "#41a83e")
     (160 . "#40b83e")
     (180 . "#b6d877")
     (200 . "#b7d877")
     (220 . "#b8d977")
     (240 . "#b9d977")
     (260 . "#93e0e3")
     (280 . "#72aaca")
     (300 . "#8996a8")
     (320 . "#afc4db")
     (340 . "#cfe2f2")
     (360 . "#dc8cc3"))))
 '(vc-annotate-very-old-color "#dc8cc3")
 '(weechat-color-list
   (quote
    (unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F")))
 '(window-divider-mode nil)
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
