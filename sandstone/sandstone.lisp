(restas:define-module #:sandstone)

(in-package #:sandstone)

(restas:define-route index ("/") 
  (who:with-html-output-to-string (out)
    (:html
     (:body
      
      (:h1 :id "heading" "Hello World")
      (:p :class "message"  "Hi everyone")))))
