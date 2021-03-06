RSpec.shared_examples 'a numeric field greater than 0' do |field|
  it do
    expect(subject).to validate_numericality_of(field).
      only_integer.is_greater_than 0
  end
end

RSpec.shared_examples 'an association field' do |field|
  it { expect(subject).to have_one field }
  it { expect(subject).to validate_presence_of field }
end

RSpec.shared_examples 'a belongs_to field' do |field|
  it { expect(subject).to belong_to field }
  it { expect(subject).to validate_presence_of field }
end
