---
external help file: ITGSerialTerminalTools-help.xml
Module Name: ITGSerialTerminalTools
schema: 2.0.0
---

# Wait-ExpectedMessage

## SYNOPSIS

Wait for PromptPattern string in console output.

## SYNTAX

```powershell
Wait-ExpectedMessage `
    -ConsoleStreamReader [System.IO.TextReader] `
    -PromptPattern [String] `
    -PassThru [Switch] `
    [<CommonParameters>]
```

## DESCRIPTION

Wait for PromptPattern string in console output.
With timeout.

## PARAMETERS

### ConsoleStreamReader

Remote console stream reader.

### PromptPattern

Waiting string pattern (regexp). Default - `'\[.+?\] >'`.

### Timeout

Timeout duration. Default - 30 sec.

### PassThru

Return console output.

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutVariable, -OutBuffer,
-PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### String

Remote console output.

## NOTES

## RELATED LINKS
