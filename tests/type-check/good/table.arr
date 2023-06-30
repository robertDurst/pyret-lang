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

# these are valid and should pass the type checker

# see here: https://pyret.org/docs/latest/tables.html#%28part._tables_.Table_table_get-column%29
# Expected:
#   .get-column :: (colname :: String) -> List<Col>
# Actual:
#   .get-column :: (colname :: String) -> List<Any>
sender-column :: List<Any> = email.get-column('sender')

# https://pyret.org/docs/latest/tables.html#%28part._tables_.Table_table_row-n%29
# Expected:
#   .row-n :: (n :: Number) -> Row
# Actual:
#   .row-n :: (n :: Number) -> Any
row-1 :: Any = email.row-n(1)
