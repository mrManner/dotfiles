;;; Always use vi keybinds
(define-configuration buffer
   ((default-modes
     (pushnew 'nyxt/mode/vi:vi-normal-mode %slot-value%))))

;;; Set up search engines
(defvar *search-engine-configs* (list '("ddg"
                                        "https://duckduckgo.com/search?q=~a"
                                        "https://duckduckgo.com") '("doi"
                                        "https://dx.doi.org/~a"
                                        "https://dx.doi.org")) "My search
  engines") (define-configuration context-buffer "Make search engines of all
  objects in the list of search engine configs" ((search-engines (append
  (mapcar (lambda (engine-config) (apply 'make-search-engine engine-config))
          *search-engine-configs*) %slot-default%))))

