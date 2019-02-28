class CreateMailers < ActiveRecord::Migration[5.2]
  def change
    create_table :mailers do |t|
      t.string :object
      t.text :body

      t.timestamps
    end
  end
end
