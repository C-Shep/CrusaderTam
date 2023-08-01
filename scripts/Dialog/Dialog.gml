var speakers = {
	none: "",
	unknown:"???",
	marv: "Marv",
	lucy: "Lucy",
	sign_: "Sign",
	gaz:"Gaz",
	martine:"Martine",
	lana:"Lana",
	hario:"Hario",
	jose:"Jose",
	suelo:"Suelo",
	dolores:"Dolores",
	adalina:"Adalina",
	pedro:"Pedro",
	simon:"Simon",
	elicia:"Elicia",
	sofia:"Sofia",
	gilbert:"Giblert",
	soldier:"Soldier",
	susannah:"Susannah",
	godfrey:"Godfrey",
	oriel:"Oriel",
	margery:"Margery",
	hilbert:"Hilbert",
	postino:"Postino",
	
}

global.dialog = {};

#region Dialogue

global.dialog.marvTalk = [
	{
		speaker: speakers.marv,
		message_: "Hello brave hero! If you need supplies, visit Gaz the merchant"
	},
	{
		speaker: speakers.marv,
		message_: "He has all of the good supplies!"
	}
]

global.dialog.lucyTalk = [
	{
		speaker: speakers.lucy,
		message_: "Good Day! Make sure to pick up a weapon before leaving town"
	},
	{
		speaker: speakers.lucy,
		message_: "The monsters out there pack a punch!"
	}
]

global.dialog.gazTalk = [
	{
		speaker: speakers.gaz,
		message_: "Alright mate? Got some good wares here"
	},
	{
		speaker: speakers.gaz,
		message_: "They should help an adventurer like yourself"
	}
]

global.dialog.martineTalk = [
	{
		speaker: speakers.martine,
		message_: "Hiya love, will you be spending the night or are you just passing through?"
	},
]

global.dialog.lanaTalk = [
	{
		speaker: speakers.lana,
		message_: "Welcome to the inn. That was one nasty storm, I hope you're doing well."
	},
]

global.dialog.harioTalk = [
	{
		speaker: speakers.hario,
		message_: "This is Quillbeach."
	},
	{
		speaker: speakers.hario,
		message_: "The most tranquil town in all of Lucidia!"
	}
]

global.dialog.joseTalk = [
	{
		speaker: speakers.jose,
		message_: "You look pretty tough, how much can you bench?"
	},
]

global.dialog.sueloTalk = [
	{
		speaker: speakers.suelo,
		message_: "I've been a fisherman for my whole life."
	},
	{
		speaker: speakers.suelo,
		message_: "The waters here are great for catching fish!"
	}
]

global.dialog.doloresTalk = [
	{
		speaker: speakers.dolores,
		message_: "Did you know that goblins can drop herbs?"
	},
	{
		speaker: speakers.dolores,
		message_: "I wonder why they never use them..."
	}
]

global.dialog.adalinaPedroTalk = [
	{
		speaker: speakers.adalina,
		message_: "I almost caught a swordfish yesterday"
	},
	{
		speaker: speakers.pedro,
		message_: "Dude swordfish aren't real"
	},
	{
		speaker: speakers.adalina,
		message_: "What? Yeah they are, I saw one. It had a big sword."
	},
]

global.dialog.eliciaTalk = [
	{
		speaker: speakers.elicia,
		message_: "Quillbeach is named after how tranquil it is."
	},
	{
		speaker: speakers.elicia,
		message_: "What a lovely town."
	}
]

global.dialog.simonTalk = [
	{
		speaker: speakers.simon,
		message_: "The drinks here are a little pricey but sure are worth it!"
	}
]

global.dialog.susannahTalk = [
	{
		speaker: speakers.susannah,
		message_: "Have you ever fought a nightcap?"
	},
	{
		speaker: speakers.susannah,
		message_: "They shake their spores about to put you to sleep then beat you up while you take a kip!"
	}
]

global.dialog.gilbertTalk = [
	{
		speaker: speakers.gilbert,
		message_: "The land down south is pretty dangerous"
	},
	{
		speaker: speakers.gilbert,
		message_: "Make sure that you're prepared when you travel all the way down there"
	}
]

global.dialog.valiburghInnSoldier1Talk = [
	{
		speaker: speakers.soldier,
		message_: "My father was a guard here, so was his father"
	}
]

global.dialog.valiburghInnSoldier2Talk = [
	{
		speaker: speakers.soldier,
		message_: "I think the Emma the gardener was looking for some new fancy compost"
	},
	{
		speaker: speakers.soldier,
		message_: "Something about mushrooms I think"
	},
]

global.dialog.valiburghInnSoldier3Talk = [
	{
		speaker: speakers.soldier,
		message_: "We meet up here every day after our shift"
	}
]

