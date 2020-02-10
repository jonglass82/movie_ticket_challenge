class SalesLimit < ActiveModel::Validator
  def validate(record)
    if Auditorium.find_by_id(record.auditorium_id) && record.available_tickets != nil
      if record.available_tickets > record.auditorium.capacity
        record.errors[:base] << "Available tickets can't exceed auditorium capacity"
      end
    end
  end
end