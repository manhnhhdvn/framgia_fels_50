class AddUkAudioAndUsAudioToWords < ActiveRecord::Migration
  def change
    add_column :words, :uk_audio, :string
    add_column :words, :us_audio, :string
  end
end
