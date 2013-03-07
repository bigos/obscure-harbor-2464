to run it on devel machine try:

(push #p"/home/jacek/Programming/Heroku/obscure-harbor-2464/sandstone/" asdf:*central-registry*)
(ql:quickload :sandstone)
(restas:start '#:sandstone :port 5000)
