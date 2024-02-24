;; https://protesilaos.com/codelog/2022-05-13-emacs-elpa-devel
(setopt gc-cons-threshold most-positive-fixnum
	package-archives
	'(("elpa-devel" . "https://elpa.gnu.org/devel/")
	  ("nongnu" . "https://elpa.nongnu.org/nongnu/")
	  ("melpa" . "https://melpa.org/packages/")))
(add-hook 'emacs-startup-hook
	  (lambda () (custom-reevaluate-setting 'gc-cons-threshold)
	    (message (emacs-init-time))))
