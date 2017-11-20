; navigate to next sibling folder from Windows Explorer
; just hit CTRL pgUp or CTRL pgDown
; credits: teadrinker - https://autohotkey.com/boards/viewtopic.php?f=5&t=40200

#If WinActive("ahk_class CabinetWClass") || WinActive("ahk_class ExploreWClass")
^PgUp::
^PgDn:: NavigateToSiblingDir( InStr(A_ThisHotkey, "Up") )

NavigateToSiblingDir(UpDown)  {
   oShell := ComObjCreate("Shell.Application")
   WinGet, hWnd,, A
   for oWin in oShell.Windows  {
	  if (hWnd = oWin.hwnd)  {
		 oFolder := oWin.Document.Folder
		 startDirPath  := oFolder.Self.Path
		 parentDirPath := oFolder.ParentFolder.Self.Path
		 break
	  }
   }
   
   for item in oShell.Namespace(parentDirPath).Items  {
	  if !item.IsFolder
		 continue
	  if (found && nextSiblingPath := item.Path)
		 break
	  if (item.Path = startDirPath && found := true)
		 prevSiblingPath := prev
	  prev := item.Path
   }
   
   if (UpDown && prevSiblingPath)
	  oWin.Navigate(prevSiblingPath)
   if (!UpDown && nextSiblingPath)
	  oWin.Navigate(nextSiblingPath)
}
