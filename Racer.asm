.486
IDEAL
MODEL small

STACK 0ffh
FILE_NAME_IN  equ 'pictures/intropic.bmp'
INTRO_NAME equ 'pictures/intropic.bmp'
PLAYERS_NAME equ 'pictures/plrnames.bmp'
RULES_NAME equ 'pictures/rules.bmp'
RULES_PAGE_NAME equ 'pictures/rulepage.bmp'
GAME_BUTTON_NAME equ 'pictures/gamebutt.bmp'
TRACK_NAME equ 'pictures/track.bmp'
END_ROAD_NAME equ 'pictures/endroad.bmp'
WINNER_SCREEN_NAME equ 'pictures/winner.bmp'
EXIT_BUTTON_NAME equ 'pictures/exit.bmp'
AGAIN_BUTTON_NAME equ 'pictures/again.bmp'
LOGGING_NAME equ 'log.txt'
LOGS_DIRECTORY equ 'logs/'


DATASEG
;track matrixs-
	VerticalRedTrack30		db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h
						
	HorizontalRedTrack30	db	 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h
							db	 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h

			
	TrackPart30x30			db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
;cars-
	ReplacementVehicle 		db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db   03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h

	FirstPlayerCar 			db   13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h
							db   13h, 06h, 06h, 06h, 06h, 13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 06h, 06h, 06h, 13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 06h, 06h, 13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 06h, 13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 13h
							db   13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h
							db	 03h, 03h, 13h, 06h, 06h, 06h, 13h, 03h, 03h, 03h, 03h, 13h, 06h, 06h, 06h, 13h, 03h, 03h
							db	 03h, 03h, 03h, 13h, 06h, 13h, 03h, 03h, 03h, 03h, 03h, 03h, 13h, 06h, 13h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 13h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 13h, 03h, 03h, 03h, 03h

	SecondPlayerCar 		db   13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h
							db   13h, 06h, 06h, 06h, 06h, 13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 06h, 06h, 06h, 13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 06h, 06h, 13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 06h, 13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 01h, 13h
							db   13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h, 13h
							db	 03h, 03h, 13h, 06h, 06h, 06h, 13h, 03h, 03h, 03h, 03h, 13h, 06h, 06h, 06h, 13h, 03h, 03h
							db	 03h, 03h, 03h, 13h, 06h, 13h, 03h, 03h, 03h, 03h, 03h, 03h, 13h, 06h, 13h, 03h, 03h, 03h
							db	 03h, 03h, 03h, 03h, 13h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 03h, 13h, 03h, 03h, 03h, 03h
	
;show matrix on screen-
	matrix dw ?

;bmp source line-
    ScrLine 	db 320 dup (0)  ; One Color line read buffer
	   
;bmp file data-
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
	WinnerScreenName db WINNER_SCREEN_NAME, 0
	ExitButtonName db EXIT_BUTTON_NAME, 0
	AgainButtonName db AGAIN_BUTTON_NAME, 0

;show bmp data-
	BmpLeft dw ?
	BmpTop dw ?
	BmpColSize dw ?
	BmpRowSize dw ?

;logging file name-
	LoggingName db LOGS_DIRECTORY, 6 dup(' '), 0

;file opening error-
	FileOpenErrorMsg db 'Error At Opening File$'
	ErrorFile db 0

;wait till got clicked on some point-
	Xclick dw ?
	Yclick dw ?
	SquareSize dw ?
	GotClick db ?




;Press any key to continue opening screen-
	PressToContinueNotification db 'Press Any Key To Continue...$'
	
;Player Inputs-
	FirstPlayerName db 'XX------X'
	SecondPlayerName db 'XX------X'

;show line-
	LineFillColor db ?

;cars locations-
	FirstPlayerLocation dw ?
	SecondPlayerLocation dw ?
	PlayerNewLocation dw ?

;contains winning car's number-
	DidPlayerWin db ?

;contains winner's name and final screen message-
	PlayerName db 6 dup(?), '$'
	WinnerNotification db 'The Winner Is: $'

;is one of final screen buttons pressed-
	IsExit db ?
	IsAgain db ?

;contains message for leaving mid-game-
	ExitDuringGameMessage db 'To Exit Press Escape$'
CODESEG


start:
	mov ax, @data
	mov ds, ax

	call Game

