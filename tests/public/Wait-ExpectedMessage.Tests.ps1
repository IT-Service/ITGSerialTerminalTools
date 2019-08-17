. $PSScriptRoot\..\_InitializeTests.ps1

Describe 'Wait-ExpectedMessage' {

    [String] $TestConsoleOutputContent1 = @'
test result
[admin@router] >

'@;

    Context "When not passed prompt template." {

        $Reader = New-Object System.IO.StringReader( $TestConsoleOutputContent1 );
        It 'Should return correct result.' {
            Wait-ITGSerialTerminalExpectedMessage `
                -ConsoleStreamReader $Reader `
                -PassThru `
            | Should Be "test result`r`n"
        }

    }
    Context "When passed correct prompt template." {

        $Reader = New-Object System.IO.StringReader( $TestConsoleOutputContent1 );
        It 'Should return correct result.' {
            Wait-ITGSerialTerminalExpectedMessage `
                -ConsoleStreamReader $Reader `
                -PromptPattern '\[.+?\] >' `
                -PassThru `
            | Should Be "test result`r`n"
        }

    }
    Context "When console output does not contains prompt template." {

        $Reader = New-Object System.IO.StringReader( $TestConsoleOutputContent1 );
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
