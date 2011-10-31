(in-package #:slideware)

(defmacro defslides ((&key title path (layout "layout-normal") (template "template-default")
                           (slides-js-src "http://html5slides.googlecode.com/svn/trunk/slides.js"))
                     &body body)
  (let ((out (gensym))
        (*prologue* "<DOCTYPE HTML>"))
    `(with-open-file (,out ,path :direction :output
                           :if-exists :supersede :if-does-not-exist :create)
       (cl-who:with-html-output (,out)
         (:html
          (:head
           (:title ,title)
           (:meta :charset "utf-8")
           (:script :src ,slides-js-src)
           (:script :src "http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"))

          (:style
           ".smaller { font-size: 80%; }
            ul li ul { margin-top: 1.5em;
                       margin-bottom: 1em; }
            ul li ul li { margin-top: 1em;
                          font-size: 80%; }
            ul li ul.dense li { margin-top: 0em;
                                margin-bottom: 0em;
                                font-size: 80%; }
            h1.center { text-align: center;
                        font-style: italic; }")

          (:body :style "display: none"
                 ;; TODO: Override logo.png from the styles.css in html5slides. Local mirror? jQuery hack?
                 (:section :class ,(concatenate 'string "slides " layout " " template)

                           ,@body)))))))