exit:
	
	mov ax,2
	int 10h
	
	
	mov ax, 4c00h
	int 21h
	


;==========================
;==========================
;===== Procedures  Area ===
;==========================
;==========================

;=======================================
;====Game- contains whole game==========
;=======================================
proc Game near
	call SetGraphic
BeginGame:
	call RestartGame

	call ShowMainIntro
	cmp [ErrorFile],1
	jne cont1
	call IfError

cont1:
	call ShowContinueNotificationToNames

	xor ah, ah
	int 16h

	call ShowPlayersNamesScreen
	cmp [ErrorFile],1
	jne cont2
	call IfError

cont2:
	call FirstPlayerInputName
	
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

	call ShowWholeTrack

	call PrintEscapeOption

	mov di, 320 * 145 + 140
	call ShowFirstPlayerCar
	mov [FirstPlayerLocation], di

	mov di, 320 * 165 + 140
	call ShowSecondPlayerCar
	mov [SecondPlayerLocation], di

EndlessLoop1:

	mov ah, 1
	int 16h
	mov ah, 0
	int 16h
	jnz EndlessLoop1

	cmp ah, 1
	je EndOfGame

	call MoveFirstPlayerCar
	call MoveSecondPlayerCar

	cmp [DidPlayerWin], 0
	je EndlessLoop1

	call ShowWinnerScreen
	cmp [ErrorFile],1
	jne cont6
	call IfError


cont6:
	call ShowWinnerName

	call CreateALogFile

	call ShowExitButton
	
	call ShowAgainButton

ExitOrAgain:
	call WaitTillExitOrAgainClicked

	mov ax, 2
	int 33h

	cmp [IsAgain], 1
	je BeginGame

	cmp [IsExit], 1
	jne ExitOrAgain

EndOfGame:

	ret
