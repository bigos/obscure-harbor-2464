(in-package #:sandstone)


(defun partial-view (a1)
  (if (equal a1 "zzz")
      (who:with-html-output-to-string (out)
	(:div (:b "got it")))
      (who:with-html-output-to-string (out)
	(:div (:i "don't get it"))))
)

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
      (:p (who:fmt "~a" (if (> 1 2) 
			    (partial-view "abc")
			    (partial-view "zzz"))))
      (:footer :style "color: white; text-align: center; background:#444;" "&copy; 2013 Jacek Podkanski")))))
