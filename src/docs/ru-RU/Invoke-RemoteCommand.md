---
external help file: ITGSerialTerminalTools-help.xml
Module Name: ITGSerialTerminalTools
schema: 2.0.0
---

# Invoke-RemoteCommand

## SYNOPSIS

Выполняет в удалённой консоли команду и возвращает результат.
Генерирует исключение в случае таймаута.

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

Выполняет в удалённой консоли команду Command и возвращает результат.
Генерирует исключение в случае таймаута.
Следует использовать для подачи команды на удалённую консоль.
С ключом PassThru возвращает в качестве результата вывод удалённой консоли
до строки, соответствующей PromptPattern.

## PARAMETERS

### ConsoleStreamReader

Читатель потока удалённой консоли.

### ConsoleStreamWriter

Писатель потока удалённой консоли.

### Command

Команда для передачи в удалённую консоль.

### PromptPattern

Шаблон ожидаемой строки (регулярное выражение). По умолчанию - `'\[.+?\] >'`.

### Timeout

Таймаут. По умолчанию - без таймаута.

### PassThru

Ключ, указывающий на необходимость возврата вывода консоли в качестве результата.

### CommonParameters

Эта командлета поддерживает следующие общие параметры:
-Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutVariable, -OutBuffer,
-PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
См. about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### String

Вывод удалённой консоли.

## NOTES

## RELATED LINKS