endp Game
;      _             _            __                   _         _                   
;     | |           | |          / _|                 (_)       | |                  
;  ___| |_ __ _ _ __| |_    ___ | |_   _ __ ___   __ _ _ _ __   | | ___   ___  _ __  
; / __| __/ _` | '__| __|  / _ \|  _| | '_ ` _ \ / _` | | '_ \  | |/ _ \ / _ \| '_ \ 
; \__ \ || (_| | |  | |_  | (_) | |   | | | | | | (_| | | | | | | | (_) | (_) | |_) |
; |___/\__\__,_|_|   \__|  \___/|_|   |_| |_| |_|\__,_|_|_| |_| |_|\___/ \___/| .__/ 
;                                                                             | |    
;                                                                             |_|    (main loop actions)
;===============================================================================================
;====RestartGame- restarting all needed variables in case play again button is pressed==========
;===============================================================================================
proc RestartGame near
	push si
	push cx

	mov [LineFillColor],0
	mov [FirstPlayerLocation],0
	mov [SecondPlayerLocation],0
	mov [PlayerNewLocation],0
	mov [DidPlayerWin],0
	mov [IsExit],0
	mov [IsAgain],0

	mov si, 5
	mov cx, 6
RestartLogFile:
	mov [LoggingName + si], ' '
	inc si
	loop RestartLogFile

	pop cx
	pop si
	ret
endp RestartGame


;==================================================
;====SetGraphic- sets dos in graphic mode==========
;==================================================
proc SetGraphic near
	mov ax,13h   
	int 10h
	ret
endp SetGraphic

;===============================================
;====ShowMainIntro- shows start picture=========
;===============================================
proc ShowMainIntro near
	push dx

	mov dx, offset IntroName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize],200

	call OpenShowBmp

	pop dx

	ret
endp ShowMainIntro

;===============================================
;====IfError- error message for bmp files=======
;===============================================
proc IfError near
	push dx
	push ax

	mov dx, offset FileOpenErrorMsg
	mov ah, 9
	int 21h
EndlessLoop:
	jmp Endlessloop

	pop ax
	pop dx

	ret
endp IfError

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

;========================================================================
;====ShowPlayersNamesScreen- shows the screen for player's names=========
;========================================================================
proc ShowPlayersNamesScreen near
	push dx

	mov dx, offset PlayersName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize], 200

	call OpenShowBmp
	
	pop dx
	
	ret
endp ShowPlayersNamesScreen

;==========================================================================
;====FirstPlayerInputName- takes input notification for first player======
;==========================================================================
proc FirstPlayerInputName near
	push dx
	push bx
	push ax

	mov dh, 10
	mov dl, 4
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

;==========================================================================
;====SecondPlayerInputName- takes input notification for second player======
;==========================================================================
proc SecondPlayerInputName near
	push dx
	push bx
	push ax

	mov dh, 10
	mov dl, 25
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

;=======================================================
;====ShowRulesButton- shows the button for rules========
;=======================================================
proc ShowRulesButton near
	push dx

	mov dx, offset RulesName
	mov [BmpLeft],260
	mov [BmpTop],140
	mov [BmpColSize], 60
	mov [BmpRowSize], 60

	call OpenShowBmp
	
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

	mov dx, offset RulesPageName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize] ,200

	call OpenShowBmp

	pop dx
	
	ret
endp ShowRulesScreen

;=======================================================
;====ShowGameButton- shows the button for game==========
;=======================================================
proc ShowGameButton near
	push dx

	mov dx, offset GameButtonName
	mov [BmpLeft],100
	mov [BmpTop],175
	mov [BmpColSize], 100
	mov [BmpRowSize], 25

	call OpenShowBmp
	
	pop dx
	
	ret
endp ShowGameButton

;===============================================================================
;====WaitForButtonToGame- waits for user to click button to game screen=========
;===============================================================================
proc WaitForButtonToGame near
	push ax
	push cx
	push bx
	push dx

	mov ax, 1
	int 33h

	mov ax, 3
IsGameButtonClicked:
	int 33h

	cmp bx, 1
	jne IsGameButtonClicked
	shr cx, 1
	cmp dx, 175
	jb IsGameButtonClicked

	cmp cx, 100
	jb IsGameButtonClicked

	cmp cx, 200
	ja IsGameButtonClicked

	mov ax, 2
	int 33h

	pop dx
	pop bx
	pop cx
	pop ax
	ret
endp WaitForButtonToGame

;===============================================
;====ShowWholeTrack- shows whole track==========
;===============================================
proc ShowWholeTrack near
	push ax
	push bx
	push si
	push di
	push bp
	
	call ShowTrackScreen

	call CreateTrack

	pop bp
	pop di
	pop si
	pop bx
	pop ax

	ret
endp ShowWholeTrack

;====================================================================================
;====PrintEscapeOption- prints message that says that you can exit mid-game==========
;====================================================================================
proc PrintEscapeOption near
	push dx
	push bx
	push ax
	
	mov dh, 24
	mov dl, 11
	xor bh, bh
	mov ah, 2
	int 10h

	lea dx, [ExitDuringGameMessage]
	mov ah, 9
	int 21h
	
	pop ax
	pop bx
	pop dx
	ret
endp PrintEscapeOption

;================================================================
;====ShowFirstPlayerCar- shows blue car for first player=========
;================================================================
proc ShowFirstPlayerCar near
	push cx
	push dx	
	push di

	lea cx, [FirstPlayerCar]
	mov [matrix], cx
	  
	mov dx, 18   ; cols
	mov cx, 13  ;rows
	 
	call PutMatrixInScreen

	pop di
	pop dx
	pop cx

	ret
endp ShowFirstPlayerCar

;================================================================
;====ShowSecondPlayerCar- shows red car for second player========
;================================================================
proc ShowSecondPlayerCar near
	push cx
	push dx	
	push di

	lea cx, [SecondPlayerCar]
	mov [matrix], cx
	  
	mov dx, 18   ; cols
	mov cx, 13  ;rows
	 
	call PutMatrixInScreen

	pop di
	pop dx
	pop cx

	ret
endp ShowSecondPlayerCar

;=========================================================
;====MoveSecondPlayerCar- move car for second player========
;=========================================================
proc MoveSecondPlayerCar near
	push ax
	push bx
	push cx
	push dx
	push si
	push di

	mov di, [SecondPlayerLocation]

	mov si, di

	cmp ah, 48h
	jne NotSecondPlayerW
	sub di, 320 * 5
	jmp ContinueMoveSecondCar

NotSecondPlayerW:
	cmp ah, 50h
	jne NotSecondPlayerS
	add di, 320 * 5
	jmp ContinueMoveSecondCar

NotSecondPlayerS:
	cmp ah, 4Bh
	jne NotSecondPlayerA
	sub di, 5
	call CheckForLeftSideBlackSecondPlayer
	cmp [DidPlayerWin], 0
	jne Player2HitRed

	jmp ContinueMoveSecondCar

NotSecondPlayerA:
	cmp ah, 4Dh
	jne ExitMovePlayerTwo
	add di, 5
	call CheckForRightSideBlack
	je Player2HitRed

ContinueMoveSecondCar:
;check if top left hit red-
	mov ax, di
	mov bx, 320
	xor dx, dx
	div bx
	
	mov cx, dx
	mov dx,ax
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player2HitRed

;check if bottom right hit red-
	add cx,17
	add dx,12
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player2HitRed

;check if top right hit red-
	sub dx, 12
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player2HitRed

;check if bottom left hit red-
	add dx, 12
	sub cx, 17
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player2HitRed

	push di
	mov di, [FirstPlayerLocation]
	call ShowFirstPlayerCar
	pop di
	mov [PlayerNewLocation], si
	call ShowBlankCar
	call ShowSecondPlayerCar
	jmp exitMovePlayerTwo

Player2HitRed:
	mov di, si

exitMovePlayerTwo:
	mov [SecondPlayerLocation], di

	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax

	ret
endp MoveSecondPlayerCar

;=========================================================
;====MoveFirstPlayerCar- move car for first player========
;=========================================================
proc MoveFirstPlayerCar near
	push ax
	push bx
	push cx
	push dx
	push si
	push di

	mov di, [FirstPlayerLocation]

	mov si, di

	cmp ah, 11h
	jne NotFirstPlayerW
	sub di, 320 * 5
	jmp ContinueMoveFirstCar

NotFirstPlayerW:
	cmp ah, 1Fh
	jne NotFirstPlayerS
	add di, 320 * 5
	jmp ContinueMoveFirstCar

NotFirstPlayerS:
	cmp ah, 1Eh
	jne NotFirstPlayerA
	sub di, 5
	call CheckForLeftSideBlackFirstPlayer
	cmp [DidPlayerWin], 0
	jne Player1HitRed

	jmp ContinueMoveFirstCar

NotFirstPlayerA:
	cmp ah, 20h
	jne ExitMovePlayerOne
	add di, 5
	call CheckForRightSideBlack
	je Player1HitRed

ContinueMoveFirstCar:
;check if top left hit red-
	mov ax, di
	mov bx, 320
	xor dx, dx
	div bx
	
	mov cx, dx
	mov dx,ax
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player1HitRed

;check if bottom right hit red-
	add cx,17
	add dx,12
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player1HitRed

;check if top right hit red-
	sub dx, 12
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player1HitRed

;check if bottom left hit red-
	add dx, 12
	sub cx, 17
	mov ah, 0Dh
	int 10h
	cmp al, 01H
	je Player1HitRed

	push di
	mov di, [SecondPlayerLocation]
	call ShowSecondPlayerCar
	pop di
	mov [PlayerNewLocation], si
	call ShowBlankCar
	call ShowFirstPlayerCar
	jmp exitMovePlayerOne

Player1HitRed:
	mov di, si

exitMovePlayerOne:
	mov [FirstPlayerLocation], di

	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax

	ret
endp MoveFirstPlayerCar

;===============================================
;====ShowWinnerScreen- shows winner screen======
;===============================================
proc ShowWinnerScreen near
	push dx

	mov dx, offset WinnerScreenName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize] ,200

	call OpenShowBmp

	pop dx

	ret
endp ShowWinnerScreen

;===============================================
;====ShowWinnerName- shows the winner's name====
;===============================================
proc ShowWinnerName near
	push si
	push bx
	push cx
	push ax
	push dx

	mov si, 2
	xor bx, bx
	mov cx, 6

	cmp [DidPlayerWin], 1
	jne CopyLoopSecondPlayer
	
CopyLoopFirstPlayer:
	mov al, [FirstPlayerName + si]
	mov [PlayerName + bx], al

	inc si
	inc bx
	loop CopyLoopFirstPlayer
	jmp ContWinnerName

CopyLoopSecondPlayer:
	mov al, [SecondPlayerName + si]
	mov [PlayerName + bx], al

	inc si
	inc bx
	loop CopyLoopSecondPlayer

ContWinnerName:
	mov dh, 5
	mov dl, 8
	mov bh, 0
	mov ah, 2
	int 10h

	lea dx, [WinnerNotification]
	mov ah, 9
	int 21h

	lea dx, [PlayerName]
	int 21h

	pop dx
	pop ax
	pop cx
	pop bx
	pop si
	ret
endp ShowWinnerName

;====================================================================
;====CreateALogFile- Creates the file with the winner's name=========
;====================================================================
proc CreateALogFile near
	push si
	push bx
	push cx
	push ax
	push dx

	mov si, 5
	xor bx, bx
	mov cx, 6

CreateLogFileLoop:
	mov dl, [PlayerName + bx]
	cmp dl, 0Dh
	je EndCreateLogLoop
	mov [LoggingName + si], dl
	inc si
	inc bx
	loop CreateLogFileLoop

EndCreateLogLoop:
	mov cx, 0
	lea dx, [LoggingName]
	mov ah, 3Ch
	int 21h
	
	jnc ContinueCreateLog
	call IfError

ContinueCreateLog:
	mov [FileHandle], ax

	mov bx, [FileHandle]
	mov ah, 3Eh
	int 21h

	pop dx
	pop ax
	pop cx
	pop bx
	pop si
	ret
endp CreateALogFile

;=======================================================
;====ShowExitButton- shows the button for rules========
;=======================================================
proc ShowExitButton near
	push dx

	mov dx, offset ExitButtonName
	mov [BmpLeft],250
	mov [BmpTop],130
	mov [BmpColSize], 70
	mov [BmpRowSize], 70

	call OpenShowBmp
	
	pop dx
	
	ret
endp ShowExitButton

;=======================================================
;====ShowAgainButton- shows the button for rules========
;=======================================================
proc ShowAgainButton near
	push dx

	mov dx, offset AgainButtonName
	mov [BmpLeft],0
	mov [BmpTop],130
	mov [BmpColSize], 70
	mov [BmpRowSize], 70

	call OpenShowBmp
	
	pop dx
	
	ret
endp ShowAgainButton

;====================================================================================================
;====WaitTillExitOrAgainClicked- waits until either exit or play again buttons were pressed==========
;====================================================================================================
proc WaitTillExitOrAgainClicked near
	push ax
	push cx
	push bx
	push dx

	mov ax, 1
	int 33h

	mov ax, 3
IsExitClicked:
	int 33h

	cmp bx, 1
	jne IsExitClicked

	shr cx, 1
	cmp dx, 130
	jb IsExitClicked
	cmp cx, 250
	jae IsExitButton
	cmp cx, 70
	jbe IsAgainButton
	jmp IsExitClicked


IsExitButton:	
	mov [isExit], 1
	jmp EndWaitForExitOrAgain

IsAgainButton:
	mov [isAgain], 1


EndWaitForExitOrAgain:
	pop dx
	pop bx
	pop cx
	pop ax
	ret
endp WaitTillExitOrAgainClicked


;                 _          __                   _         _                   
;                | |        / _|                 (_)       | |                  
;   ___ _ __   __| |   ___ | |_   _ __ ___   __ _ _ _ __   | | ___   ___  _ __  
;  / _ \ '_ \ / _` |  / _ \|  _| | '_ ` _ \ / _` | | '_ \  | |/ _ \ / _ \| '_ \ 
; |  __/ | | | (_| | | (_) | |   | | | | | | (_| | | | | | | | (_) | (_) | |_) |
;  \___|_| |_|\__,_|  \___/|_|   |_| |_| |_|\__,_|_|_| |_| |_|\___/ \___/| .__/ 
;                                                                        | |    
;                                                                        |_|    

;===============================================================
;====ShowTrackScreen- shows the main track for the race=========
;===============================================================
proc ShowTrackScreen near
	push dx

	mov dx, offset EndRoadName
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpColSize], 320
	mov [BmpRowSize], 200

	call OpenShowBmp

	pop dx
	
	ret
