;;; rectangle_area.el computes the area of a rectangle. 
;;;                                                                     
;;; Input: The height and width of the rectangle.
;;; Precondition: The height and wdith are positive numbers.                      
;;; Output: The area of the rectnagle.                                     
;;; 
;;; Begun by:      Charles Blum on 06 Feb 2014
;;; Completed by:  Charles Blum on 06 Feb 2014
;;; Class:         CS 214
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                   

;;; function rectnagleArea computes a rectangle's area,
;;;       given its height and width.
;;; Parameters: h and w, a number.
;;; Precondition: h and w and numbers.                                               
;;; Returns: the area of the rectangle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun rectangleArea (height width)
  "Compute the area of a rectangle, passed its height and width"
  (* width height))



(defun rectangle_area(h w)
  "Compute the area of a rectangle, passed the height and width interactively"
  (interactive "nHeight: ")
  (interactive "nWidth: ")
  (setq area (rectangleArea h w))
  (message "The rectangle's area is %f." area))
