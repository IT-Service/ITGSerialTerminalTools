# Contributing

Thank you for considering contributing to this resource module. Every little
change helps make the DSC resources even better for everyone to use.

## Common contribution guidelines

This resource module follow all of the
[PowerShell Style Guidelines](https://poshcode.gitbooks.io/powershell-practice-and-style/),
so please review these as a baseline for contributing.

## Specific guidelines for this module

### Automatic formatting with VS Code

There is a VS Code workspace settings file within this project with formatting
settings matching the style guideline. That will make it possible inside VS Code
to press SHIFT+ALT+F, or press F1 and choose 'Format document' in the list. The
PowerShell code will then be formatted according to the Style Guideline
(although maybe not complete, but would help a long way).

### Naming convention

### Unit tests

For a review of a Pull Request (PR) to start, all tests must pass without error.
If you need help to figure why some test don't pass, just write a comment in the
Pull Request (PR), or submit an issue, and somebody will come along and assist.

To run all tests manually run the following.

```powershell
Install-Module Pester
cd '<path to cloned repository>\Tests\Unit'
Invoke-Pester
```

#### Unit tests for style check of Markdown files

When sending in a Pull Request (PR) a style check will be performed on all Markdown
files, and if the tests find any error the build will fail.
See the section [Documentation with Markdown](#documentation-with-markdown) how
these errors can be found before sending in the PR.

The Markdown tests can be run locally if the packet manager 'npm' is available.
To have npm available you need to install [node.js](https://nodejs.org/en/download/).
If 'npm' is not available, a warning text will print and the rest of the tests
will continue run.

#### AppVeyor

AppVeyor is the platform where the tests is run when sending in a Pull Request (PR).
All tests are run on a clean AppVeyor build worker for each push to the Pull
Request (PR).
The tests that are run on the build worker are common tests, unit tests
(with some limitations).

### Documentation with Markdown

If using Visual Studio Code to edit Markdown files it can be a good idea to install
the markdownlint extension. It will help to find lint errors and style checking.
The file [.markdownlint.json](/.markdownlint.json) is prepared with a default set
of rules which will automatically be used by the extension.
