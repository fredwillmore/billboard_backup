class CreateChartEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :chart_entries do |t|
      t.integer :position
      t.integer :last_week_position
      t.integer :peak_position
      t.integer :weeks_on_chart
      t.belongs_to :track
      t.date :chart_entry_date
      t.integer :entry_position
      t.integer :overall_peak_position
      t.integer :overall_weeks_on_chart
      t.belongs_to :chart

      t.timestamps
    end
  end
end
