# Manage 7zip files through Powershell and OpCon
This powershell script allows you to manage 7zip files for extracting or archiving files.  You can run this from within the OpCon Script Repository or you can setup the command line directly on an OpCon job.

# Prerequisites
* 7 zip application
* Powershell 5+

# Instructions
Script Parameters
 * 7zippath - Path to 7zip executable (including exe)
 * operation - Archive or Extract
 * source - Source zip file or source of files to zip
 * destination - Destination of extracted files or destination zip name
 * password - If a password is set here it will be used during archive/extract

```
7zip.ps1 -7zippath "C:\Program Files\7-zip\7z.exe" -operation "extract" -source "C:\OpConWebInstaller.zip" -destination "C:\"
```

# Disclaimer
No Support and No Warranty are provided by SMA Technologies for this project and related material. The use of this project's files is on your own risk.

SMA Technologies assumes no liability for damage caused by the usage of any of the files offered here via this Github repository.

# License
Copyright 2019 SMA Technologies

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Contributing
We love contributions, please read our [Contribution Guide](CONTRIBUTING.md) to get started!

# Code of Conduct
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code-of-conduct.md)
SMA Technologies has adopted the [Contributor Covenant](CODE_OF_CONDUCT.md) as its Code of Conduct, and we expect project participants to adhere to it. Please read the [full text](CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.
