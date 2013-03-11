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

;;; 補完機能
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/ac-dict")
(ac-config-default)

;;; color theme
(add-to-list 'load-path "~/.emacs.d/elisp/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)

;;; haskell-mode
(add-to-list 'load-path "~/.emacs.d/elisp/haskell-mode-2.8.0")
(require 'haskell-mode)
(require 'haskell-cabal)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

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

;;; ==================================================

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

;;; ===================================================

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

;;; 強力な補完機能を使う
;;; p-bでprint-bufferとか
;;(load "complete")
(partial-completion-mode 1)

;;; 補完可能なものを随時表示
;;; 少しうるさい
;(icomplete-mode 1)

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



