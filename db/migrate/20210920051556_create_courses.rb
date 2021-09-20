class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :image
      t.text :description
      t.decimal :pricing

      t.timestamps
    end
  end
end
