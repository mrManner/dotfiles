;;; Always use vi keybinds
(define-configuration buffer
                      ((default-modes
                         (pushnew 'nyxt/mode/vi:vi-normal-mode %slot-value%))))
