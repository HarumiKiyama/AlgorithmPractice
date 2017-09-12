;;; hello-world.el --- Hello World Exercise (exercism)

;;; Commentary:

;;; Code:
(defun hello (&optional name)
  "Hello world"
  (if (stringp name)
      (concat "Hello, " name "!")
    "Hello, World!"))


(provide 'hello-world)
;;; hello-world.el ends here
