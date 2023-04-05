IDEAL
MODEL small

MACRO PUT_CHAR   MY_CHAR
	mov dl,MY_CHAR
	mov ah,2
	int 21h
ENDM 

STACK 0f500h

FILE_NAME_IN  equ 'intropic.bmp'
INTRO_NAME equ 'intropic.bmp'
PLAYERS_NAME equ 'plrnames.bmp'
RULES_NAME equ 'rules.bmp'
RULES_PAGE_NAME equ 'rulepage.bmp'
GAME_BUTTON_NAME equ 'gamebutt.bmp'
TRACK_NAME equ 'track.bmp'
END_ROAD_NAME equ 'endroad.bmp'

BMP_WIDTH = 70
BMP_HEIGHT = 70




DATASEG

    OneBmpLine 	db BMP_WIDTH dup (0)  ; One Color line read buffer

    ScrLine 	db BMP_WIDTH dup (0)  ; One Color line read buffer

	;BMP File data
	FileName 	db FILE_NAME_IN ,0
	FileHandle	dw ?
	Header 	    db 54 dup(0)
	Palette 	db 400h dup (0)

	IntroName db INTRO_NAME, 0
	PlayersName db PLAYERS_NAME, 0
	RulesName db RULES_NAME, 0
	RulesPageName db RULES_PAGE_NAME, 0
	GameButtonName db GAME_BUTTON_NAME, 0
	TrackName db TRACK_NAME, 0
	EndRoadName db END_ROAD_NAME, 0

	IntroHandle dw ?
	PlayersNamesHandle dw ?
	RulesHandle dw ?
	RulesPageHandle dw ?
	GameButtonHandle dw ?
	TrackHandle dw ?
	EndRoadHandle dw ?
	


	BmpFileErrorMsg    	db 'Error At Opening Bmp File$'
	ErrorFile           db 0
	; array for mouse int 33 ax=09 (not a must) 64 bytes


	Color db ?
	Xclick dw ?
	Yclick dw ?
	Xp dw ?
	Yp dw ?
	SquareSize dw ?

	BmpLeft dw ?
	BmpTop dw ?
	BmpColSize dw ?
	BmpRowSize dw ?

;black -0h
;yellow- 3h
;blue -4h
;purple -5h
;teal -6h
;white -7h
;different white -8h
;light blue -9h
;green -10h
;navy green -11h
;khaki -12h
;brown -13h
;light brown -14h
;orange -17h
	YellowCar 	db   0h, 0h, 0h, 0h, 0h, 0h, 0h, 0h, 0h, 0h 
				db   0h, 3h, 3h, 3h, 3h, 3h, 0h, 6h, 6h, 0h
				db   0h, 3h, 3h, 3h, 3h, 3h, 3h, 0h, 6h, 0h
				db   0h, 3h, 3h, 3h, 3h, 3h, 3h, 3h, 0h, 0h
				db   0h, 3h, 3h, 3h, 3h, 3h, 3h, 3h, 3h, 0h
				db   0h, 0h, 0h, 0h, 0h, 0h, 0h, 0h, 0h, 0h
			
	Background	db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
				db	 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
					   


	matrix dw ?

	GotClick db ?
	;-------Press any key to continue-------
	PressToContinueNotification db 'Press Any Key To Continue...$'
	
	;-------Player Inputs-------
	FirstPlayerInputNotification db 'enter player one:$'
	FirstPlayerName db 'XX123456X'
	SecondPlayerInputNotification db 'enter player two:$'
	SecondPlayerName db 'XX123456X'

	;-------Draw Any Line Points-------
	P1X dw ?
	P1Y dw ?
	P2X dw ?
	P2Y dw ?
CODESEG




start:
	mov ax, @data
	mov ds, ax

	call SetGraphic

;	xor di, di
;	mov cx, 2
;colorloop1:
;	push cx
;
;		mov cx, 16
;	colorloop:
;		push cx
;
;		lea cx, [Background]
;		mov [matrix] ,cx
;		
;		mov dx, 20   ; cols
;		mov cx, 10   ;rows
;		
;		push di
;		call putMatrixInScreen
;		pop di
;		add di, 20
;		pop cx
;		loop colorloop
;
;	mov di, 3200
;	pop cx
;	loop colorloop1
;
	mov si, -50
	mov al, 6
	mov cx, 10
	mov dx, 150
	call DrawVerticalLine

	xor ah, ah
	int 16h
	mov ah, 1
	int 16h

		
	call ShowMainIntro
	cmp [ErrorFile],1
	jne cont1
	call IfError

