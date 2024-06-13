class DateValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.is_a?(Date)

    record.errors[attribute] << (options[:message] || "is not a date")
  end
end
