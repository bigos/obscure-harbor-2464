


(in-package #:sandstone)

(restas:define-route index ("/") 
  (view))

(restas:define-route about-me ("/about-me") 
  (view-about-me))
