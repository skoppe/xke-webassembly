data Todo = Todo
  { key, text :: String
  , editing, completed :: Bool
  } deriving (Generic)

instance Binary Todo

newtype TodoModel = TodoModel
  { todos :: [Todo]
  } deriving (Generic)

instance Binary TodoModel

loadModel :: String -> IO (Maybe TodoModel)
saveModel :: String -> TodoModel -> IO ()
modifyTodo :: TodoModel -> String -> (Todo -> Todo) -> TodoModel