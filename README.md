4d-plugin-document-converter
============================

Convert different styled-text documents. Simplified version of [textutil](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/textutil.1.html).

* Branches

[v1](https://github.com/miyako/4d-plugin-document-converter/tree/v1)

### Platform

| carbon | cocoa | win32 | win64 |
|:------:|:-----:|:---------:|:---------:|
|<img src="https://cloud.githubusercontent.com/assets/1725068/22371562/1b091f0a-e4db-11e6-8458-8653954a7cce.png" width="24" height="24" />|<img src="https://cloud.githubusercontent.com/assets/1725068/22371562/1b091f0a-e4db-11e6-8458-8653954a7cce.png" width="24" height="24" />|||

### Version

<img src="https://cloud.githubusercontent.com/assets/1725068/18940649/21945000-8645-11e6-86ed-4a0f800e5a73.png" width="32" height="32" /> <img src="https://cloud.githubusercontent.com/assets/1725068/18940648/2192ddba-8645-11e6-864d-6d5692d55717.png" width="32" height="32" />

## Syntax

```
dst:=Convert document (src;from;to;options)
```

Parameter|Type|Description
------------|------------|----
src|BLOB|
from|LONGINT|
to|LONGINT|
options|TEXT|JSON
dst|BLOB|

### Constants for ``from`` and ``to``

```
Document format TXT 0 //Plain text document
Document format RTF 1 //Rich text format document
Document format HTML 3 //Hypertext Markup Language (HTML) document
Document format DOC 4 //Microsoft Word document
Document format DOCX 5 //ECMA Office Open XML text document format
Document format ODT 6 //OASIS Open Document text document format
Document format WORDML 7 //Microsoft Word XML (WordML schema) document
```

```
Document format RTFD 2 //Rich text format with attachments document
Document format WEBARCHIVE 8 //Web Kit WebArchive document
```

### Keys for ``option``

```
DOC_AUTHOR author (string)
DOC_COPYRIGHT copyright (string)
DOC_COMPANY company (string)
DOC_MANAGER manager (string)
DOC_EDITOR editor (string)
DOC_TITLE title (string)
DOC_SUBJECT subject (string)
DOC_CATEGORY category (string)
DOC_COMMENT comment (string)

DOC_TEXT_ENCODING_NAME textEncodingName (string)

DOC_TOP_MARGIN topMargin (number, in points)
DOC_LEFT_MARGIN leftMargin (number, in points)
DOC_BOTTOM_MARGIN bottomMargin (number, in points)
DOC_RIGHT_MARGIN rightMargin (number, in points)

DOC_CREATION_TIME creationTime (dateString)
DOC_MODIFICATION_DATE modificationDate (dateString)

DOC_CONVERTED converted (number, 1 or 0)
DOC_READ_ONLY readOnly (number, 1 or 0)

DOC_VIEW_ZOOM viewZoom (number, 100=100%)
DOC_VIEW_SIZE viewSize ([number=width, number=height])
DOC_VIEW_MODE viewMode (number, 1=paperSize or 0=normal)

DOC_PAPER_SIZE paperSize ([number=width, number=height])
DOC_BACKGROUND_COLOR backgroundColor ([number=red, number=green, number=blue, number=alpha], device)

DOC_EXCLUDED_ELEMENTS excludedElements (string array)
DOC_HYPHENATION_FACTOR hyphenationFactor (number,  0=off to 1=full)
DOC_KEYWORDS keywords (string array)
DOC_DEFAULT_TAB_INTERVAL defaultTabInterval (number)
DOC_PREFIX_SPACES prefixSpaces (number)
DOC_COCOA_VERSION cocoaVersion (number)
```
