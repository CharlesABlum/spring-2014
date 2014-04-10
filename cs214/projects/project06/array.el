;;; array.el takes a user defined number of inputs
;;; and then writes them back to the user
;;;
;;; Begun by:Charles Blum, CS 214 at Calvin College.
;;; Completed by: Charles Blum
;;; Date: 02 April 2014
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readArray takes in itsSize number of inputs.  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun readArray (anArray itsSize)
  (setq i 0)
  (while (< i itsSize)
    (setq value (read))
    (aset anArray i value)
    (setq i (+ i 1))
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; writeArray takes in x number of inputs.      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun writeArray (anArray itsSize buf)
  (setq i 0)
  (while (< i itsSize)
    (princ (aref anArray i) buf)
    (princ " " buf)
    (setq i (+ i 1))
  )
)

(defun main (size)
  (interactive "nEnter an array size: ")
  (setq anArray (make-vector size 0))
  (readArray anArray size)
  (if (get-buffer "project06.out")
      (kill-buffer "project06.out"))
  (setq buf (switch-to-buffer-other-window "project06.out"))
  (writeArray anArray size buf)
)

