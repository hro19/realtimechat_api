Room.create(name: '週末の予定')
Room.create(name: 'ランチ会')

Message.create(content: 'Hello!', sender_name: '太郎', room: Room.first)
Message.create(content: 'Hi!', sender_name: '又吉', room: Room.first)
Message.create(content: 'How are you?', sender_name: '太郎', room: Room.first)
Message.create(content: 'Fine, thanks!', sender_name: '梅子', room: Room.last)