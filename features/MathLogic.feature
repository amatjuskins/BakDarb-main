Feature: Internal Math logic

    @MathScenario
    Scenario Outline: <var1> of <var2> is how many %?
        Given I have <var1> and <var2>
        And <var1> is divided by <var2>
        Then I have the % of the scenario that is equal to <result>
        Examples:
            | var1 | var2 | result  |
            | 10   | 100  |10.00  |
            | 1    | 10   |10.00  |
            | 5    | 6    |83.33  |
            | 345  | 346  |99.71  |
            | 1    | 1000 |0.10  |
            | 87   | 894  |9.73  |
            | 45   | 1000 |4.50  |
            | 99   | 1235 |8.02  |
            | 1    | 98   |1.02  |
            | 15   | 215  |6.98  |


    @MathScenario
    Scenario Outline: <var1> of <var2> % and <percent>% is added
        Given I have <var1> and <var2>
        And <var1> is divided by <var2>
        And I add <percent> percent
        Then I have the % of the scenario that is equal to <result>
        Examples:
            | var1 | var2 | percent | result  |
            | 10   | 100  | 1       | 11.00  |
            | 1    | 10   | 10      | 20.00  |
            | 5    | 6    | 1       | 84.33  |
            | 345  | 346  | 0.28       | 99.99  |
            | 1    | 1000 | 90      | 90.10  |
            | 87   | 894  | 23      | 32.73  |
            | 45   | 1000 | 12      | 16.50  |
            | 99   | 1235 | 50      | 58.02  |
            | 1    | 98   | 56      | 57.02  |
            | 15   | 215  | 40      | 46.98  |