endp ShowTrackScreen


;==============================================
;====CreateTrack- creates the whole track======
;==============================================
proc CreateTrack near
	push di
	push cx

;first row-
	mov di, 320 * 10 + 10
	call CreateTopLeftTrackPiece

	mov cx, 8
TopTrackLoop:
	add di, 30
	call CreateTopTrackPiece
	loop TopTrackLoop

	add di, 30
	call CreateTopRightTrackPiece

;second row-
	add di, 320 * 29 + 50

	call CreateLeftTrackPiece
	add di, 30
	call Create30x30TrackSquare

	mov cx, 6
TopTrackLoop2:
	add di, 30
	call CreateBottomTrackPiece
	loop TopTrackLoop2

	add di, 30
	call Create30x30TrackSquare
	add di, 30
	call CreateRightTrackPiece

;third and fourth rows-
	mov cx, 2
MiddleTrackLoop:
	add di, 320 * 29 + 50
	call CreateLeftTrackPiece
	add di, 30
	call CreateRightTrackPiece
	add di, 30 * 7
	call CreateLeftTrackPiece
	add di, 30
	call CreateRightTrackPiece
	loop MiddleTrackLoop

;fifth row-
	add di, 320 * 29 + 50
	call CreateLeftTrackPiece
	add di, 30
	call Create30x30TrackSquare

	mov cx, 6
