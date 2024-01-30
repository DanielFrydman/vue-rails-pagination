# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has all the attributes' do
    attributes = %w[
      first_name last_name birthday mother_first_name father_first_name
    ]

    attributes.each do |attribute|
      expect(described_class.column_names).to(include(attribute))
    end
  end
end
