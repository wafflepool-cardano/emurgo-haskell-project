# Emurgo Haskell Final Project

This project is a simple word search game implemented in Haskell. The game generates a grid with pre-defined words hidden within it, and the player must find these words. The game ends either when all words are found or after a maximum number of trials (10 trials).

## Features

-   **Grid Generation**: Generates a grid with a set of words hidden horizontally, vertically, and diagonally.
-   **Word Search**: Allows the player to input words they find in the grid.
-   **Score Tracking**: Keeps track of the number of words found by the player.
-   **End Condition**: The game ends when all words are found or after 10 incorrect guesses.

## How to Run

1.  **Build the Project**:

    ```sh
    cabal build
    ```

1.  **Run the Game**:

        ```sh

    cabal run emurgo-final-project

    ```

    ```

1.  **Run the Tests**:
    ```sh
    cabal test
    ```

## Game Instructions

The game will display a grid with hidden words.
Type a word you find in the grid and press Enter.
The game will check if the word is in the grid:
If the word is found, it will be highlighted.
If the word is not found, you will be prompted to try again.
The game ends when all words are found or after 10 incorrect guesses.

## Example Grid

```
__C________R___
__SI________U__
__HASKELL____B_
__A__A_____S__Y
__R___B___C____
__PHP____H_____
____S_LREP_____
____I__M_Y__L__
____L_E__T_O___
_________HB____
_________O_____
________CN_____

```

## Current Deficiencies

Non-Existent Word Detection: The game sometimes incorrectly identifies non-existent words in the grid.
Diagonal Word Search: The diagonal word search logic can fail for certain words, leading to incorrect results.
Score Update: The score tracking might not update correctly under some conditions.
Game End Condition: The game does not consistently recognize when the maximum number of trials is reached, and the game should end.

## Future Improvements

Improve Word Detection: Fix the logic for detecting words, especially diagonally, to ensure accurate word finding.
Enhance Score Tracking: Ensure the score updates correctly for each found word.
Refine End Conditions: Ensure the game ends properly after 10 trials and provides a final score summary.
User Interface: Enhance the user interface for better interaction and experience.
