4d-plugin-document-converter
============================

Convert different styled-text documents. Simplified version of [textutil](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/textutil.1.html).

Source and destination formats can be rtf, doc, docx, odt, wordml (extension xml) or txt.

* Previous branches

[v1](https://github.com/miyako/4d-plugin-document-converter/tree/v1)

### Platform

| carbon | cocoa | win32 | win64 |
|:------:|:-----:|:---------:|:---------:|
|<img src="https://cloud.githubusercontent.com/assets/1725068/22371562/1b091f0a-e4db-11e6-8458-8653954a7cce.png" width="24" height="24" />|<img src="https://cloud.githubusercontent.com/assets/1725068/22371562/1b091f0a-e4db-11e6-8458-8653954a7cce.png" width="24" height="24" />|||

### Version

<img src="https://cloud.githubusercontent.com/assets/1725068/18940649/21945000-8645-11e6-86ed-4a0f800e5a73.png" width="32" height="32" /> <img src="https://cloud.githubusercontent.com/assets/1725068/18940648/2192ddba-8645-11e6-864d-6d5692d55717.png" width="32" height="32" />

### Update

Added ```SET_ENVIRONMENT_VARIABLE``` and ```Get_environment_variable```.

The underlying [NSString](https://developer.apple.com/library/mac/documentation/CoreFoundation/Reference/CFStringRef/index.html) method seems to inherit [__CF_TEXT_ENCODING](https://developer.apple.com/library/mac/technotes/tn2228/_index.html) which means that with some environments, the conversion may yield strange results. For example, converting HTML to Japanese RTF may not work, if [~/.CFUserTextEncoding](https://discussions.apple.com/thread/2254222?tstart=0) says ```0:0``` meaning MacRoman, English, as opposed to ```1:14``` which means MacJapanese, Japanese. Setting the environment variable maybe useful in such cases.

## Examples

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
