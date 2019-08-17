---
external help file: ITGSerialTerminalTools-help.xml
Module Name: ITGSerialTerminalTools
schema: 2.0.0
---

# Wait-ExpectedMessage

## SYNOPSIS

Командлета ожидает в выводе консоли строки, соответствующей шаблону PromptPattern.

## SYNTAX

```powershell
Wait-ExpectedMessage `
    -ConsoleStreamReader [System.IO.TextReader] `
    -PromptPattern [String] `
    -PassThru [Switch] `
    [<CommonParameters>]
```

## DESCRIPTION

Командлета ожидает в выводе консоли строки, соответствующей шаблону PromptPattern.
С учётом указанного таймаута.

## PARAMETERS

### ConsoleStreamReader

Читатель потока удалённой консоли.

### PromptPattern

Шаблон ожидаемой строки (регулярное выражение). По умолчанию - `'\[.+?\] >'`.

### Timeout

Таймаут. По умолчанию - 30 sec.

### PassThru

Ключ, указывающий на необходимость возврата вывода консоли в качестве результата.

### CommonParameters

Эта командлета поддерживает следующие общие параметры:
-Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutVariable, -OutBuffer,
-PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### String

Вывод удалённой консоли.

## NOTES

## RELATED LINKS
