;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:
(defun leap-year-p (y)
  (or (= 0 (mod y 400)) (and (/= 0 (mod y 100)) (= 0 (mod y 4))))
  )

(provide 'leap)
;;; leap.el ends here
