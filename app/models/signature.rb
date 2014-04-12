class Signature < ActiveRecord::Base
    belongs_to :freshman
    belongs_to :upperclassman

    def to_s
      return "id: #{id}, f_id: #{freshman_id}, u_id: #{upperclassman_id}, is_signed: #{is_signed}"
    end

    def <=>(other)
      # Compare signatures based on is_signed (true > false)
      (self.is_signed != other.is_signed) ? (self.is_signed ? 1 : -1) : 0
    end

end
