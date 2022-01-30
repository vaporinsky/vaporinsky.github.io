(require 'package)                                                              
(setq package-archives                                                          
      '(("gnu" . "https://elpa.gnu.org/packages/")                              
        ("melpa-stb" . "https://stable.melpa.org/packages/")                    
        ("melpa" . "https://melpa.org/packages/"))                              
      tls-checktrust t                                                          
      tls-program '("gnutls-cli --x509cafile %t -p %p %h")                      
      gnutls-verify-error t)

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(package-install 'htmlize)

(require 'ox-publish)

(setq org-html-validation-link nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-html-head ;;nil
;      "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" /> "
 "<link rel=\"stylesheet\" href=\"https://unpkg.com/purecss@2.0.6/build/pure-min.css\" /> " 
      )

(setq org-publish-project-alist
      (list
       (list "my-org-site"
	     :recursive t
	     :base-directory "./"
	     :publishing-directory "./public"
	     :publishing-function 'org-html-publish-to-html
	     :with-author nil
	     :with-creater nil
	     :with-toc nil
	     :section-number nil
	     :time-stamp-file nil

)))


(org-publish-all t)

(message "Build Complete!")
