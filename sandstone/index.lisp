(in-package #:sandstone)

(defun view ()
  (who:with-html-output-to-string (out)
    (:html
     (:body      
      (:h1 :id "heading" "Hello Lisp World")
      (:p :class "message"  "Hi everyone, we have success at last. I've made restas run on Heroku.")
      (:footer :style "color: white; text-align: center; background:#444;" "&copy; 2013 Jacek Podkanski")))))
