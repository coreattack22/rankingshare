class CreateRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :rankings do |t|
      t.integer :maker_id
      t.string :title
      t.integer :ranked_count
      t.timestamp :answerd_at
      t.string :element1
      t.string :element2
      t.string :element3
      t.string :element4
      t.string :element5
      t.string :element6
      t.string :element7
      t.string :element8
      t.string :element9
      t.string :element10
      t.string :element11
      t.string :element12
      t.string :element13
      t.string :element14
      t.string :element15
      t.string :element16
      t.string :element17
      t.string :element18
      t.string :element19
      t.string :element20
      t.string :element21
      t.string :element22
      t.string :element23
      t.string :element24
      t.string :element25
      t.string :element26
      t.string :element27
      t.string :element28
      t.string :element29
      t.string :element30
      t.string :element31
      t.string :element32
      t.string :element33
      t.string :element34
      t.string :element35
      t.string :element36
      t.string :element37
      t.string :element38
      t.string :element39
      t.string :element40
      t.string :element41
      t.string :element42
      t.string :element43
      t.string :element44
      t.string :element45
      t.string :element46
      t.string :element47
      t.string :element48
      t.string :element49
      t.string :element50

      t.timestamps
    end
  end
end
