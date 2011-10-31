(defsystem #:slideware
  :name "Slideware"
  :description "A simple library for using Google's html5-slides."
  :version "0.1"
  :license "BSD"
  :pathname "src/"
  :serial t
  :depends-on (#:parenscript
               #:cl-who)
  :components ((:file "package")
               (:file "slideware")))
