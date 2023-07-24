email :: Table =
  table: sender, subject
    row: "Matthias", "hi"
    row: "Kathi", "foo"
    row: "Joe", "bar"
    row: "Matthias", "bye"
  end

tbl = table: name, age
  row: "Bob", 12
  row: "Alice", 15
  row: "Eve", 13
end

wider-tbl = table: name, age, gender
end

even-wider-tbl = table: name, age, gender, address
end

tbl.row("Foo", 11)
wider-tbl.row("Foo", 11, "male")
even-wider-tbl.row("Foo", 11, "male", "123 Main St.")
