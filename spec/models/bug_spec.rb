require 'rails_helper'

describe Bug do

  context 'without a name' do
    let(:bug) { Bug.new }

    it 'is not valid' do 
      expect(bug).to_not be_valid
    end

    it 'cannot save' do 
      bug.save
      expect(bug.id).to be_nil
    end

    it 'throws an exception when called save!' do 
      expect {
        bug.save!
      }.to raise_error
    end
  end

  context 'with a title' do
    let(:title) { 'homepage login broken' }
    let(:bug)   { Bug.new(title: title) }

    it 'can save' do 
      bug.save
      expect(bug.id).to be
    end
  end
end