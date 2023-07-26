var speakers = {
	marv: "Marv",
	lucy: "Lucy",
	sign_: "Sign",
	gaz:"Gaz",
	martine:"Martine",
}

global.dialog = {};

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

global.dialog.gazSign = [
	{
		speaker: speakers.sign_,
		message_: "Gaz's General Wares"
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