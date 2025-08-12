# CLI Reference
Contact: numbworks@gmail.com

## Last Update

| Date | Author | Description |
|---|---|---|
| 2025-05-27 | numbworks | Created. |
| 2025-07-14 | numbworks | Last update. |

### Introduction

The scope of this document is to facilitate the consolidation of all my CLIs, ensuring logical coherence across them. Additionally, it serves as a structured reference to streamline the creation of new CLIs, maintaining consistency with existing implementations.

The CLIs follow these styles:

|Language|Style|
|---|---|
|**C#**|Hierarchical CLI|
|**Python**|Option-based CLI|

## C# → NW.NGramTextClassificationClient

|Command|Sub Command|Options|Exit Codes|
|---|---|---|---|
|about|||Success|
|session|||Success|
|session|classify|--labeledexamples:{filename}<br/>--textsnippets:{filename}<br/>*--folderpath:{path}*<br/>*--tokenizerruleset:{filename}*<br/>*--minaccuracysingle:{number}*<br/>*--minaccuracymultiple:{number}*<br/>*--savesession*<br/>*--cleanlabeledexamples*<br/>*--disableindexserialization*|Success<br/>Failure|

```powershell
PS C:\widjobs>.\ngramtc.exe
PS C:\widjobs>.\ngramtc.exe session
PS C:\widjobs>.\ngramtc.exe session classify --help
PS C:\ngramtc>.\ngramtc.exe session classify --labeledexamples:LabeledExamples.json --textsnippets:TextSnippets.json
PS C:\widjobs>.\ngramtc.exe about
```

## C# → NW.UnivariateForecastingClient

|Command|Sub Command|Options|Exit Codes|
|---|---|---|---|
|about|||Success|
|session|||Success|
|session|forecast|--init:{filename}<br/>*--folderpath:{path}*<br/>*--savesession*<br/>*--roundingdigits:{number}*<br/>*--forecastingdenominator:{number}*|Success<br/>Failure|

```powershell
PS C:\unifor>.\unifor.exe
PS C:\unifor>.\unifor.exe session
PS C:\unifor>.\unifor.exe session forecast --help
PS C:\unifor>.\unifor.exe about
PS C:\unifor>.\unifor.exe session forecast --init:Init.json
```

## Python → nwcommitaverages

|*Command*|*Sub Command*|Options|Exit Codes|
|---|---|---|---|
|||*--file_path, -fp*<br/>*--logtype, -lt*|Success<br/>Failure|
|||*--help, -h*|Success|

|Option|Default|Choices|
|---|---|---|
|*--logtype, -lt*|`table`|`table`, `daily`, `monthly`|

```sh
root@17b38eb6123b:/# python nwcommitaverages.py
root@17b38eb6123b:/# python nwcommitaverages.py --file_path /workspaces/nwsomething
root@17b38eb6123b:/# python nwcommitaverages.py --logtype daily
root@17b38eb6123b:/# python nwcommitaverages.py --logtype monthly
root@17b38eb6123b:/# python nwcommitaverages.py --help
```

## Python → nwdocstringchecking

|*Command*|*Sub Command*|Options|Exit Codes|
|---|---|---|---|
|||--file_path, -fp<br/>*--exclude, -e*|Success<br/>Failure|
|||*--help, -h*|Success|

```sh
root@17b38eb6123b:/# python nwdocstringchecking.py
root@17b38eb6123b:/# python nwdocstringchecking.py --file_path nwdocstringchecking.py
root@17b38eb6123b:/# python nwdocstringchecking.py --file_path nwdocstringchecking.py --exclude _MessageCollection --exclude __init__
root@17b38eb6123b:/# python nwdocstringchecking.py --help
```

## *Python → nwtraderaanalytics*

|*Command*|*Sub Command*|Options|Exit Codes|
|---|---|---|---|
|remote|display|--keyword, -k<br/>*--data, -d*<br/>*--saveformat, -sf*<br/>*--savepath, -sp*<br/>*--usecache, -uc*<br/>*--itemizelargetables, -it*|Success<br/>Failure|
|||*--help, -h*|Success|

|Option|Default|Choices|
|---|---|---|
|*--data, -d*|`all`|`s2`, `by_tb`, `by_sa`, `by_rd`, `by_tp`, `definitions`|
|*--saveformat, -sf*|`all`|`csv`, `html`, `json`|

```sh
root@17b38eb6123b:/# python nwtraderaanalytics.py remote display -k minidisc
root@17b38eb6123b:/# python nwtraderaanalytics.py remote display -k minidisc -d s2 -d by_sa
root@17b38eb6123b:/# python nwtraderaanalytics.py remote display -k minidisc -sf csv
root@17b38eb6123b:/# python nwtraderaanalytics.py remote display -k minidisc -sf csv -sf json
root@17b38eb6123b:/# python nwtraderaanalytics.py --help
```

## Template

|*Command*|*Sub Command*|Options|Exit Codes|
|---|---|---|---|
|||||
|||||
|||||

```sh
root@17b38eb6123b:/# 
```

