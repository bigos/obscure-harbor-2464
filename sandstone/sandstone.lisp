(restas:define-module #:sandstone)

(in-package #:sandstone)

(restas:define-route index ("/")
  (who:with-html-output-to-string (out)
    (:html
     (:head (:title "Restas example"))
     (:body
      (:h1 "Hello world")
      (:p "Try using restas and cl-who.")))))
