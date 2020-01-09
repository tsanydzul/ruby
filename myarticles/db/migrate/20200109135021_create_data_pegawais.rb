class CreateDataPegawais < ActiveRecord::Migration[6.0]
  def change
    create_table :data_pegawais do |t|
      t.text :nama
      t.integer :nik

      t.timestamps
    end
  end
end
