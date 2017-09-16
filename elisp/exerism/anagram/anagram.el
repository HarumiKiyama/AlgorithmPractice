;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl)

(defun anagrams-for (w l)
  (cl-remove-if-not '(lambda (s)
                       (let ((sorted-w (seq-sort '< (downcase w)))
                             (sorted-s (seq-sort '< (downcase s))))
                         (and (string= sorted-w sorted-s)
                              (not (string= w s)))
                         )
                       ) l)
  )


(provide 'anagram)
;;; anagram.el ends here