cont1:
	call ShowContinueNotificationToNames
	call WaitForButtonToBePressed

	call ShowPlayersNamesScreen
	cmp [ErrorFile],1
	jne cont2
	call IfError

cont2:
	call PrintPlayerOneInputNotification
	call FirstPlayerInputName
	
	call PrintPlayerTwoInputNotification
	call SecondPlayerInputName
	
	call ShowRulesButton
	cmp [ErrorFile],1
	jne cont3
	call IfError

cont3:
	call WaitForButtonToRules
	
	call ShowRulesScreen
	cmp [ErrorFile],1
	jne cont4
	call IfError

cont4:
	call ShowGameButton
	cmp [ErrorFile],1
	jne cont5
	call IfError

cont5:
	call WaitForButtonToGame

	call ShowTrackScreen
	cmp [ErrorFile],1
	jne cont6
	call IfError

cont6:

	call ShowYellowCar

	mov cx, 1
	mov dx, 1
	mov ah, 0Dh
	int 10h

exit:
	xor ah, ah
	int 16h
	mov ah, 1
	int 16h
	
	mov ax,2
	int 10h
	
	
	mov ax, 4c00h
	int 21h
	


;==========================
;==========================
;===== Procedures  Area ===
;==========================
;==========================


;===============================================
;====ShowMainIntro- shows start picture=========
;===============================================
proc ShowMainIntro near
	push dx
	push ax

	mov dx, offset IntroName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize] ,200

	call OpenShowBmp
	mov ax, [FileHandle]
	mov [introhandle], ax

	pop ax
	pop dx

	ret
endp ShowMainIntro


;===========================================================================================
;====ShowContinueNotificationToNames- show notification to continue to names screen=========
;===========================================================================================
proc ShowContinueNotificationToNames near
	push dx
	push bx
	push ax

	mov dh, 23
	mov dl, 6
	xor bh, bh
	mov ah, 2
	int 10h

	mov dx, offset PressToContinueNotification
	mov ah, 9
	int 21h

	pop ax
	pop bx
	pop dx

	ret
endp ShowContinueNotificationToNames


;=======================================================================
;====WaitForButtonToBePressed- waits for any button to be pressed=======
;=======================================================================
proc WaitForButtonToBePressed near
	push ax

	xor ah, ah
	int 16h

	pop ax

	ret
endp WaitForButtonToBePressed


;========================================================================
;====ShowPlayersNamesScreen- shows the screen for player's names=========
;========================================================================
proc ShowPlayersNamesScreen near
	push dx
	push ax

	mov dx, offset PlayersName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize], 200

	call OpenShowBmp
	mov ax, [FileHandle]
	mov [PlayersNamesHandle], ax
	
	pop ax
	pop dx
	
	ret
endp ShowPlayersNamesScreen

;======================================================================================
;====PrintPlayerOneInputNotification- prints input notification for first player=======
;======================================================================================
proc PrintPlayerOneInputNotification near
	push dx
	push bx
	push ax
	
	mov dh, 8
	mov dl, 0
	xor bh, bh
	mov ah, 2
	int 10h

	mov dx, offset FirstPlayerInputNotification
	mov ah, 9
	int 21h
	
	pop ax
	pop bx
	pop dx

	ret
endp PrintPlayerOneInputNotification


;==========================================================================
;====FirstPlayerInputName- takes input notification for first player======
;==========================================================================
proc FirstPlayerInputName near
	push dx
	push bx
	push ax

	mov dh, 10
	mov dl, 0
	xor bh, bh
	mov ah, 2
	int 10h
	
	mov [byte FirstPlayerName], 7
	mov dx, offset FirstPlayerName
	mov ah, 0Ah
	int 21h
	
	pop ax
	pop bx
	pop dx

	ret
endp FirstPlayerInputName