BottomTrackLoop1:
	add di, 30
	call CreateTopTrackPiece
	loop BottomTrackLoop1

	add di, 30
	call Create30x30TrackSquare
	add di, 30
	call CreateRightTrackPiece

;sixth row-
	add di, 320 * 29 + 50
	call CreateBottomLeftTrackPiece

	mov cx, 8
BottomTrackLoop2:
	add di, 30
	call CreateBottomTrackPiece
	loop BottomTrackLoop2

	add di, 30
	call CreateBottomRightTrackPiece

;finish line-
	call CreateFinishLineTrackPiece

	pop cx
	pop di

	ret
endp CreateTrack



;=======================================================================
;====CreateFinishLineTrackPiece- shows the finish line of the track=====
;=======================================================================
;di- start byte on screen
proc CreateFinishLineTrackPiece near
	push cx
	push dx
	push di
	push bx

	xor al, al
	mov si, 60
	mov cx, 170
	mov dx, 130
	call DrawVerticalLine

FinishLineLoop:
	inc cx
	call DrawVerticalLine
	cmp cx, 175
	jne FinishLineLoop

	pop bx
	pop di
	pop dx
	pop cx

	ret
endp CreateFinishLineTrackPiece




;=======================================================================
;====CreateTopRightTrackPiece- shows the top right part of the track====
;=======================================================================
;di- start byte on screen
proc CreateTopRightTrackPiece near

	call CreateRightTrackPiece

	call CreateHorizontalTrackLine

	ret
