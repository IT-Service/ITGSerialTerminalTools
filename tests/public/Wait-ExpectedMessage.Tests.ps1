. $PSScriptRoot\..\_InitializeTests.ps1

Describe 'Wait-ExpectedMessage' {

    BeforeEach {
        [String] $TestConsoleOutputContent1 = @'
test result
[admin@router] >

'@;
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute(
            'PSUseDeclaredVarsMoreThanAssignments', '',
            Scope = 'Function', Target = 'Reader'
        )]
        $Reader = New-Object System.IO.StringReader( $TestConsoleOutputContent1 );
    }

    Context "When not passed prompt template." {
        It 'Should return correct result.' {
            Wait-ITGSerialTerminalExpectedMessage `
                -ConsoleStreamReader $Reader `
                -Timeout ( New-Object System.TimeSpan( 0, 0, 1 ) ) `
                -PassThru `
            | Should Be "test result`r`n"
        }
    }

    Context "When passed correct prompt template." {
        It 'Should return correct result.' {
            Wait-ITGSerialTerminalExpectedMessage `
                -ConsoleStreamReader $Reader `
                -PromptPattern '\[.+?\] >' `
                -Timeout ( New-Object System.TimeSpan( 0, 0, 1 ) ) `
                -PassThru `
            | Should Be "test result`r`n"
        }
    }

    Context "When console output does not contains prompt template." {
        It 'Should throw timeout error.' {
            {
                Wait-ITGSerialTerminalExpectedMessage `
                    -ConsoleStreamReader $Reader `
                    -PromptPattern '\[notadmin\] >' `
                    -Timeout ( New-Object System.TimeSpan( 0, 0, 1 ) ) `
                    -PassThru `
            } | Should -Throw
        }
    }

}