;======================================================================================
;====PrintPlayerTwoInputNotification- prints input notification for second player======
;======================================================================================
proc PrintPlayerTwoInputNotification near
	push dx
	push bx
	push ax
	
	mov dh, 8
	mov dl, 21
	xor bh, bh
	mov ah, 2
	int 10h

	mov dx, offset SecondPlayerInputNotification
	mov ah, 9
	int 21h
	
	pop ax
	pop bx
	pop dx

	ret
endp PrintPlayerTwoInputNotification

;==========================================================================
;====SecondPlayerInputName- takes input notification for second player======
;==========================================================================
proc SecondPlayerInputName near
	push dx
	push bx
	push ax

	mov dh, 10
	mov dl, 21
	xor bh, bh
	mov ah, 2
	int 10h
	
	mov [byte SecondPlayerName], 7
	mov dx, offset SecondPlayerName
	mov ah, 0Ah
	int 21h
	
	pop ax
	pop bx
	pop dx

	ret
endp SecondPlayerInputName


;===============================================
;====IfError- error message for bmp files=======
;===============================================
proc IfError near
	push dx
	push ax

	mov dx, offset BmpFileErrorMsg
	mov ah, 9
	int 21h
EndlessLoop:
	jmp Endlessloop

	pop ax
	pop dx

	ret
endp IfError

;=======================================================
;====ShowRulesButton- shows the button for rules========
;=======================================================
proc ShowRulesButton near
	push dx
	push ax

	mov dx, offset RulesName
	mov [BmpLeft],260
	mov [BmpTop],140
	mov [BmpColSize], 60
	mov [BmpRowSize], 60

	call OpenShowBmp
	mov ax, [FileHandle]
	mov [RulesHandle], ax
	
	pop ax
	pop dx
	
	ret
endp ShowRulesButton

;=================================================================================
;====WaitForButtonToRules- waits for user to click button to rules screen=========
;=================================================================================
proc WaitForButtonToRules near
	mov [Xclick], 290
	mov [Yclick], 170
	mov [squaresize], 30
	call waittillgotclickonsomepoint

	ret
endp WaitForButtonToRules

;=================================================================================
;====ShowRulesScreen- shows screen with rules=========
;=================================================================================
proc ShowRulesScreen near
	push dx
	push ax

	mov dx, offset RulesPageName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize] ,200

	call OpenShowBmp
	mov ax, [FileHandle]
	mov [RulesPageHandle], ax

	pop ax
	pop dx
	
	ret
endp ShowRulesScreen


;=======================================================
;====ShowGameButton- shows the button for game==========
;=======================================================
proc ShowGameButton near
	push dx
	push ax

	mov dx, offset GameButtonName
	mov [BmpLeft],270
	mov [BmpTop],150
	mov [BmpColSize], 50
	mov [BmpRowSize], 50

	call OpenShowBmp
	mov ax, [FileHandle]
	mov [GameButtonHandle], ax
	
	pop ax
	pop dx
	
	ret
endp ShowGameButton

;===============================================================================
;====WaitForButtonToGame- waits for user to click button to game screen=========
;===============================================================================
proc WaitForButtonToGame near
	mov [Xclick], 295
	mov [Yclick], 175
	mov [squaresize], 25
	call waittillgotclickonsomepoint

	ret
endp WaitForButtonToGame

;===============================================================
;====ShowTrackScreen- shows the main track for the race=========
;===============================================================
proc ShowTrackScreen near
	push dx
	push ax

	mov dx, offset TrackName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize], 200

	call OpenShowBmp
	mov ax, [FileHandle]
	mov [TrackHandle], ax
	
	pop ax
	pop dx
	
	ret
endp ShowTrackScreen

;=========================================================
;====ShowYellowCar- shows blue car for first player=========
;=========================================================
proc ShowYellowCar near
	push di
	push cx
	push dx	

	mov di, 0A000H
	lea cx, [YellowCar]
	mov [matrix] ,cx
	  
	mov dx, 10   ; cols
	mov cx, 6  ;rows
	 
	call putMatrixInScreen

	pop dx
	pop cx
	pop di

	ret
endp ShowYellowCar


proc DrawAnyLine near
	push ax
	push bx
	push si
	push cx
	push dx

	mov ax, [P1X]
	mov bx, [P2X]
	cmp ax, bx
	jne ContDrawLine1

	mov si, [P2Y]
	sub si, [P1Y]
	mov cx, [P1X]
	mov dx, [P1Y]
	call DrawVerticalLine

