#!/usr/bin/env bats

@test "atom number count=1" {
    run ./super-duper.scm 42 1
    [ "$status" -eq 0 ]
    [ "$output" = "42" ]
}

@test "atom number count=5" {
    run ./super-duper.scm 42 5
    [ "$status" -eq 0 ]
    [ "$output" = "42" ]
}

@test "atom symbol count=3" {
    run ./super-duper.scm foo 3
    [ "$status" -eq 0 ]
    [ "$output" = "foo" ]
}

@test "atom string count=4" {
    run ./super-duper.scm "\"hello\"" 4
    [ "$status" -eq 0 ]
    [ "$output" = "\"hello\"" ]
}

@test "atom boolean true" {
    run ./super-duper.scm "#t" 2
    [ "$status" -eq 0 ]
    [ "$output" = "#t" ]
}

@test "atom boolean false" {
    run ./super-duper.scm "#f" 2
    [ "$status" -eq 0 ]
    [ "$output" = "#f" ]
}

@test "empty list count=1" {
    run ./super-duper.scm "()" 1
    [ "$status" -eq 0 ]
    [ "$output" = "()" ]
}

@test "empty list count=10" {
    run ./super-duper.scm "()" 10
    [ "$status" -eq 0 ]
    [ "$output" = "()" ]
}

@test "single element count=1" {
    run ./super-duper.scm "(x)" 1
    [ "$status" -eq 0 ]
    [ "$output" = "(x)" ]
}

@test "single element count=2" {
    run ./super-duper.scm "(x)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(x x)" ]
}

@test "two elements count=2" {
    run ./super-duper.scm "(a b)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(a a b b)" ]
}

@test "three numbers count=3" {
    run ./super-duper.scm "(1 2 3)" 3
    [ "$status" -eq 0 ]
    [ "$output" = "(1 1 1 2 2 2 3 3 3)" ]
}

@test "mixed types count=2" {
    run ./super-duper.scm "(#t \"s\" 42 foo)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(#t #t \"s\" \"s\" 42 42 foo foo)" ]
}

@test "list with empties count=2" {
    run ./super-duper.scm "(() a ())" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(() () a a () ())" ]
}

@test "count=0 on list" {
    run ./super-duper.scm "(x y z)" 0
    [ "$status" -eq 0 ]
    [ "$output" = "()" ]
}

@test "count=0 on atom" {
    run ./super-duper.scm 999 0
    [ "$status" -eq 0 ]
    [ "$output" = "999" ]
}

@test "negative count on list" {
    run ./super-duper.scm "(x y)" -2
    [ "$status" -eq 0 ]
    [ "$output" = "()" ]
}

@test "negative count on atom" {
    run ./super-duper.scm bar -7
    [ "$status" -eq 0 ]
    [ "$output" = "bar" ]
}

@test "nested simple count=2" {
    run ./super-duper.scm "((a b) y)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((a a b b) (a a b b) y y)" ]
}

@test "nested simple count=3" {
    run ./super-duper.scm "((a b) y)" 3
    [ "$status" -eq 0 ]
    [ "$output" = "((a a a b b b) (a a a b b b) (a a a b b b) y y y)" ]
}

@test "double nested single symbol count=2" {
    run ./super-duper.scm "(((x)))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(((x x) (x x)) ((x x) (x x)))" ]
}

@test "nested numbers count=2" {
    run ./super-duper.scm "((1 2) 3)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((1 1 2 2) (1 1 2 2) 3 3)" ]
}

@test "two sublists count=2" {
    run ./super-duper.scm "((1 2) (3 4))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((1 1 2 2) (1 1 2 2) (3 3 4 4) (3 3 4 4))" ]
}

@test "atom then sublist count=2" {
    run ./super-duper.scm "(4 (5))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(4 4 (5 5) (5 5))" ]
}

@test "sublist then atom count=2" {
    run ./super-duper.scm "((5) 4)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((5 5) (5 5) 4 4)" ]
}

@test "nested mix count=2" {
    run ./super-duper.scm "(((1 2) 3) (4 (5)))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(((1 1 2 2) (1 1 2 2) 3 3) ((1 1 2 2) (1 1 2 2) 3 3) (4 4 (5 5) (5 5)) (4 4 (5 5) (5 5)))" ]
}

@test "nested deeper count=2" {
    run ./super-duper.scm "((a (b c)) d)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((a a (b b c c) (b b c c)) (a a (b b c c) (b b c c)) d d)" ]
}

