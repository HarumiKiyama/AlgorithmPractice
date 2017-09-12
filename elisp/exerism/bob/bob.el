;;; bob.el --- Bob exercise (exercism)

;;; Commentary:

;;; Code:
(defun response-for (words)
  (let ((nwords (string-trim words)))
    (cond
     ((string-empty-p nwords) "Fine. Be that way!")
     ((upper-string-p nwords) "Whoa, chill out!")
     ((string-match-p "\?$" nwords) "Sure.")
     (t "Whatever.")))
  )

(defun upper-string-p (words)
  (let ((s (replace-regexp-in-string "[^[:alpha:]]" "" words)))
    (and (not (string-empty-p s))
         (every 'identity (mapcar
                           '(lambda (c) (not (= c (downcase c))))
                           s))))
    )

(provide 'bob)
;;; bob.el ends here