ContDrawLine1:
	mov ax, [P1Y]
	mov bx, [P2Y]
	cmp ax, bx
	

	ret
endp DrawAnyLine





proc OpenShowBmp near
	
	 
	call OpenBmpFile
	cmp [ErrorFile],1
	je @@ExitProc
	
	call ReadBmpHeader
	
	call ReadBmpPalette
	
	call CopyBmpPalette
	
	call ShowBMP
	
	 
	call CloseBmpFile

@@ExitProc:
	ret
endp OpenShowBmp

 
 
	
; input dx filename to open
proc OpenBmpFile	near						 
	mov ah, 3Dh
	xor al, al
	int 21h
	jc @@ErrorAtOpen
	mov [FileHandle], ax
	jmp @@ExitProc
	
@@ErrorAtOpen:
	mov [ErrorFile],1
@@ExitProc:	
	ret
endp OpenBmpFile
 
 
 



proc CloseBmpFile near
	mov ah,3Eh
	mov bx, [FileHandle]
	int 21h
	ret
endp CloseBmpFile




; Read 54 bytes the Header
proc ReadBmpHeader	near					
	push cx
	push dx
	
	mov ah,3fh
	mov bx, [FileHandle]
	mov cx,54
	mov dx,offset Header
	int 21h
	
	pop dx
	pop cx
	ret
endp ReadBmpHeader



proc ReadBmpPalette near ; Read BMP file color palette, 256 colors * 4 bytes (400h)
						 ; 4 bytes for each color BGR + null)			
	push cx
	push dx
	
	mov ah,3fh
	mov cx,400h
	mov dx,offset Palette
	int 21h
	
	pop dx
	pop cx
	
	ret
endp ReadBmpPalette


; Will move out to screen memory the colors
; video ports are 3C8h for number of first color
; and 3C9h for all rest
proc CopyBmpPalette		near					
										
	push cx
	push dx
	
	mov si,offset Palette
	mov cx,256
	mov dx,3C8h
	mov al,0  ; black first							
	out dx,al ;3C8h
	inc dx	  ;3C9h
CopyNextColor:
	mov al,[si+2] 		; Red				
	shr al,2 			; divide by 4 Max (cos max is 63 and we have here max 255 ) (loosing color resolution).				
	out dx,al 						
	mov al,[si+1] 		; Green.				
	shr al,2            
	out dx,al 							
	mov al,[si] 		; Blue.				
	shr al,2            
	out dx,al 							
	add si,4 			; Point to next color.  (4 bytes for each color BGR + null)				
								
	loop CopyNextColor
	
	pop dx
	pop cx
	
	ret
endp CopyBmpPalette


 
 
proc DrawHorizontalLine	near
	push si
	push cx

	cmp si, 0
	jge DrawLine
	neg si
	sub cx, si

DrawLine:
	cmp si,0
	jz ExitDrawLine	
	 
    mov ah,0ch	
	int 10h    ; put pixel
	 
	
	inc cx
	dec si
	jmp DrawLine
	
	
ExitDrawLine:
	pop cx
    pop si
	ret
endp DrawHorizontalLine



proc DrawVerticalLine	near
	push si
	push dx
 
	cmp si, 0
	jge DrawVertical
	neg si
	sub dx, si

DrawVertical:
	cmp si,0
	jz @@ExitDrawLine	
	 
    mov ah,0ch	
	int 10h    ; put pixel
	
	 
	
	inc dx
	dec si
	jmp DrawVertical
	
	
@@ExitDrawLine:
	pop dx
    pop si
	ret
endp DrawVerticalLine



; cx = col dx= row al = color si = height di = width 
proc Rect
	push cx
	push di
NextVerticalLine:	
	
	cmp di,0
	jz @@EndRect
	
	cmp si,0
	jz @@EndRect
	call DrawVerticalLine
	inc cx
	dec di
	jmp NextVerticalLine
	
	
@@EndRect:
	pop di
	pop cx
	ret
endp Rect



