 
(require 'asdf)
(asdf:disable-output-translations)

(push #p"/app/sandstone/" asdf:*central-registry*)

(ql:quickload :sandstone)
(restas:start '#:sandstone :port (parse-integer (sb-ext:posix-getenv "PORT")))
