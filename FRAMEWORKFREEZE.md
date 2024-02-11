## Revision History

| Date | Author | Description |
|---|---|---|
| 2022-10-27 | numbworks | Created. |
| 2024-01-21 | numbworks | Re-organized, added Python. |

## Framework Freeze

A *framework freeze* is a strategy that advocates the usage of the same version of frameworks and libraries among several projects by creating a reference document. 

The scope of this strategy is to simplify planned updates by reducing the possible issues and by centralizing their resolution.

Regarding frameworks and when possible, only LTS (Long Term Support) versions must be used.

## C# Framework Freeze - Summary

|Tech|Version|
|---|---|
|.NET| 8.x|
|NUnit|4.0.1|
|NUnit3TestAdapter|4.5.0|
|Master.Extensions.CommandLineUtils|4.1.0|
|Visual Studio|2022|

For additional information, please refer to [.NET Support Policy](https://dotnet.microsoft.com/en-us/platform/support/policy).

## C# Framework Freeze - Status

**Frozen**:

|Project|Has CLI?|Library|Client|Tests|FreezeDate|
|---|---|---|---|---|---|
|NW.MarkdownTables|-|.NET 8.x|.NET 8.x|.NET 8.x|2024-01-21|
|NW.NGramTextClassification|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-06|
|NW.UnivariateForecasting|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-09|
|NW.Shared.Validation|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-10|
|NW.Shared.Files|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-11|

## Python Framework Freeze - Summary

|Tech|Version|
|---|---|
|Python|3.12.1|
|numpy|1.26.3 |
|openpyxl|3.1.0|
|pyarrow|15.0.0|
|pandas|2.2.0|
|coverage|7.2.3|
|parameterized|0.9.0|

For additional information, please refer to [Python Release Cycle](https://devguide.python.org/versions/).

## Python Framework Freeze - Status

**Frozen**:

|Project|Python Version|
|---|---|
|nwreadinglistmanager|3.12.1|
|nwtimetrackingmanager|3.12.1|

The freeze status is verified by the `nwcorecomponents.check_python_version()` function embedded into the projects.