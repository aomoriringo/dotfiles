;;;
;;; init.el
;;;


;; @ load-path
(setq load-path (append
                 '("~/.emacs.d")
                 load-path))

(let ((default-directory "~/.emacs.d/elisp/"))
  (setq load-path (cons default-directory load-path))
  (normal-top-level-add-subdirs-to-load-path))

;;; Localeに合わせた環境の設定
(set-locale-environment nil)

;;; フォント設定
(set-face-attribute 'default nil
		:family "Ricty"
		:height 120)
(set-fontset-font
		(frame-parameter nil 'font)
		'japanese-jisx0208
		'("Ricty" . "iso10646-1"))

;;; キーバインド
(define-key global-map "\C-h" 'delete-backward-char) ; 削除
(define-key global-map "\M-?" 'help-for-help)        ; ヘルプ
(define-key global-map "\C-z" 'undo)                 ; undo
(define-key global-map "\C-ci" 'indent-region)       ; インデント
(define-key global-map "\C-c\C-i" 'dabbrev-expand)   ; 補完
(define-key global-map "\C-c;" 'comment-region)      ; コメントアウト
(define-key global-map "\C-c:" 'uncomment-region)    ; コメント解除
;(define-key global-map "\C-o" 'toggle-input-method)  ; 日本語入力切替
(define-key global-map "\C-\\" nil) ; \C-\の日本語入力の設定を無効にする
;(define-key global-map "\C-c " 'other-frame)         ; フレーム移動

;;; 初期フレームの設定
(setq initial-frame-alist
      (append
       '((top                 . 22)    ; フレームの Y 位置(ピクセル数)
	 (left                . 600)   ; フレームの X 位置(ピクセル数)
	 (width               . 81)    ; フレーム幅(文字数)
	 (height              . 50))   ; フレーム高(文字数)
       initial-frame-alist))

;;; 新規フレームのデフォルト設定
(setq default-frame-alist
      (append
       '((width               . 81)	; フレーム幅(文字数)
	 (height              . 50))	; フレーム高(文字数)
       default-frame-alist))


;;; 対応する括弧を光らせる。
(show-paren-mode 1)

;;; カーソル行を光らせる。
(global-hl-line-mode 1)

;;; バックアップファイルを作らない
(setq backup-inhibited t)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)

;;; カーソルの点滅を止める
(blink-cursor-mode 0)

;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;;; モードラインに時間を表示する
(display-time)

;;; 補完機能
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")
(ac-config-default)

;;; 行末スペースに色付け
(when (boundp 'show-trailing-whitespace)
  (setq-default show-trailing-whitespace t))
(set-face-background 'trailing-whitespace "plum")

;;; 現在の関数名をモードラインに表示
(which-function-mode 1)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;; Shiftバッファ移動
(setq windmove-wrap-around t)
(windmove-default-keybindings)

;;; color theme
(add-to-list 'load-path "~/.emacs.d/elisp/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

;;; ===================================================

;;; twittering-mode
(add-to-list 'load-path "~/.emacs.d/elisp/twittering-mode-3.0.0")
(require 'twittering-mode)
;;; 起動時パスワード認証 (require gpg command)
(setq twittering-use-master-password t)
(setq twittering-username "youraccount")
(setq twittering-password "yourpassword")
;;; 表示形式
(setq twittering-status-format "%i @%s %S %p: \n %T\n[%@]%r %R")
;;; アイコンを表示する
(setq twittering-icon-mode t)
;;; アイコンサイズ変更 (require convert command)
(setq twittering-convert-fix-size 30)
;;; 更新頻度(sec)
(setq twittering-timer-interval 40)
;;; 最初に開くタイムライン
(setq twittering-initial-timeline-spec-string
      '("accountname/listname")
)

;;; ===================================================

;;; haskell-mode
(add-to-list 'load-path "~/.emacs.d/elisp/haskell-mode-2.8.0")
(require 'haskell-mode)
(require 'haskell-cabal)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

;;; ===================================================

;;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;;; js-indentation
(setq-default js2-basic-offset 2)

;;; ===================================================

;;; lingr
(require 'lingr)
(setq lingr-username youraccount
      lingr-password yourpassword)