@test "strings with space count=2" {
    run ./super-duper.scm "(\"a b\" \"c d\")" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(\"a b\" \"a b\" \"c d\" \"c d\")" ]
}

@test "symbols and strings mix count=2" {
    run ./super-duper.scm "(foo \"bar\" baz)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(foo foo \"bar\" \"bar\" baz baz)" ]
}

@test "booleans and numbers count=3" {
    run ./super-duper.scm "(#t #f 0 1)" 3
    [ "$status" -eq 0 ]
    [ "$output" = "(#t #t #t #f #f #f 0 0 0 1 1 1)" ]
}

@test "long flat list count=2" {
    run ./super-duper.scm "(a b c d e f g h i j)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(a a b b c c d d e e f f g g h h i i j j)" ]
}

@test "list of singletons count=2" {
    run ./super-duper.scm "((a) (b) (c))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((a a) (a a) (b b) (b b) (c c) (c c))" ]
}

@test "deep chain count=2" {
    run ./super-duper.scm "((a (b (c (d)))))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((a a (b b (c c (d d) (d d)) (c c (d d) (d d))) (b b (c c (d d) (d d)) (c c (d d) (d d)))) (a a (b b (c c (d d) (d d)) (c c (d d) (d d))) (b b (c c (d d) (d d)) (c c (d d) (d d)))))" ]
}

@test "nested numbers multiple groups count=3" {
    run ./super-duper.scm "(((1) 2) ((3 4) 5) 6)" 3
    [ "$status" -eq 0 ]
    [ "$output" = "(((1 1 1) (1 1 1) (1 1 1) 2 2 2)
 ((1 1 1) (1 1 1) (1 1 1) 2 2 2)
 ((1 1 1) (1 1 1) (1 1 1) 2 2 2)
 ((3 3 3 4 4 4) (3 3 3 4 4 4) (3 3 3 4 4 4) 5 5 5)
 ((3 3 3 4 4 4) (3 3 3 4 4 4) (3 3 3 4 4 4) 5 5 5)
 ((3 3 3 4 4 4) (3 3 3 4 4 4) (3 3 3 4 4 4) 5 5 5)
 6 6 6)" ]
}

@test "nested with empties count=3" {
    run ./super-duper.scm "((() a) (() b))" 3
    [ "$status" -eq 0 ]
    [ "$output" = "((() () () a a a) (() () () a a a) (() () () a a a) (() () () b b b) (() () () b b b) (() () () b b b))" ]
}

@test "single sublist count=1" {
    run ./super-duper.scm "((a b c))" 1
    [ "$status" -eq 0 ]
    [ "$output" = "((a b c))" ]
}

@test "single sublist count=4" {
    run ./super-duper.scm "((a b))" 4
    [ "$status" -eq 0 ]
    [ "$output" = "((a a a a b b b b) (a a a a b b b b) (a a a a b b b b) (a a a a b b b b))" ]
}

@test "mix nested depths count=2" {
    run ./super-duper.scm "((1 (2)) (3 (4 (5))))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((1 1 (2 2) (2 2)) (1 1 (2 2) (2 2))
 (3 3 (4 4 (5 5) (5 5)) (4 4 (5 5) (5 5)))
 (3 3 (4 4 (5 5) (5 5)) (4 4 (5 5) (5 5))))" ]
}

@test "symbol-like strings count=2" {
    run ./super-duper.scm "(\"(x)\" foo)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(\"(x)\" \"(x)\" foo foo)" ]
}

@test "wide nested mix count=2" {
    run ./super-duper.scm "((a b) (c d) e (f (g h)))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((a a b b) (a a b b) (c c d d) (c c d d) e e
 (f f (g g h h) (g g h h)) (f f (g g h h) (g g h h)))" ]
}

@test "deep numeric chain count=2" {
    run ./super-duper.scm "(((1 2) 3) ((4) 5) 6)" 2
    [ "$status" -eq 0 ]
    [ "$output" = "(((1 1 2 2) 3 3) ((1 1 2 2) 3 3)
 ((4 4) (4 4) 5 5) ((4 4) (4 4) 5 5)
 6 6)" ]
}

@test "strings and booleans nested count=2" {
    run ./super-duper.scm "((\"a\" #t) (#f \"b\"))" 2
    [ "$status" -eq 0 ]
    [ "$output" = "((\"a\" \"a\" #t #t) (\"a\" \"a\" #t #t) (#f #f \"b\" \"b\") (#f #f \"b\" \"b\"))" ]
}

