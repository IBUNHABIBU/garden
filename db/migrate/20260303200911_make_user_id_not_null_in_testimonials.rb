class MakeUserIdNotNullInTestimonials < ActiveRecord::Migration[8.0]
  def change
    change_column_null :testimonials, :user_id, false
  end
end
