sudoku(Puzzle, Puzzle) :- sudoku(Puzzle).

sudoku(Puzzle) :-
  rows_complete(Puzzle),
  transpose(Puzzle, PuzzleCols),
  rows_complete(PuzzleCols),
  extract_areas(Puzzle, PuzzleAreas),
  rows_complete(PuzzleAreas).

complete(Row) :-
  member(1, Row),
  member(2, Row),
  member(3, Row),
  member(4, Row),
  member(5, Row),
  member(6, Row),
  member(7, Row),
  member(8, Row),
  member(9, Row).

rows_complete([]).
rows_complete([Row|Rows]) :- complete(Row), rows_complete(Rows).


lists_firsts_rests([], [], []).
lists_firsts_rests([[H|T]|Ls], [H|Hs], [T|Ts]) :- lists_firsts_rests(Ls, Hs, Ts).

transpose([], []).
transpose([[]|_], []).
transpose(O, [H|Ts]) :-
  lists_firsts_rests(O, H, Rs),
  transpose(Rs, Ts).


extract_areas([], []).
extract_areas([[], [], [] | Rs], A) :- extract_areas(Rs, A).
extract_areas([
  [AA, AB, AC | As],
  [BA, BB, BC | Bs],
  [CA, CB, CC | Cs]|
  Rs
], [[AA, AB, AC, BA, BB, BC, CA, CB, CC]|Areas]) :-
  extract_areas([As, Bs, Cs | Rs], Areas).
