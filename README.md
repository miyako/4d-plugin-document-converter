4d-plugin-document-convert
==========================

Convert different styled-text documents. Simplified version of [textutil] (https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/textutil.1.html).

Example
-------

```
C_BLOB($html)

$code:=HTTP Get("http://www.4d.com";$html)

$path:=System folder(Desktop)+Generate UUID

If (200=$code)

$baseUrl:="http://www.4d.com"

$rtf:=Convert document ($html;Document format HTML;Document format RTF;$baseUrl)
$doc:=Convert document ($html;Document format HTML;Document format DOC;$baseUrl)
$docx:=Convert document ($html;Document format HTML;Document format DOCX;$baseUrl)
$odt:=Convert document ($html;Document format HTML;Document format ODT;$baseUrl)
$xml:=Convert document ($html;Document format HTML;Document format WORDML;$baseUrl)
$txt:=Convert document ($html;Document format HTML;Document format TXT;$baseUrl)

BLOB TO DOCUMENT($path+".rtf";$rtf)
BLOB TO DOCUMENT($path+".doc";$doc)
BLOB TO DOCUMENT($path+".docx";$docx)
BLOB TO DOCUMENT($path+".odt";$odt)
BLOB TO DOCUMENT($path+".xml";$xml)
BLOB TO DOCUMENT($path+".txt";$txt)

End if 
```
