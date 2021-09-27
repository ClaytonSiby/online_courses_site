class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :image
      t.decimal :pricing

      t.timestamps
    end
  end
end
