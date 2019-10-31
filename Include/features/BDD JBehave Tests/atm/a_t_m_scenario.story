Feature: Account Holder withdraws cash

Scenario: Account has sufficient funds
Given the Account balance is <account_balance>
When the card is valid
When the machine contains <atm_available>
When the Account Holder requests <request>
Then the ATM should dispense <result>
Then the account balance should be <newBalance>
Then the card should be returned

Examples:
|account_balance|atm_available|request|result|newBalance|
|100            |100          |20     |20    |80        |
|100            |100          |10     |10    |90        |