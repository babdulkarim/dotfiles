;;--------------------------------;
;; Custom functions
;;--------------------------------;

;; delete blank lines at EOF
(defun my-other-delete-trailing-blank-lines ()
  "Deletes all blank lines at the end of the file, even the last one"
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines)
      (let ((trailnewlines (abs (skip-chars-backward "\n\t"))))
        (if (> trailnewlines 0)
          (progn
            (delete-char trailnewlines)))))))

;; move file to new location
(defun move-file (new-location)
	"Write this file to NEW-LOCATION, and delete the old one."
	(interactive (list (expand-file-name
											(if buffer-file-name
													(read-file-name "Move file to: ")
												(read-file-name "Move file to: "
																				default-directory
																				(expand-file-name (file-name-nondirectory (buffer-name))
																													default-directory))))))
	(when (file-exists-p new-location)
		(delete-file new-location))
	(let ((old-location (expand-file-name (buffer-file-name))))
		(message "old file is %s and new file is %s"
						 old-location
						 new-location)
		(write-file new-location t)
		(when (and old-location
							 (file-exists-p new-location)
							 (not (string-equal old-location new-location)))
			(delete-file old-location))))
