; A script to change the Windows Windows and Alt keys into macOS Option and Command Keys
; This helps with ergonomics because you no longer have to stretch your pink to the control key
; Created by Kiran Kunigiri

;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Key names for reference
; <# | LWin
; <! | LAlt
; <^ | LControl

; Before using this script, you must make the following key remapping to the Windows registry
; Use a program like SharpKeys to do this
; Win → Alt
; Alt → Control
; Control → Win

; Command Keys (remapped Alt to Control)
<^Tab::AltTab				; Change AltTab back to normal
<^Left::Send {Home}			; Cmd+Left		→ Beg of line
<^Right::Send {End}			; Cmd+Right		→ End of line
<^Up::Send ^{Home}			; Cmd+Up			→ Beg of Page
<^Down::Send ^{End}			; Cmd+Down		→ End of Page
+<^Left::Send +{Home}		; Cmd+Shift+Left	→ Highlight to beg of line
+<^Right::Send +{End}		; Cmd+Shift+Right	→ Highlight to end of line
+<^Up::Send +^{Home}		; Cmd+Up			→ Highlight to beg of Page
+<^Down::Send +^{End}		; Cmd+Down		→ Highlight to end of Page
<^Backspace::Send {Delete}	; Cmd+Bkspce		→ Delete

; Option Key (remapped Win to Alt key)
<!Left::Send ^{Left}		; Opt+Left		→ Prev word
<!Right::Send ^{Right}		; Opt+Right		→ Next word
+<!Left::Send +^{Left}		; Opt+Left		→ Highlight Prev word
+<!Right::Send +^{Right}		; Opt+Right		→ Highlight Next word
<!Tab:: Send ^{Tab}			; Opt+Tab			→ Next tab