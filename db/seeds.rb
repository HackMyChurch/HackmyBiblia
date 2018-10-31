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


User.create!(email: "user@alpha.fr", password: "000000", nickname: "Alpha")


group_alpha = Group.create!(name: "alpha Nantes", description: "Bienvenue chez les alpha")

chapter_1 = Chapter.create!(
  description: "Lorsque le prophète Élie fut arrivé à l’Horeb, la montagne de Dieu, il entra dans une caverne et y passa la nuit. La parole du Seigneur lui fut adressée :
  « Sors dans la montagne et tiens-toi devant le Seigneur, car il va passer. »
  À l’approche du Seigneur, il y eut un ouragan, si fort et si violent qu’il fendait les montagnes
  et brisait les rochers, mais le Seigneur n’était pas dans l’ouragan ; et après l’ouragan,
  il y eut un tremblement de terre, mais le Seigneur n’était pas dans le tremblement de terre;
  et après le tremblement de terre, un feu, mais
  le Seigneur n’était pas dans ce feu, et, après ce feu, le murmure d’une brise légère.
  Aussitôt qu’il l’entendit, Élie se couvrit le visage avec son manteau, il sortit et se tint à l’entrée de la caverne",
  title: "Sors dans la montagne et tiens-toi devant le Seigneur, car il va passer.",
  bible_ref: "Premier livre des Rois 19, 9a. 11-13a",
)


conversation_1 = Conversation.create!(
  name: "texte de la semaine 1",
  likes: 2,
  group_id: group_alpha.id,
  chapter_id: chapter_1.id,
)

Message.create!(
  name: "Finalement Dieu n’intervient pas de façon extraordinaire, il est dans notre quotidien et proche de nous.",
  likes: 3,
  conversation_id: conversation_1.id,
  author_name: "Alice",
  author_img: "alice.png",
)

Message.create!(
  name: "Ce texte me parle beaucoup, à l'heure où nous sommes si sensibles aux signes, en recherce de miracles.
  Ce Dieu vient nous trouver, se laisse trouver, dans le silence de notre coeur.
  Puisse-je ne jamais me lasser de le chercher !",
  likes: 5,
  conversation_id: conversation_1.id,
  author_name: "Isabelle",
  author_img: "isabelle.png",
)



chapter_2 = Chapter.create!(
  description: "Mais voici quelle sera l’Alliance que je conclurai avec la maison d’Israël
  quand ces jours-là seront passés. Je mettrai ma Loi au plus profond d’eux-mêmes ; je l’inscrirai sur leur cœur.
  Je serai leur Dieu, et ils seront mon peuple.",
  title: "Voici quelle sera l'Alliance",
  bible_ref: "Jérémie 31:33",
)

conversation_2 = Conversation.create!(
  name: "texte de la semaine 2",
  likes: 7,
  group_id: group_alpha.id,
  chapter_id: chapter_2.id,
)

Message.create!(
  name: "Inscrit sur notre coeur? Je ne comprends pas...",
  likes: 3,
  conversation_id: conversation_2.id,
  author_name: "Sandra",
  author_img: "sandra.png",
)

Message.create!(
  name: "c’est une image! nous avons en nous comme une étincelle divine, qu’il nous faut trouver dans notre coeur.",
  likes: 15,
  conversation_id: conversation_2.id,
  author_name: "Michel",
  author_img: "michel.png",
)




chapter_3 = Chapter.create!(
  description: "Jésus apparaît aux disciples, en l’absence de Thomas qui dit :\n
    « Je ne vous croirai pas tant que je ne l’aurai pas vu moi-même. Tant que je n'aurai pas vu les blessures de ses mains et mis ma main dans la plaie de son côté, non je ne croirai pas. » Jésus apparaît et dit à Thomas : «Cesse de douter, deviens un homme de foi. » Thomas lui dit : ‘Mon Seigneur et mon Dieu’ ». Thomas l’appelle Dieu, Jésus ne dit pas: « Arrête, tu vas trop loin ! »\n
    Au contraire il confirme : « Parce que tu m’as vu, tu crois. Heureux ceux qui ont cru sans avoir vu »",
  title: "Heureux ceux qui ont cru sans avoir vu",
  bible_ref: "Jn 20, 28-29",
)

conversation_3 = Conversation.create!(
  name: "texte de la semaine 3",
  likes: 4,
  group_id: group_alpha.id,
  chapter_id: chapter_3.id,
)

Message.create!(
  name: "En fait Thomas, face à Jésus, n’a pas osé mettre les mains dans la plaie, il a reconnu Jésus comme son Seigneur, son Dieu.",
  likes: 12,
  conversation_id: conversation_3.id,
  author_name: "Isabelle",
  author_img: "isabelle.png",
)

Message.create!(
  name: "C’est vrai que j’ai souvent des doutes, comment affermir ma foi?",
  likes: 9,
  conversation_id: conversation_3.id,
  author_name: "Sandra",
  author_img: "sandra.png",
)

Message.create!(
  name: "Quel bonheur de croire sans voir. Je me rends compte de tous les bienfaits dans ma vie depuis que je crois!",
  likes: 17,
  conversation_id: conversation_3.id,
  author_name: "Michel",
  author_img: "michel.png",
)

Message.create!(
  name: "Ah ça, je ne l'avais pas vu venir ...",
  likes: 1,
  conversation_id: conversation_3.id,
  author_name: "Alice",
  author_img: "alice.png",
)


puts "#{User.count} utilisateur créé"
puts "#{Group.count} groupe créé"
puts "#{Chapter.count} versets créé"
puts "#{Conversation.count} conversation créée"
puts "#{Message.count} messages créés"


puts "hackmybiblia.herokuapp.com/groups/#{Group.last.id}/conversations/#{Conversation.last.id}"
