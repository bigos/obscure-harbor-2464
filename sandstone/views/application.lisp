(in-package #:sandstone)

(defun aux-toolbar ()
  (who:with-html-output-to-string (out nil :indent t)
    (:div :id "toolbar"
     (:a :href (restas:genurl 'index) "see the index")
     (:span :style "margin:0 1em;" "|")
     (:a :href (restas:genurl 'about-me) "info about me"))))

(defun aux-about ()
  (who:with-html-output-to-string (out nil :indent t)
    (:div
     (:h1 "New about me")
     (:p  "New info about me"))))

(defun aux-index ()
  (who:with-html-output-to-string (out nil :indent t)
    (:div
     (:h1 "Hello Lisp World!")
     (:p :class "message"  "Hi everybody, we have success at last. I've made restas run on Heroku.")
     )))

(defun application (view)
  (who:with-html-output-to-string (out nil :prologue t :indent t)
    (:html
     (:head 
      (:title "More advanced restas application.")
      (:style :type "text/css" 
	      "
body{background:#fafffe;}

div#toolbar{color:white;
background:#777;
padding:0.25em;}
div#toolbar a{color:white;}

div#content{border:solid red 1px;}
"
	      )
      )
     (:body    
      (who:fmt "~a" (aux-toolbar))
      (:hr)
      (:content
       (who:fmt "~a" (if (equal view "about-me") (aux-about) (aux-index))))
      (:footer :style "color: white; text-align: center; background:#444;" "&copy; 2013 Jacek Podkanski")))))
