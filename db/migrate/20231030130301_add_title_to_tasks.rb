class AddTitleToTasks < ActiveRecord::Migration[6.1]
  def change
    validates :content, presence: true, length: { maximum: 255 }
    validates :status, presence: true, length: { maximum: 10 }
  end
end