endp CreateTopRightTrackPiece


;=====================================================================
;====CreateTopLeftTrackPiece- shows the top left part of the track====
;=====================================================================
;di- start byte on screen
proc CreateTopLeftTrackPiece near

	call CreateLeftTrackPiece

	call CreateHorizontalTrackLine

	ret
endp CreateTopLeftTrackPiece


;=====================================================================
;====CreateTopTrackPiece- shows the top part of the track=============
;=====================================================================
;di- start byte on screen
proc CreateTopTrackPiece near

	call Create30x30TrackSquare

	call CreateHorizontalTrackLine

	ret
endp CreateTopTrackPiece


;=====================================================================
;====CreateRightTrackPiece- shows the right part of the track=========
;=====================================================================
;di- start byte on screen
proc CreateRightTrackPiece near
	push di

	call Create30x30TrackSquare

	add di, 25
	call CreateVerticalTrackLine

	pop di

	ret
endp CreateRightTrackPiece


;==================================================================================
;====CreateBottomRightTrackPiece- shows the bottom right part of the track=========
;==================================================================================
;di- start byte on screen
proc CreateBottomRightTrackPiece near
	push di

	call CreateRightTrackPiece

	add di, 320 * 25
	call CreateHorizontalTrackLine

	pop di

	ret
endp CreateBottomRightTrackPiece


;================================================================================
;====CreateBottomLeftTrackPiece- shows the bottom left part of the track=========
;================================================================================
;di- start byte on screen
proc CreateBottomLeftTrackPiece near
	push di

	call CreateLeftTrackPiece

	add di, 320 * 25
	call CreateHorizontalTrackLine

	pop di

	ret
endp CreateBottomLeftTrackPiece

;===================================================================
;====CreateLeftTrackPiece- shows the left part of the track=========
;===================================================================
;di- start byte on screen
proc CreateLeftTrackPiece near

	call Create30x30TrackSquare

	call CreateVerticalTrackLine

	ret
