(in-package #:sandstone)

(defun view-about-me ()
  (who:with-html-output-to-string (out)
    (:html
     (:body    
      (:div
       (:a :href (restas:genurl 'index) "see the index")
       (:span :style "margin:0 2em;" "|")
       (:a :href (restas:genurl 'about-me) "info about me")) 
      (:hr)
      (:h1 "About me")
      (:p "Some info about me will go here.")
      (:footer :style "color: white; text-align: center; background:#444;" "&copy; 2013 Jacek Podkanski")))))
