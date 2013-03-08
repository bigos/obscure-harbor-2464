(restas:define-module #:sandstone)

(in-package #:sandstone)

(restas:define-route index ("/")
  (index-view)
  )
