 #task 1
 emails.find_by(:enrollments Intro Programming).where(:enrollments Intro Programming: { studentt_id: course.id }).pluck(:email).limit(2)
end 

 

  Trimester Load (1.6ms)  SELECT "trimesters".* FROM "trimesters" ORDER BY "trimesters"."id" DESC LIMIT 1 /*application='DocRails'*/
=>
#<Trimester:0x0000000121db9bc0
 id: 9,
 year: "2025",
 term: "Fall",
 application_deadline: "2025-08-15",
 start_date: "2025-09-01",
 end_date: nil,
 created_at: "2025-01-01 19:21:16.044837000 +0000",
 updated_at: "2025-01-01 19:21:16.044837000 +0000">

# <course id>, <coding class name> - <trimester term> <trimester year>
 class CodingClass < ApplicationRecord
    belongs_to :post
 end 
#task 2
    emails.find_by({ title: 'mentors' })
    Trimester.find_by(year: '2025', term: 'Fall')
    enrollments = Course.where(mentor_id: 2)

    CodingClass.find_by(id: 1)

    mentor.each do |mentors|
  puts mentors.coding_class.email.id
end
