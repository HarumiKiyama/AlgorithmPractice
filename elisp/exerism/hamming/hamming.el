;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun hamming-distance (f s)
  (if (= (length f) (length s))
      (apply '+ (mapcar* 'hamming-diff f s))
    (error "These two DNAs are not aligned"))
  )

(defun hamming-diff (f s)
  (if (= f s) 0 1)
  )

(provide 'hamming)
;;; hamming.el ends here
