import table as T

email :: T.Table =
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
row-1 :: T.Row = email.row-n(1)

# https://pyret.org/docs/latest/tables.html#%28part._tables_.Table_table_row-n%29
# Expected:
#   .add-column :: (colname :: String, new-vals :: List<Col>) -> Table
# Actual:
#   .add-column :: (colname :: String, new-vals :: List<Any>) -> Table
email-modified :: T.Table = email.add-column('new-col', sender-column)


