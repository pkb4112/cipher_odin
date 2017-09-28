require "cipher"

describe CeasarCipher do 
  describe ".ceaser" do

    context "given 'hi', 2" do
      let(:instance) {CeasarCipher.new("hi",2)}
      it "returns shifted by 2" do
        expect(instance.ceasar(instance.input_string,instance.shift)).to eql('jk')
      end
    end

    let(:instance) {CeasarCipher.new("",0)}

    context "given '', 0" do 
      it "returns nil" do
        expect(instance.ceasar('',0)).to eql("")
      end
    end

    let(:instance) {CeasarCipher.new("does this work",2)}

    context "given 'does this work', 2" do 
      it "returns nil" do
        expect(instance.ceasar(instance.input_string,instance.shift)).to eql("fqgu vjku yqtm")
      end
    end

  end
end
