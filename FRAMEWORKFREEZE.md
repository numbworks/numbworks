## Revision History

| Date | Author | Description |
|---|---|---|
| 2022-10-27 | numbworks | Created. |
| 2024-01-21 | numbworks | Re-organized, added Python. |
| 2024-07-07 | numbworks | Re-organized, added pip commands. |

## Framework Freeze

A *framework freeze* is a strategy that advocates the usage of the same version of frameworks and libraries among several projects by creating a reference document. 

The scope of this strategy is to simplify planned updates by reducing the possible issues and by centralizing their resolution.

Regarding frameworks and when possible, only LTS (Long Term Support) versions must be used.

## Summary - C#

|Language|Version| Notes |
|---|---|---|
|.NET| 8.x|[.NET Support Policy](https://dotnet.microsoft.com/en-us/platform/support/policy)|

|Package|Version|
|---|---|
|NUnit|4.0.1|
|NUnit3TestAdapter|4.5.0|
|Master.Extensions.CommandLineUtils|4.1.0|

## Summary - Python

|Language|Version|Notes |
|---|---|---|
|Python|3.12.1|[Python Release Cycle](https://devguide.python.org/versions/)|


|Package/Version|
|---|
|pip install numpy==1.26.3|
|pip install pandas==2.2.0|
|pip install requests==2.31.0|
|pip install matplotlib==3.8.2|
|pip install lxml==5.1.0|
|pip install openpyxl==3.1.0|
|pip install pyarrow==15.0.0|
|pip install tabulate==0.9.0|
|pip install sparklines==0.4.2|
|pip install fastapi==0.110.0|
|pip install uvicorn==0.29.0|
|pip install coverage==7.2.3|
|pip install parameterized==0.9.0|
|pip install paramiko==3.4.0 |
|pip install -e 'git+https://github.com/numbworks/nwshared.git#egg=nwshared&subdirectory=src'|

## Details - C#

|Project|Has CLI?|Library|Client|Tests|FreezeDate|
|---|---|---|---|---|---|
|NW.MarkdownTables|-|.NET 8.x|.NET 8.x|.NET 8.x|2024-01-21|
|NW.NGramTextClassification|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-06|
|NW.UnivariateForecasting|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-09|
|NW.Shared.Validation|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-10|
|NW.Shared.Files|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-11|
|NW.Shared.Serialization|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-13|