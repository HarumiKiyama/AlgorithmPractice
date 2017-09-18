;;; binary.el --- Binary exercise (exercism)

;;; Commentary:

;;; Code:

(defun to-decimal (s)
  (if (string-match-p "[^[:digit:]]" s)
      0
    (apply '+ (mapcar* '(lambda (c n)
                          (* (- c 48) (expt 2 n)))
                       (reverse s)
                       (number-sequence 0 (- (length s) 1)))))
  )



(provide 'binary)
;;; binary.el ends here
