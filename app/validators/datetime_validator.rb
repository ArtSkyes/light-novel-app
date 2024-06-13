class DateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return unless value.present? && value < Time.zone.today

    record.errors.add(attribute, "must be before today")
  end
end
