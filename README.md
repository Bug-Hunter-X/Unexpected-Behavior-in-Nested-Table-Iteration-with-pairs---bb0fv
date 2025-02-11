# Lua Nested Table Iteration Bug

This repository demonstrates an uncommon bug in Lua related to the unexpected behavior of the `pairs` iterator when used with nested tables.  The issue arises from the fact that `pairs` does not guarantee iteration order, which can lead to problems when modifying tables during iteration.  The bug and its solution are provided in separate Lua files.

## Bug Description:
The `bug.lua` file contains a function that iterates through a nested table.  If you try to modify this table during the iteration with the `pairs` function, the order of iteration might not be as expected, leading to unexpected results.

## Solution:
The `bugSolution.lua` file presents a corrected version that avoids the bug by using a different approach to iterate over nested tables, ensuring that the table traversal process is predictable and consistent.