;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:
(defun square-of-sums(n)
  (setq res 0)
  (while (> n 0)
    (setq res (+ res n))
    (setq n (- n 1)))
  (expt res 2)
  )

(defun sum-of-squares(n)
  (setq res 0)
  (while (> n 0)
    (setq res (+ res (expt n 2)))
    (setq n (- n 1)))
  res
  )
(defun difference(n)
  (- (square-of-sums n) (sum-of-squares n))
  )

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
