class Phone
  include Mongoid::Document
  field :number, type: String

  belongs_to :user

  def display_name
    number
  end
end
