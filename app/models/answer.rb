class Answer < ApplicationRecord
  belongs_to :ranking 
  belongs_to :user
  validate :answer_null_all

  def answer_null_all
    if answer1===0 && answer2===0 && answer3===0 && answer4===0 && answer5===0 && answer6===0 && answer7===0 && answer8===0 && answer9===0 && answer10===0 && answer11===0 && answer12===0 && answer13===0 && answer14===0 && answer15===0 && answer16===0 && answer17===0 && answer18===0 && answer19===0 && answer20===0 && answer21===0 && answer22===0 && answer23===0 && answer24===0 && answer25===0 && answer26===0 && answer27===0 && answer28===0 && answer29===0 && answer30===0 && answer31===0 && answer32===0 && answer33===0 && answer34===0 && answer35===0 && answer36===0 && answer37===0 && answer38===0 && answer39===0 && answer40===0 && answer41===0 && answer42===0 && answer43===0 && answer44===0 && answer45===0 && answer46===0 && answer47===0 && answer48===0 && answer49===0 && answer50===0
      errors.add(:date, ": 少なくとも１つ以上の項目に回答してください")
    end
  end

end
