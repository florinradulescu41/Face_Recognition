# Face_Recognition
Matlab program to identify face patterns

Task 1: I read the image using the given functions, then I apply the svd function, which returns U S and V. They have the default dimensions, but cut only the part of them which matters (with gray in the theme statement). At the end I calculate the new A with the formula.

Task 2: I read both images for which I will make graphics:
-graph 1: I apply svd and take the singular values ​​from the diagonal of S. I sort them and then display them
-graph 2: the graph represents a function f (k) in which the result is information. For each k I will have an information, so I make a vector info that has
the length of the vector of the values ​​of k. I use some forums to calculate the function as follows: I calculate the sums in the formulas, then I apply the formula in the statement basis
-graph 3: similarly, I make a vector for the function, which will be different. I apply task 1 to the image at each step, then calculate the function using forums for amounts
-graph 4: similar; I only apply the function in the statement for each value of k

Task 3: I read the image and apply the functions in the statement to calculate my, then I update A. At the end, I apply the formulas to remove the necessary matrices calculus Ak

Task 4: Similar to task 3

Task 5: Similar to task 2, only instead of A I use Ak obtained from A using task 3

Task 6: Failed
