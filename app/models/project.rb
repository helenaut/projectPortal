class Project < ActiveRecord::Base
  attr_accessible :questions, :title, :nonprofit, :five_01c3, :github_site, :company_site, :company_address,
  :application_site, :mission_statement, :contact_name, :contact_position, :contact_email, :contact_number, :contact_hours, :avail_weekly

  attr_accessor :avail_weekly

  
  QUESTIONS.keys.each do |q|
    attr_accessible q.to_sym
    attr_accessor q.to_sym
  end
  
  before_save :merge_questions
  
  


  def merge_questions
    QUESTIONS.each do |q|
      #do something
	  puts "hello" #just a filler for now
      #p self.send(q)
    end
  end

end
