((nil . ((indent-tabs-mode . nil)       ; always use spaces for tabs
         (require-final-newline . t)))  ; add final newline on save
 (js2-mode . ((js2-mode-show-parse-errors . nil)      ; these settings will let flycheck do everything through eslint,
              (js2-mode-show-strict-warnings . nil))) ; because js2-mode can't handle flowtype
 (clojure-mode . ((eval . (progn
                            ;; Specify which arg is the docstring for certain macros
                            ;; (Add more as needed)
                            (put 'defendpoint 'clojure-doc-string-elt 3)
                            (put 'defendpoint-async 'clojure-doc-string-elt 3)
                            (put 'api/defendpoint 'clojure-doc-string-elt 3)
                            (put 'api/defendpoint-async 'clojure-doc-string-elt 3)
                            (put 'defsetting 'clojure-doc-string-elt 2)
                            (put 'setting/defsetting 'clojure-doc-string-elt 2)
                            (put 's/defn 'clojure-doc-string-elt 2)
                            (put 'p.types/defprotocol+ 'clojure-doc-string-elt 2)

                            ;; Define custom indentation for functions inside metabase.
                            ;; This list isn't complete; add more forms as we come across them.
                            ;;
                            ;; `put-clojure-indent' is a safe-local-eval-function, so use a bunch of calls to that
                            ;; instead of one call to `define-clojure-indent'
                            (put-clojure-indent 'c/step 1)
                            (put-clojure-indent 'db/insert-many! 1)
                            (put-clojure-indent 'impl/test-migrations 2)
                            (put-clojure-indent 'l/matcha '(1 (:defn)))
                            (put-clojure-indent 'l/matche '(1 (:defn)))
                            (put-clojure-indent 'let-404 1)
                            (put-clojure-indent 'macros/case 0)
                            (put-clojure-indent 'match 1)
                            (put-clojure-indent 'mbql.match/match 1)
                            (put-clojure-indent 'mbql.match/match-one 1)
                            (put-clojure-indent 'mbql.match/replace 1)
                            (put-clojure-indent 'mbql.match/replace-in 2)
                            (put-clojure-indent 'mt/dataset 1)
                            (put-clojure-indent 'mt/query 1)
                            (put-clojure-indent 'mt/test-drivers 1)
                            (put-clojure-indent 'p.types/def-abstract-type '(1 (:defn)))
                            (put-clojure-indent 'p.types/defprotocol+ '(1 (:defn)))
                            (put-clojure-indent 'p.types/defrecord+ '(2 nil nil (:defn)))
                            (put-clojure-indent 'p.types/deftype+ '(2 nil nil (:defn)))
                            (put-clojure-indent 'p/def-map-type '(2 nil nil (:defn)))
                            (put-clojure-indent 'p/defprotocol+ '(1 (:defn)))
                            (put-clojure-indent 'prop/for-all 1)
                            (put-clojure-indent 'qp.streaming/streaming-response 1)
                            (put-clojure-indent 't/with-offset-same-instant '(:form))
                            (put-clojure-indent 'tools.macro/macrolet '(1 ((:defn)) :form))))
                  (cider-clojure-cli-aliases . "dev:drivers:drivers-dev:ee:ee-dev:user")
                  (clojure-indent-style . always-align)
                  ;; if you're using clj-refactor (highly recommended!)
                  (cljr-favor-prefix-notation . nil)
                  ;; prefer keeping source width about ~118, GitHub seems to cut off stuff at either 119 or 120 and
                  ;; it's nicer to look at code in GH when you don't have to scroll back and forth
                  (fill-column . 118)
                  (clojure-docstring-fill-column . 118)
                  (cider-preferred-build-tool . clojure-cli))))
