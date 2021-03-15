#!/usr/bin/mumps

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Written by:
;;	
;;	Mike Desch
;;
;; Created on:
;;
::	02 March 2021
;;
;; Description:
;;
;;	A simple hangman game. A word is randomly selected from
;;	one of three categories of words, i.e. any of: "fruits",
;;	"vegetables", or "countries". The category of word is
;;	displayed to the user, and they are allowed to guess a
;;	total of "five" incorrect letters, at which point the
;;	game is lost.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Set the global arrays into which the text files will be read
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; NOTE SYNTAX: delete all prior values stored in ^root
;; kill ^root

 set ^root("fruits")=""
 set ^root("vegetables")=""
 set ^root("countries")=""

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; BEGIN: Testing section
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 write "begin: testing",!!

 write $order(^root())



 write "end: testing",!!


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; END: Testing section
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Begin: Read in from fruits.txt to ^root("fruits",i)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 open 1:"fruits.txt,old"
 if '$test write "oops -- no such file",! halt

 set f=0,i=0

 for  do  if f=1 quit
 . use 1
 . read line
 . if '$test set f=1 quit
 . set ^root("fruits",i)=line
 . use 5
 . write ^root("fruits",i),!
 . set i=i+1

 close 1
 
 use 5
 write !

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; End: Read in from fruits.txt to ^root("fruits",i)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Begin: Read in from vegetables.txt to ^root("vegetables",i)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 open 1:"vegetables.txt,old"
 if '$test write "oops -- no such file",! halt

 set f=0,i=0
 for  do  if f=1 quit
 . use 1
 . read line
 . if '$test set f=1 quit
 . set ^root("vegetables",i)=line
 . use 5
 . write ^root("vegetables",i),!
 . set i=i+1

 close 1

 use 5
 write !

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; End: Read in from vegetables.txt to ^root("vegetables",i)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Begin: Read in from countries.txt to ^root("countries",i)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 open 1:"countries.txt,old"
 if '$test write "oops -- no such file",! halt

 set f=0,i=0
 for  do  if f=1 quit
 . use 1
 . read line
 . if '$test set f=1 quit
 . set ^root("countries",i)=line
 . use 5
 . write ^root("countries",i),!
 . set i=i+1

 close 1

 use 5
 write !

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; End: Read in from vegetables.txt to ^root("countries",i)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Begin: Select random word from ^root 
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 set categorySelection $Random(3)
 set wordSelection $Random

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; End: Select random word from ^root 
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



