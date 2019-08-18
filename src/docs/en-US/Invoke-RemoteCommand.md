---
external help file: ITGSerialTerminalTools-help.xml
Module Name: ITGSerialTerminalTools
schema: 2.0.0
---

# Invoke-RemoteCommand

## SYNOPSIS

Invoke command on remote console.

## SYNTAX

```powershell
Invoke-RemoteCommand `
    -ConsoleStreamReader [System.IO.TextReader] `
    -ConsoleStreamWriter [System.IO.TextWriter] `
    -Command [String] `
    -PromptPattern [String] `
    -Timeout [System.TimeSpan] `
    -PassThru [Switch] `
    [<CommonParameters>]
```

## DESCRIPTION

Invoke command on remote console.
With timeout.

## PARAMETERS

### ConsoleStreamReader

Remote console stream reader.

### ConsoleStreamWriter

Remote console stream writer.

### Command

Command for remote console.

### PromptPattern

Waiting string pattern (regexp). Default - `'\[.+?\] >'`.

### Timeout

Timeout duration. Default - disabled.

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
