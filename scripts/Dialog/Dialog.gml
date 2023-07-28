var speakers = {
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

#endregion