#Task  1
 class CodingClass < ApplicationRecord
    belongs_to :post
 end 

course_to_delete = Course.find(id: 22)
course_to_delete.destroy

course_to_delete = Course.last
course_to_delete.destroybin

class CreatePosts <activeRecord:Migration[8.0]
    def change_column :
        create-table :post do |t|
            t.string :title
            t.string :before
            t.string :before
            t.timesstamps
        end
    end
end
llll