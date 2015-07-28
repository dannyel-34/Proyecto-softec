class Survey < ActiveRecord::Base
    
    has_many :questions
    accepts_nested_attributes_for :questions, allow_destroy: true
    
    def questions_for_form
        collection = questions.where(survey_id: id)
        collection.any? ? collection : questions.build
    end
    
    
end
