﻿Function Invoke-RemoteCommand
{

    <#
    .Synopsis
        Выполняет в удалённой консоли команду и возвращает результат.
        Генерирует исключение в случае таймаута.
    .Description
        Выполняет в удалённой консоли команду Command и возвращает результат.
        Генерирует исключение в случае таймаута.
        Следует использовать для подачи команды на удалённую консоль.
        С ключом PassThru возвращает в качестве результата вывод удалённой консоли
        до строки, соответствующей PromptPattern.
    #>

    [CmdletBinding()]

    Param(
        # Шаблон строки, ожидаемой в выводе удалённой консоли
        [Parameter(
            Mandatory = $true,
            ValueFromPipeLine = $true,
            Position = 0
        )]
        [AllowEmptyString()]
        [String] $Command,

        # Шаблон строки, ожидаемой в выводе удалённой консоли
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string] $PromptPattern = '\[.+?\] >',

        # Читатель потока удалённой консоли
        [Parameter(
            Mandatory = $true
        )]
        [ValidateNotNull()]
        [System.IO.TextReader] $ConsoleStreamReader,

        # Писатель потока удалённой консоли
        [Parameter(
            Mandatory = $true
        )]
        [ValidateNotNull()]
        [System.IO.TextWriter] $ConsoleStreamWriter,

        # Ключ, определяющий необходимость возврата вывода удалённой консоли
        [Switch] $PassThru,

        # Таймаут
        [Parameter()]
        [AllowNull()]
        [System.TimeSpan] $Timeout = $null
    )

    $Local:ErrorActionPreference = [System.Management.Automation.ActionPreference]::Stop;

    $ConsoleStreamWriter.WriteLine( $Command );
    Write-Verbose ">>>> $Command";

    $EscapedCommand = [System.Text.RegularExpressions.Regex]::Escape( $Command );
    Wait-ExpectedMessage `
        -ConsoleStreamReader $ConsoleStreamReader `
        -PromptPattern "$PromptPattern\s*$EscapedCommand" `
        -Timeout $Timeout;
    Wait-ExpectedMessage `
        -ConsoleStreamReader $ConsoleStreamReader `
        -PromptPattern "$PromptPattern\s*$EscapedCommand" `
        -Timeout $Timeout;

    return Wait-ExpectedMessage `
        -ConsoleStreamReader $ConsoleStreamReader `
        -PromptPattern $PromptPattern `
        -Timeout $Timeout `
        -PassThru:$PassThru;

}
