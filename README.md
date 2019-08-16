# ITGSerialTerminalTools

Модуль PowerShell с командлетами для работы с терминалами через последовательный
интерфейс.
Примеры использования - см. https://github.com/test-st-petersburg/network-config.

## Обзор

ITGSerialTerminalTools предоставляет ряд командлет для работы с терминалами
с последовательным интерфейсом.

## Branches

### master

[![Build status](https://ci.appveyor.com/api/projects/status/jtiboqhwp6tqa6al/branch/master?svg=true)](https://ci.appveyor.com/project/IT-Service/ITGSerialTerminalTools/branch/master)
[![codecov](https://codecov.io/gh/IT-Service/ITGSerialTerminalTools/branch/master/graph/badge.svg)](https://codecov.io/gh/IT-Service/ITGSerialTerminalTools/branch/master)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/ITGSerialTerminalTools.svg)](https://www.powershellgallery.com/packages/ITGSerialTerminalTools/)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/ITGSerialTerminalTools.svg)](https://www.powershellgallery.com/packages/ITGSerialTerminalTools/)

Эта ветка содержит последнюю версию.
Не следует вносить изменения непосредственно в данную ветку.

### develop

[![Build status](https://ci.appveyor.com/api/projects/status/jtiboqhwp6tqa6al/branch/develop?svg=true)](https://ci.appveyor.com/project/IT-Service/ITGSerialTerminalToolsHyperV/branch/develop)
[![codecov](https://codecov.io/gh/IT-Service/ITGSerialTerminalTools/branch/develop/graph/badge.svg)](https://codecov.io/gh/IT-Service/ITGSerialTerminalTools/branch/develop)

Эта ветка содержит редакцию, используемую разработчиками.
Именно в эту ветку предлагайте Pull Requests.
develop периодически объединяется с веткой master и публикуется в
[PowerShell Gallery](https://www.powershellgallery.com/).

## Change log

A full list of changes in each version can be found in the [change log](CHANGELOG.md).

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

Доступны различные пути для участия в разработке модуля
([contributing guidelines](CONTRIBUTING.md)):

- сообщите об ошибке, потребностях через issues.
- участвуйте в обсуждениях в issue и pull requests, тестируйте заплатки и новые
  версии.
- отправляйте Ваши заплатки или дополнительные возможности через pull request.