endp CreateLeftTrackPiece

;===================================================================
;====CreateBottomTrackPiece- shows the bottom part of the track=====
;===================================================================
;di- start byte on screen
proc CreateBottomTrackPiece near
	push di

	call Create30x30TrackSquare

	add di, 320 * 25

	call CreateHorizontalTrackLine

	pop di

	ret
endp CreateBottomTrackPiece

;===================================================================
;====CreateHorizontalTrackLine- creates 30x1 line for track=========
;===================================================================
;di- start byte on screen
proc CreateHorizontalTrackLine near
	push cx
	push dx
	push di

	lea cx, [HorizontalRedTrack30]
	mov [matrix], cx
	mov dx, 30
	mov cx, 5

	call PutMatrixInScreen

	pop di
	pop dx
	pop cx

	ret
endp CreateHorizontalTrackLine

;===================================================================
;====CreateVerticalTrackLine- creates 1x30 line for track===========
;===================================================================
;di- start byte on screen
proc CreateVerticalTrackLine near
	push cx
	push dx
	push di

	lea cx, [VerticalRedTrack30]
	mov [matrix], cx
	mov dx, 5
	mov cx, 30

	call PutMatrixInScreen

	pop di
	pop dx
	pop cx

	ret
endp CreateVerticalTrackLine



;===================================================================
;====Create30x30TrackSquare- creates the 30x30 track square=========
;===================================================================
;di- start byte on screen
proc Create30x30TrackSquare near
	push cx
	push dx
	push di

	lea cx, [TrackPart30x30]
	mov [matrix], cx
	mov dx, 30
	mov cx, 30

	call PutMatrixInScreen

	pop di
	pop dx
	pop cx

	ret
endp Create30x30TrackSquare

;==================================================================================================
;====CheckForLeftSideBlackSecondPlayer- Checks if second player hit black on left (he won)=========
;==================================================================================================
proc CheckForLeftSideBlackSecondPlayer near
	push ax
	push bx
	push di
	push dx
	push cx

	mov ax, di
	mov bx, 320
	xor dx, dx
	div bx
	mov cx, dx
	mov dx,ax
	mov ah, 0Dh
	int 10h

	cmp al, 00H
	jne NotLeftSideBlack2
	
	mov [DidPlayerWin], 2
NotLeftSideBlack2:

	pop cx
	pop dx
	pop di
	pop bx
	pop ax
	
	ret
endp CheckForLeftSideBlackSecondPlayer

;================================================================================================
;====CheckForLeftSideBlackFirstPlayer- Checks if first player hit black on left (he won)=========
;================================================================================================
proc CheckForLeftSideBlackFirstPlayer near
	push ax
	push bx
	push di
	push dx
	push cx

	mov ax, di
	mov bx, 320
	xor dx, dx
	div bx
	mov cx, dx
	mov dx,ax
	mov ah, 0Dh
	int 10h

	cmp al, 00H
	jne NotLeftSideBlack
	
	mov [DidPlayerWin], 1
NotLeftSideBlack:

	pop cx
	pop dx
	pop di
	pop bx
	pop ax
	
	ret
endp CheckForLeftSideBlackFirstPlayer

;=======================================================================================================
;====CheckForRightSideBlack- Checks if the right side of a given car has hit black (not leagal)=========
;=======================================================================================================
proc CheckForRightSideBlack near
	push ax
	push bx
	push di
	push dx
	push cx

	mov ax, di
	mov bx, 320
	xor dx, dx
	div bx
	mov cx, dx
	mov dx,ax
	add cx,17
	add dx,12
	mov ah, 0Dh
	int 10h

	cmp al, 00H


	pop cx
	pop dx
	pop di
	pop bx
	pop ax
	
	ret
endp CheckForRightSideBlack


;================================================================
;====ShowBlankCar- shows red car for second player========
;================================================================
proc ShowBlankCar near
	push cx
	push dx	
	push di

	mov di, [PlayerNewLocation]

	lea cx, [ReplacementVehicle]
	mov [matrix], cx
	  
	mov dx, 18   ; cols
	mov cx, 13  ;rows
	 
	call PutMatrixInScreen

	pop di
	pop dx
	pop cx

	ret
endp ShowBlankCar







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
	 
	mov al, [LineFillColor]
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


