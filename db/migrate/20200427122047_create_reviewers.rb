class CreateReviewers < ActiveRecord::Migration[5.2]
  def change
    create_table :reviewers do |t|
      t.string :company_name, null: false
      t.string :reviewer_name, null: false
      t.text :image, null: false
      t.text :guide_text, null: false
      t.timestamps
    end
  end
end
