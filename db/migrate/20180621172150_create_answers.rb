class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :ranking_id  ,null: false, default: ""
      t.integer :answerer_id ,null: false, default: ""
      t.string :comment
      t.integer :answer1
      t.integer :answer2
      t.integer :answer3
      t.integer :answer4
      t.integer :answer5
      t.integer :answer6
      t.integer :answer7
      t.integer :answer8
      t.integer :answer9
      t.integer :answer10
      t.integer :answer11
      t.integer :answer12
      t.integer :answer13
      t.integer :answer14
      t.integer :answer15
      t.integer :answer16
      t.integer :answer17
      t.integer :answer18
      t.integer :answer19
      t.integer :answer20
      t.integer :answer21
      t.integer :answer22
      t.integer :answer23
      t.integer :answer24
      t.integer :answer25
      t.integer :answer26
      t.integer :answer27
      t.integer :answer28
      t.integer :answer29
      t.integer :answer30
      t.integer :answer31
      t.integer :answer32
      t.integer :answer33
      t.integer :answer34
      t.integer :answer35
      t.integer :answer36
      t.integer :answer37
      t.integer :answer38
      t.integer :answer39
      t.integer :answer40
      t.integer :answer41
      t.integer :answer42
      t.integer :answer43
      t.integer :answer44
      t.integer :answer45
      t.integer :answer46
      t.integer :answer47
      t.integer :answer48
      t.integer :answer49
      t.integer :answer50

      t.timestamps
    end
    add_index :answers, [:ranking_id, :answerer_id], unique: true
  end
end
