require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(
      email: 'tuan@lwx.com',
      password: 'tuan'
    )
  }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a email' do
      subject.email = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).not_to be_valid
    end
  end
end
