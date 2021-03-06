#|
  This file is a part of sandstone project.
|#

(in-package :cl-user)
(defpackage sandstone-asd
  (:use :cl :asdf))
(in-package :sandstone-asd)

(defsystem sandstone
  :version "0.1"
  :author ""
  :license ""
  :depends-on (:restas 
	       :cl-who)
  :components ((:file "packages")
	       (:module "views"
			:components ((:file "application")))
	       (:file "sandstone" :depends-on ("views" "packages")))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (load-op sandstone-test))))
