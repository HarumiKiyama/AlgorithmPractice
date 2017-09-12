;;; gigasecond.el --- Gigasecond exercise (exercism)

;;; Commentary:
;; Calculate the date one gigasecond (10^9 seconds) from the
;; given date.
;;
;; NB: Pay attention to  Emacs' handling of time zones and dst
;; in the encode-time and decode-time functions.

;;; Code:

(defvar seconds (expt 10 9))

(defun from (S M H d m y)
  (let* ((time-value (time-add (date-to-time (format "%d-%d-%d %d:%d:%d" y m d H M S)) seconds))
         (time-string (format-time-string "%S %M %H %d %m %Y" time-value "UTC0")))
    (mapcar 'string-to-int (split-string time-string))
    )
  )

(provide 'gigasecond)
;;; gigasecond.el ends here
