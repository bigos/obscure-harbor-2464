(in-package #:sandstone)

(defun view (arg1 arg2)
  (who:with-html-output-to-string (out)
    (:html
     (:body  
      (:div
       (:a :href (restas:genurl 'index) "see the index")
       (:span :style "margin:0 2em;" "|")
       (:a :href (restas:genurl 'about-me) "info about me"))
      (:hr)    
      (:h1 :id "heading" "Hello Lisp World")
      (:p :class "message"  "Hi everybody, we have success at last. I've made restas run on Heroku.")
      (:p (who:fmt "~s ~s" arg1 arg2)) 		   
      (:p (if (> 1 2) 
	      "other choice"
	      "different choice"))
      (:footer :style "color: white; text-align: center; background:#444;" "&copy; 2013 Jacek Podkanski")))))