global.dialog.godfreyTalk = [
	{
		speaker: speakers.godfrey,
		message_: "I'm travelling to Torgale at the moment, it's quite far away but I'll make it"
	}
]

global.dialog.orielTalk = [
	{
		speaker: speakers.oriel,
		message_: "It's a good idea to have a few herbs on you at all times"
	},
	{
		speaker: speakers.oriel,
		message_: "You never know when you might need them"
	},
]

global.dialog.margeryTalk = [
	{
		speaker: speakers.margery,
		message_: "Welcome to the weary wyvern, dearie!"
	},
	{
		speaker: speakers.margery,
		message_: "I'm sure an adventurer like yourself will find our beds comfy as can be!"
	},
	{
		speaker: speakers.margery,
		message_: "If you ever need anything, just ask me or my husband"
	},
]

global.dialog.hilbertTalk = [
	{
		speaker: speakers.hilbert,
		message_: "Torgale is a town on a mountain down south. They worship the great wyvern there."
	},
	{
		speaker: speakers.hilbert,
		message_: "That's where me and my wife are from!"
	},
]


#endregion

#region Main Quest

global.dialog.sofiaTalk = [
	{
		speaker: speakers.unknown,
		message_: "Hey!"
	},
	{
		speaker: speakers.unknown,
		message_: "Hey! Are you ok?"
	},
	{
		speaker: speakers.unknown,
		message_: "That was a really bad storm huh?"
	},
	{
		speaker: speakers.unknown,
		message_: "You must have fallen off your boat and washed up on our beach by the looks of it"
	},
	{
		speaker: speakers.sofia,
		message_: "My name's Sofia. I live here in Quillbeach."
	},
	{
		speaker: speakers.sofia,
		message_: "If you need any help at all, visit my house by the east exit to the village."
	},
	{
		speaker: speakers.sofia,
		message_: "See you!"
	}
]

global.dialog.sofiaGive = [
	{
		speaker: speakers.sofia,
		message_: "Oh Hello!"
	},
	{
		speaker: speakers.sofia,
		message_: "I hope you're doing alright, I've got something for you."
	},
	{
		speaker: speakers.none,
		message_: "You recived an Amulet!"
	},
	{
		speaker: speakers.sofia,
		message_: "You seem like an adventurer so I though this amulet might help out"
	},
	{
		speaker: speakers.sofia,
		message_: "Say, I heard that the King of Valiburgh was seeking out brave heroes"
	},
	{
		speaker: speakers.sofia,
		message_: "Maybe you should go there? It's just northwest of here"
	},
]

global.dialog.sofiaChat = [
	{
		speaker: speakers.sofia,
		message_: "Have you visited Valiburgh yet? It's just northwest of here"
	},
	{
		speaker: speakers.sofia,
		message_: "I heard the King was looking for a brave hero, sounds like you fit the bill"
	},
	{
		speaker: speakers.sofia,
		message_: "Good luck!"
	},
]

#endregion

#region Side Quests

global.dialog.postinoHelp = [
	{
		speaker: speakers.postino,
		message_: "Oh no! oh no! oh no! This can't be!"
	},
	{
		speaker: speakers.postino,
		message_: "I've lost a very important letter I was supposed to deliver to the gaffer of Torgale"
	},
	{
		speaker: speakers.postino,
		message_: "I must have dropped it somewhere about town but I have no idea where!"
	},
]

global.dialog.postinoFound = [
	{
		speaker: speakers.postino,
		message_: "How could I be so foolish!?"
	},
	{
		speaker: speakers.postino,
		message_: "Wait a minute...?"
	},
	{
		speaker: speakers.postino,
		message_: "That envelope you have, thats my letter!"
	},
	{
		speaker: speakers.postino,
		message_: "Here! I'll trade you my scarf for it!"
	},
	{
		speaker: speakers.none,
		message_: "You recived a Swift Scarf!"
	},
	{
		speaker: speakers.postino,
		message_: "Thank you so much, adventurer!"
	},
]

global.dialog.postinoChat = [
	{
		speaker: speakers.postino,
		message_: "You really saved my behind, adventurer"
	},
	{
		speaker: speakers.postino,
		message_: "I'll be going to Torgale to deliver this mail, I hope we meet again soon!"
	}

]


#endregion

#region Signs

global.dialog.gazSign = [
	{
		speaker: speakers.sign_,
		message_: "Gaz's General Wares"
	}
]

global.dialog.lanaSign = [
	{
		speaker: speakers.sign_,
		message_: "Lana's Inn"
	}
]

global.dialog.wearyWyvernSign = [
	{
		speaker: speakers.sign_,
		message_: "The Weary Wyvern Inn"
	}
]

#endregion