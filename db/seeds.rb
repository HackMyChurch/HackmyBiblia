# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeds"

User.destroy_all
Group.destroy_all
Chapter.destroy_all
Conversation.destroy_all
Message.destroy_all


User.create!(email: "paul@paul.fr", password: "000000", nickname: "Paul")


group = Group.create!(name: "alpha Nantes", description: "Bienvenue chez les alpha")

chapter = Chapter.create!(
  description: "Jésus apparaît aux disciples, en l’absence de Thomas qui dit :\n
    « Je ne vous croirai pas tant que je ne l’aurai pas vu moi-même. Tant que je n'aurai pas vu les blessures de ses mains et mis ma main dans la plaie de son côté, non je ne croirai pas. » Jésus apparaît et dit à Thomas : «Cesse de douter, deviens un homme de foi. » Thomas lui dit : ‘Mon Seigneur et mon Dieu’ ». Thomas l’appelle Dieu, Jésus ne dit pas: « Arrête, tu vas trop loin ! »\n
    Au contraire il confirme : « Parce que tu m’as vu, tu crois. Heureux ceux qui ont cru sans avoir vu »",
  title: "Heureux ceux qui ont cru sans avoir vu",
  bible_ref: "Jn 20, 28-29",
)

conversation = Conversation.create!(
  name: "texte pour jeudi 4 octobre",
  likes: 4,
  group_id: group.id,
  chapter_id: chapter.id,
)

Message.create!(
  name: "En fait Thomas, face à Jésus, n’a pas osé mettre les mains dans la plaie, il a reconnu Jésus comme son Seigneur, son Dieu.",
  likes: 12,
  conversation_id: conversation.id,
  author_name: "Isabelle",
  author_img: "isabelle.png",
)

Message.create!(
  name: "C’est vrai que j’ai souvent des doutes, comment affermir ma foi?",
  likes: 9,
  conversation_id: conversation.id,
  author_name: "Sandra",
  author_img: "sandra.png",
)

Message.create!(
  name: "Quel bonheur de croire sans voir. Je me rends compte de tous les bienfaits dans ma vie depuis que je crois!",
  likes: 17,
  conversation_id: conversation.id,
  author_name: "Michel",
  author_img: "michel.png",
)

Message.create!(
  name: "Ah ça, je ne l'avais pas vu venir ...",
  likes: 1,
  conversation_id: conversation.id,
  author_name: "Alice",
  author_img: "alice.png",
)


puts "#{User.count} utilisateur créé"
puts "#{Group.count} groupe créé"
puts "#{Chapter.count} versets créé"
puts "#{Conversation.count} conversation créée"
puts "#{Message.count} messages créés"


puts "hackmybiblia.herokuapp.com/groups/#{Group.last.id}/conversations/#{Conversation.last.id}"
