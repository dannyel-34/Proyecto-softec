class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :survey, index: true
      t.string :pregunta

      t.timestamps
    end
  end
end
