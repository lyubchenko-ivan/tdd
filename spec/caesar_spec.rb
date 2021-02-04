require 'rspec'
require_relative '../caesar.rb'

describe 'Caesar' do

  it "should ok with key 3 and 'Cirillic' uppercase" do
    expect(caesar('А Б В Г Д Е Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я', 3)).to eql 'Г Д Е Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я А Б В'
  end

  it "should ok with 'English' 13 key downcase" do
    expect(caesar('abcdefghijklmnopqrstuvwxyz', 13)).to eql 'nopqrstuvwxyzabcdefghijklm'
  end

  it "should ok with 'English' upcase 26 key" do
    expect(caesar("ABCDEFGHIJKLMNOPQRSTUVWXYZ" , 26)).to eql "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  end

  it "should ok with 'Cirillic' downcase key 31" do
    expect(caesar("а б в г д е ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я" , 32)).to eql "а б в г д е ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я"
  end


end