proc DrawSquare
	push si
	push ax
	push cx
	push dx
	
	mov al,[Color]
	mov si,[SquareSize]  ; line Length
 	mov cx,[Xp]
	mov dx,[Yp]
	call DrawHorizontalLine

	 
	
	call DrawVerticalLine
	 
	
	add dx ,si
	dec dx
	call DrawHorizontalLine
	 
	
	
	sub  dx ,si
	inc dx
	add cx,si
	dec cx
	call DrawVerticalLine
	
	
	 pop dx
	 pop cx
	 pop ax
	 pop si
	 
	ret
endp DrawSquare




 
   
proc  SetGraphic
	mov ax,13h   ; 320 X 200 
				 ;Mode 13h is an IBM VGA BIOS mode. It is the specific standard 256-color mode 
	int 10h
	ret
endp 	SetGraphic

 

 
 
 


proc ShowBMP 
; BMP graphics are saved upside-down.
; Read the graphic line by line (BmpRowSize lines in VGA format),
; displaying the lines from bottom to top.
	push cx
	
	mov ax, 0A000h
	mov es, ax
	
	mov cx,[BmpRowSize]
	
 
	mov ax,[BmpColSize] ; row size must dived by 4 so if it less we must calculate the extra padding bytes
	xor dx,dx
	mov si,4
	div si
	cmp dx,0
	mov bp,0
	jz @@row_ok
	mov bp,4
	sub bp,dx

@@row_ok:	
	mov dx,[BmpLeft]
	
@@NextLine:
	push cx
	push dx
	
	mov di,cx  ; Current Row at the small bmp (each time -1)
	add di,[BmpTop] ; add the Y on entire screen
	
 
	; next 5 lines  di will be  = cx*320 + dx , point to the correct screen line
	dec di
	mov cx,di
	shl cx,6
	shl di,8
	add di,cx
	add di,dx
	 
	; small Read one line
	mov ah,3fh
	mov cx,[BmpColSize]  
	add cx,bp  ; extra  bytes to each row must be divided by 4
	mov dx,offset ScrLine
	int 21h
	; Copy one line into video memory
	cld ; Clear direction flag, for movsb
	mov cx,[BmpColSize]  
	mov si,offset ScrLine
	rep movsb ; Copy line to the screen
	
	pop dx
	pop cx
	 
	loop @@NextLine
	
	pop cx
	ret
endp ShowBMP 


; in dx how many cols 
; in cx how many rows
; in matrix - the bytes
; in di start byte in screen (0 64000 -1)

proc putMatrixInScreen
	push es
	push ax
	push si
	
	mov ax, 0A000h
	mov es, ax
	cld
	
	push dx
	mov ax,cx
	mul dx
	mov bp,ax
	pop dx
	
	
	mov si,[matrix]
	
NextRow:	
	push cx
	
	mov cx, dx
	rep movsb ; Copy line to the screen
	sub di,dx
	add di, 320
	
	
	pop cx
	loop NextRow
	
	
endProc:	
	
	pop si
	pop ax
	pop es
    ret
endp putMatrixInScreen

; Sync wait for mouse click
proc WaitTillGotClickOnSomePoint
	push si
	push ax
	push bx
	push cx
	push dx
	
	mov ax,1
	int 33h
	
	
ClickWaitWithDelay:
	mov cx,1000
ag:	
	loop ag
WaitTillPressOnPoint:

	mov ax,5h
	mov bx,0 ; quary the left b
	int 33h
	
	
	cmp bx,00h
	jna ClickWaitWithDelay  ; mouse wasn't pressed
	and ax,0001h
	jz ClickWaitWithDelay   ; left wasn't pressed

 	
	shr cx,1
	mov si, cx 
	add si, [SquareSize]
	cmp si , [Xclick]
	jl WaitTillPressOnPoint
	mov si, cx 
	sub si, [SquareSize]
	cmp si , [Xclick]
	jg WaitTillPressOnPoint
	
	
	mov si, dx 
	add si, [SquareSize]
	cmp si , [Yclick]
	jl WaitTillPressOnPoint
	mov si, dx 
	sub si, [SquareSize]
	cmp si , [Yclick]
	jg WaitTillPressOnPoint
	mov [GotClick],1
	jmp @@EndProc
ClickForExit:	
	mov [GotClick],0
@@EndProc:
	mov ax,2
	int 33h
	
	pop dx
	pop cx
	pop bx
	pop ax
	pop si
	ret
endp WaitTillGotClickOnSomePoint
 
END start


