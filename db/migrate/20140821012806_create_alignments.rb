class CreateAlignments < ActiveRecord::Migration
  def change
    create_table :alignments do |t|
    	t.string :alignment_name
      t.timestamps
    end
  end
end
