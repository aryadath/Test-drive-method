require 'diaryentry'

RSpec.describe DiaryEntry do
  it 'takes into context title and contents' do
    diaryentry = DiaryEntry.new('the_title', 'the_contents')
    expect(diaryentry.title). to eq 'the_title'
    expect(diaryentry.contents).to eq 'the_contents'
  end
end