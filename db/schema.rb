ActiveRecord::Schema[7.1].define(version: 2023_10_26_141517) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.text "content"
  end

end
