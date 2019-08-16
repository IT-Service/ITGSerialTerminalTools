# ITGSerialTerminalTools

Модуль PowerShell с командлетами для работы с терминалами через последовательный
интерфейс.
Примеры использования - см. https://github.com/test-st-petersburg/network-config.

## Обзор

ITGSerialTerminalTools предоставляет ряд командлет для работы с терминалами
с последовательным интерфейсом.

## Getting Started

### PowerShell Gallery

Устанавливаем ITGSerialTerminalTools из [PowerShell Gallery](https://www.powershellgallery.com/)
используя `Install-Module`.

```powershell
Install-Module -Name ITGSerialTerminalTools -Scope CurrentUser
```

### Local Build

Используем `Invoke-Build` для запуска сборки ITGSerialTerminalTools...

```powershell
Invoke-Build -Task Build
```

После чего возможно загрузить собранный модуль в Вашу сессию:

```powershell
Import-Module "<ProjectRoot>\build\ITGSerialTerminalTools.psd1" -Force
```

## Использование

TODO: описать

## Удаление модуля

Удаление ITGSerialTerminalTools с использованием `Uninstall-Module`.

```powershell
Uninstall-Module -Name ITGSerialTerminalTools
```

## Загрузка модуля из исходных файлов

```powershell
Import-Module "<ProjectRoot>\src\ITGSerialTerminalTools.psd1" -Force
```

## Участие в разработке

Доступны различные пути для участия в разработке модуля:

- сообщите об ошибке, потребностях через issues.
- участвуйте в обсуждениях в issue и pull requests, тестируйте заплатки и новые
  версии.
- отправляйте Ваши заплатки или дополнительные возможности через pull request.
