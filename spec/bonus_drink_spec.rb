require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }
  specify { expect(BonusDrink.total_count_for(3)).to eq 4 }
  specify { expect(BonusDrink.total_count_for(11)).to eq 16 }
  specify { expect(BonusDrink.total_count_for(50)).to eq 74 }
  specify { expect(BonusDrink.total_count_for(100)).to eq 149 }
  specify { expect{BonusDrink.total_count_for("test")}.to raise_error(ArgumentError) }
  specify { expect{BonusDrink.total_count_for(nil)}.to raise_error(ArgumentError) }
  specify { expect{BonusDrink.total_count_for(-1)}.to raise_error(ArgumentError) }
end