


(in-package #:sandstone)

(restas:define-route index ("/") 
  (application "index"))

(restas:define-route about-me ("/about-me") 
  (application "about-me"))


