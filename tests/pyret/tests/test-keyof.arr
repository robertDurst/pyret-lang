# lang pyret

check "works with primitives":
  builtins.keyof(true) is ""
  builtins.keyof(1) is ""
  builtins.keyof("hello") is ""
end

check "works with functions":
  fun square(n):
    n * n
  end

  builtins.keyof(square) is "app | name"
end

check "works with lists":
  builtins.keyof([list: ]) is "_output | _plus | map | filter | each | reverse | push | split-at | take | drop | get | set | remove | join-str | join-str-last | length | find | partition | foldr | foldl | all | any | member | append | last | sort-by | sort | _match"
  builtins.keyof([list: "a", "b", "c"]) is "first | rest"
end

check "works with tuples":
  builtins.keyof({1; 2}) is "vals"
end

check "works with tables":
  my-table = table: name :: String, age :: Number, favorite-color :: String
    row: "Bob", 12, "blue"
    row: "Alice", 17, "green"
    row: "Eve", 13, "red"
  end

  builtins.keyof(my-table) is "_header-raw-array | _rows-raw-array | increasing-by | decreasing-by | order-by | order-by-columns | multi-order | add-column | add-row | row-n | all-rows | column | column-n | all-columns | column-names | stack | reduce | empty | drop | rename-column | transform-column | build-column | filter-by | filter | length | get-column | select-columns | _column-index | _no-column | _equals | _output | row | new-row"
end
