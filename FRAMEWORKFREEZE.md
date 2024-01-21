## Revision History

| Date | Author | Description |
|---|---|---|
| 2022-10-27 | numbworks | Created. |
| 2024-01-21 | numbworks | Re-organized, added Python. |

## Framework Freeze

A *framework freeze* is a strategy that advocates the usage of the same version of frameworks and libraries among several projects by creating a reference document. 

The scope of this strategy is to simplify planned updates by reducing the possible issues and by centralizing their resolution.

## C# Framework Freeze - Summary

|Tech|Version|
|---|---|
|.NET| 8.x|
|NUnit|4.0.1|
|NUnit3TestAdapter|4.5.0|
|Visual Studio|2022|

## C# Framework Freeze - Status

**Non-frozen (yet)**:

|Project|Has CLI?|Library|Client|Tests|
|---|---|---|---|---|
|NW.WIDJobs|Yes|.NET Standard 2.1|.NET Core 3.1|.NET Core 3.1|
|NW.NGramTextClassification|Yes|.NET Standard 2.1|.NET Core 3.1|.NET Core 3.1|
|NW.UnivariateForecasting|Yes|.NET Standard 2.1|.NET Core 3.1|.NET Core 3.1|

**Frozen**:

|Project|Has CLI?|Library|Client|Tests|FrozenDate|
|---|---|---|---|---|---|
|NW.MarkdownTables|-|.NET 8.x|.NET 8.x|.NET 8.x|2024-01-21|

## Python Framework Freeze - Summary

|Tech|Version|
|---|---|
|Python|3.12.1|
|pandas|1.5.2|
|numpy|1.24.0|
|openpyxl|3.0.10|
|coverage|7.2.3|
|parameterized|0.9.0|

## Python Framework Freeze - Status

**Non-frozen (yet)**:

|Project|Python Version|
|---|---|
|nwreadinglistmanager|3.11.0|
|nwtimetrackingmanager|3.11.0|