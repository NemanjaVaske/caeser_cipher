require './lib/script.rb'

describe CaesarCipher do
    subject { CaesarCipher.new }

    describe "#caesar_cipher" do
        it "works with small positive shitf" do
            expect(subject.caesar_cipher("Aa Oo Zz",5)).to eql("Ff Tt Ee")
        end
        it "works with large positive shift" do
            expect(subject.caesar_cipher("Aa Oo Zz", 421)).to eql("Ff Tt Ee")
        end
        it "works with small negative shift" do 
            expect(subject.caesar_cipher("Aa Oo Zz", -5)).to eql("Vv Jj Uu")
        end
        it "works with large negative shift" do
            expect(subject.caesar_cipher("Aa Oo Zz",-421)).to eql("Vv Jj Uu")
        end
        it "works with sentence with small positive shift" do
            expect(subject.caesar_cipher("What, a string!", 5)).to eql("Bmfy, f xywnsl!")
        end
        it "works with sentence with large positive shift" do
            expect(subject.caesar_cipher("What, a 22 string?", 421)).to eql("Bmfy, f 22 xywnsl?")
        end
        it "works with sentence with small negative shift" do
            expect(subject.caesar_cipher("Bmfy, f 22 xywnsl?", -5)).to eql("What, a 22 string?")
        end
        it "works with sentence with large negative shift" do
            expect(subject.caesar_cipher("Lose Yourself 2@?", -210)).to eql("Jmqc Wmspqcjd 2@?")
        end
    end
end