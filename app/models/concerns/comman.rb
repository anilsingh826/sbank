module Comman
  extend ActiveSupport::Concern

  def date_format
    date.strftime("%m/%d/%Y")
  end
end
