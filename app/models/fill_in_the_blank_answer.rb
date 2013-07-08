class FillInTheBlankAnswer < ActiveRecord::Base
  content(:pre_content)
  content(:post_content)
  sortable :question_id

  attr_accessible :blank_answer, :credit

  belongs_to :question

  validates_presence_of :question

  ##################
  # Access Control #
  ##################
end
