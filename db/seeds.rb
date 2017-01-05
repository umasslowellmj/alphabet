# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {email: "ganbo@gmail.com", password: "12345678", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "ulzii@gmail.com", password: "12345678", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "soyoloo@gmail.com", password: "12345678", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "khongor@gmail.com", password: "12345678", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44", last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])


EngWord.create([
  {word: "apple"},
  {word: "food"},
  {word: "swim"},
  {word: "fly"},
  {word: "water"}
])

EngWordTranslation.create([
    {definition: "ус", word_type: "нэр", sample_sentence: "Everyone should drink at least seven glasses of water a day", sentence_translation: "Хүн бүр өдөрт дор хаяж долоон стакан ус уух хэрэгтэй.", eng_word_id: 5, user_id: 1},
    {definition: "нисэх", word_type: "үйл", sample_sentence: "I wish I could fly.", sentence_translation: "Би нисдэг байсан ч болоосой.", eng_word_id: 4, user_id: 4},
    {definition: "сэлэх", word_type: "үйл", sample_sentence: "My friend doesn't swim.", sentence_translation: "Миний найз сэлдэггүй.", eng_word_id: 3, user_id: 3},
    {definition: "хоол", word_type: "нэр", sample_sentence: "Ulzii doesn't share food", sentence_translation: "Өлзий хоолоо хуваалцдаггүй.", eng_word_id: 2, user_id: 2},
    {definition: "алим", word_type: "нэр", sample_sentence: "An apple a day keeps the doctor away", sentence_translation: "Өдөрт нэг алим эмч нараас хол байна.", eng_word_id: 1, user_id: 3}
])
