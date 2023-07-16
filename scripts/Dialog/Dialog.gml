var speakers_ = {
	tam:{name_: "Tam"},	
	marv:{name_: "Marv"},
	lucy:{name_: "Lucy"},
}

var speakers = {
	marv: "Marv",
	lucy: "Lucy",
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