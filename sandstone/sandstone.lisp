


(in-package #:sandstone)

(restas:define-route index ("/") 
  (view "show me index" 
	"abcdef"
	))

(restas:define-route about-me ("/about-me") 
  (view-about-me "more info please"))
