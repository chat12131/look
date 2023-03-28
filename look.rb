choices = [0, 1, 2]
direction_choices = [0, 1, 2, 3]
puts "-------------------------------"
puts "あっち向いホイ!"

loop do
  puts "-------------------------------"
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  user_choice = gets.to_i

  if user_choice == 3
    puts "-------------------------------"
    puts "終了します"
    puts "-------------------------------"
    break
  elsif !(choices.include?(user_choice))
    puts "-------------------------------"
    puts "表示された数字を入力してください。"
    puts "-------------------------------"
    next
  end

  computer_choice = choices.sample

  case user_choice

  when 0
    puts "-------------------------------"
    puts "あなた：グーを出しました"
    case computer_choice
    when 0
      puts "相手：グーを出しました"
      puts "-------------------------------"
      puts "あいこです"
      next
    when 1
      puts "相手：チョキを出しました"
      puts "-------------------------------"
      puts "じゃんけんはあなたの勝ちです！"
      result = "win"
    when 2
      puts "相手：パーを出しました"
      puts "-------------------------------"
      puts "じゃんけんは相手の勝ちです"
      result = "loose"
    end

  when 1
    puts "-------------------------------"
    puts "あなた：チョキを出しました"
    case computer_choice
    when 0
      puts "相手：グーを出しました"
      puts "-------------------------------"
      puts "じゃんけんは相手の勝ちです"
      result = "loose"
    when 1
      puts "相手：チョキを出しました"
      puts "-------------------------------"
      puts "あいこです"
      next
    when 2
      puts "相手：パーを出しました"
      puts "-------------------------------"
      puts "じゃんけんはあなたの勝ちです！"
      result = "win"
    end

  when 2
    puts "-------------------------------"
    puts "あなた：パーを出しました"
    case computer_choice
    when 0
      puts "相手：グーを出しました"
      puts "-------------------------------"
      puts "じゃんけんはあなたの勝ちです！"
      result = "win"
    when 1
      puts "相手：チョキを出しました"
      puts "-------------------------------"
      puts "じゃんけんは相手の勝ちです"
      result = "loose"
    when 2
      puts "相手：パーを出しました"
      puts "-------------------------------"
      puts "あいこです"
      next
    end
  end


  if result == "win"
   puts "-------------------------------"
   puts "あっち向いて〜(指)"
   puts "0(上) 1(下) 2(右) 3(左)"
   direction_user_choices = gets.to_i
   direction_computer_choices = direction_choices.sample
   if !(direction_choices.include?(direction_user_choices))
    puts "-------------------------------"
    puts "表示された数字を入力してください。"
    puts "-------------------------------"
    next
   end

   case direction_user_choices
   when 0
    puts "-------------------------------"
    puts "あなた：上を指しました"
    case direction_computer_choices
    when 0 
      puts "相手：上を向きました"
      puts "-------------------------------"
      puts "あっち向いてホイに勝ちました！"
      puts "-------------------------------"
      break
    when 1
      puts "相手：下を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 2
      puts "相手：右を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 3
      puts "相手：左を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    end

   when 1
    puts "-------------------------------"
    puts "あなた：下を指しました"
    case direction_computer_choices
    when 0 
      puts "相手：上を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 1
      puts "相手：下を向きました"
      puts "-------------------------------"
      puts "あっち向いてホイに勝ちました！"
      puts "-------------------------------"
      break
    when 2
      puts "相手：右を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 3
      puts "相手：左を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    end

   when 2
    puts "-------------------------------"
    puts "あなた：右を指しました"
    case direction_computer_choices
    when 0 
      puts "相手：上を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 1
      puts "相手：下を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 2
      puts "相手：右を向きました"
      puts "-------------------------------"
      puts "あっち向いてホイに勝ちました！"
      puts "-------------------------------"
      break
    when 3
      puts "相手：左を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    end

   when 3
    puts "-------------------------------"
    puts "あなた：左を指しました"
    case direction_computer_choices
    when 0 
      puts "相手：上を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 1
      puts "相手：下を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 2
      puts "相手：右を向きました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 3
      puts "相手：左を向きました"
      puts "-------------------------------"
      puts "あっち向いてホイに勝ちました！"
      puts "-------------------------------"
      break
    end
   end

  elsif result == "loose"
   puts "-------------------------------"
   puts "あっち向いて〜(顔)"
   puts "0(上) 1(下) 2(右) 3(左)"
   direction_user_choices = gets.to_i
   direction_computer_choices = direction_choices.sample

   case direction_user_choices
   when 0
    puts "-------------------------------"
    puts "あなた：上を向きました"
    case direction_computer_choices
    when 0 
      puts "相手：上を指しました"
      puts "-------------------------------"
      puts "あっち向いてホイに負けました"
      puts "-------------------------------"
      break
    when 1
      puts "相手：下を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 2
      puts "相手：右を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 3
      puts "相手：左を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    end

   when 1
    puts "-------------------------------"
    puts "あなた：下を向きました"
    case direction_computer_choices
    when 0 
      puts "相手：上を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 1
      puts "相手：下を指しました"
      puts "-------------------------------"
      puts "あっち向いてホイに負けました"
      puts "-------------------------------"
      break
    when 2
      puts "相手：右を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 3
      puts "相手：左を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    end

   when 2
    puts "-------------------------------"
    puts "あなた：右を向きました"
    case direction_computer_choices
    when 0 
      puts "相手：上を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 1
      puts "相手：下を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 2
      puts "相手：右を指しました"
      puts "-------------------------------"
      puts "あっち向いてホイに負けました"
      puts "-------------------------------"
      break
    when 3
      puts "相手：左を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    end

   when 3
    puts "-------------------------------"
    puts "あなた：左を向きました"
    case direction_computer_choices
    when 0 
      puts "相手：上を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 1
      puts "相手：下を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 2
      puts "相手：右を指しました"
      puts "-------------------------------"
      puts "引き分けです"
      next
    when 3
      puts "相手：左を指しました"
      puts "-------------------------------"
      puts "あっち向いてホイに負けました"
      puts "-------------------------------"
      break
    end
   end
  end
end
