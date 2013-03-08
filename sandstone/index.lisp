(in-package :sandstone)

(defun index-view ()
(who:with-html-output-to-string (out)
  (:html
   (:head
    (:title "view test"))
   (:body
    (:h1 "testing view")
    (:p "and having fun."))))
)
