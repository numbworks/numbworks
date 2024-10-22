## Revision History

| Date | Author | Description |
|---|---|---|
| 2022-10-27 | numbworks | Created. |
| 2024-01-21 | numbworks | Re-organized, added Python. |
| 2024-07-07 | numbworks | Re-organized, added pip commands. |
| 2024-10-22 | numbworks | Re-organized, added support for devcontainers. |

## Introduction

A *framework freeze* is a strategy that advocates the usage of the same version of frameworks and dependencies among several projects by creating a reference document. The scope of this strategy is to simplify planned updates by reducing the possible issues and by centralizing their resolution.

For frameworks, and when possible, only Long Term Support (LTS) versions should be used.

To streamline the controlled updates of the Python dependencies, I created the `nwpackageversions` package.

## C#

|Framework|Version| Notes |
|---|---|---|
|.NET| 8.x|[.NET Support Policy](https://dotnet.microsoft.com/en-us/platform/support/policy)|

|Package|Version|
|---|---|
|NUnit|4.0.1|
|NUnit3TestAdapter|4.5.0|
|Master.Extensions.CommandLineUtils|4.1.0|

|Project|Has CLI?|Library|Client|Tests|FreezeDate|
|---|---|---|---|---|---|
|NW.MarkdownTables|-|.NET 8.x|.NET 8.x|.NET 8.x|2024-01-21|
|NW.NGramTextClassification|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-06|
|NW.UnivariateForecasting|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-09|
|NW.Shared.Validation|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-10|
|NW.Shared.Files|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-11|
|NW.Shared.Serialization|Yes|.NET 8.x|.NET 8.x|.NET 8.x|2024-02-13|

## Python

|Language|Version|Notes |
|---|---|---|
|Python|3.12.5|[Python Release Cycle](https://devguide.python.org/versions/)|

|Project|Devcontainer|
|---|---|
|nwpackageversions|[Dockerfile](https://github.com/numbworks/nwpackageversions/blob/master/.devcontainer/Dockerfile)|
|nwreadinglist|[Dockerfile](https://github.com/numbworks/nwreadinglist/blob/master/.devcontainer/Dockerfile)|
|nwtimetracking|[Dockerfile](https://github.com/numbworks/nwtimetracking/blob/master/.devcontainer/Dockerfile)|
|nwshared|[Dockerfile](https://github.com/numbworks/nwshared/blob/master/.devcontainer/Dockerfile)|