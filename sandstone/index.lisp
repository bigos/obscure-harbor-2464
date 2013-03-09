(in-package #:sandstone)

(defun view ()
  (who:with-html-output-to-string (out)
    (:html
     (:body      
      (:h1 :id "heading" "Hello World")
      (:p :class "message"  "Hi everyone, we have success at last!!!")))))
