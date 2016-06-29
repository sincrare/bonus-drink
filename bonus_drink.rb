class BonusDrink

  #空き瓶3本につき1本のボーナス
  BonusBy = 3
  BonusCount = 1

  # 飲み物を買うと、空き瓶3本につき1本をプレゼントしてくれる
  # 最初に購入する本数を引数で渡すと、合計で飲める本数を返す
  # @param [Integer] amount 購入する本数
  # @return [Integer] 合計で飲める本数
  def self.total_count_for(amount)
    
    if amount.is_a?(Integer) == false || amount < 0 then 
      fail ArgumentError, "invalid argument:amount=#{amount}"
    end

    drank = 0
    remain = amount

    while remain > 0
      if remain < BonusBy then
        drank += remain
        break;
      else
        bonus = remain / BonusBy * BonusCount
        drank += remain - remain % BonusBy
        remain = remain % BonusBy + bonus
      end
    end

    return drank
  end
end