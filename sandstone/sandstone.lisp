
(restas:define-module #:sandstone
    (:use #:cl #:iter)
  )

(in-package #:sandstone)


(restas:define-route index ("/") 
  (view)
  )
