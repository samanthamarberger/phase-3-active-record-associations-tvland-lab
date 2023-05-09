class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    return "We're sorry about passing on John Mulaney's pilot"
  end
end
