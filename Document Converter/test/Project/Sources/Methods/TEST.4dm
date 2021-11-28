//%attributes = {}
$folder:=Folder:C1567(fk desktop folder:K87:19).folder("Convert document")
$folder.delete(Delete with contents:K24:24)
$folder.create()

C_OBJECT:C1216($options)
OB SET:C1220($options;DOC_TIMEOUT;60)

For each ($file;Folder:C1567(fk resources folder:K87:11).files(fk ignore invisible:K87:22 | fk recursive:K87:7))
	
	If ($file.extension=".rtf")
		$RTF:=$file.getContent()
		$HTML:=Convert document ($RTF;Document format RTF;Document format HTML;$options)
		$folder.file($file.name+".html").setContent($HTML)
	End if 
	
End for each 