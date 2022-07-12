require 'telegram/bot'

token = '62edb442efbad15ad8f5d2226ccfa8c8'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|

      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")

  end
end
