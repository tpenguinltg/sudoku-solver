# Sudoku Solver

A [Sudoku][] solver written in Prolog, written as a programming exercise.

[Sudoku]: https://en.wikipedia.org/wiki/Sudoku

This solution is not at all as efficient as the [concise solution][clp];
it cannot generate a board without running out of memory.

[CLP]: https://www.metalevel.at/sudoku/

## Usage

A Sudoku board is represented as a 9×9 matrix. Example:

```
[[1,2,3,4,5,6,7,8,9],
 [4,5,6,7,8,9,1,2,3],
 [7,8,9,1,2,3,4,5,6],
 [2,3,4,5,6,7,8,9,1],
 [5,6,7,8,9,1,2,3,4],
 [8,9,1,2,3,4,5,6,7],
 [3,4,5,6,7,8,9,1,2],
 [6,7,8,9,1,2,3,4,5],
 [9,1,2,3,4,5,6,7,8]]
```

Unknown spaces should be replaced by variables. The predicate
`sudoku/1` is provided to solve the given board, and the predicate
`sudoku/2` is provided as a convenience to also get the solved board.
