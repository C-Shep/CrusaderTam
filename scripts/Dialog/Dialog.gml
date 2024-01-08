var speakers = {
	none: "",
	unknown:"???",
	man:"Man",
	woman:"Woman",
	sign_: "Sign",
	grave: "Grave",
	gaz:"Gaz",
	gav:"Gav",
	goz:"Goz",
	guz:"Guz",
	martine:"Martine",
	lana:"Lana",
	sofia:"Sofia",
	soldier:"Soldier",
	margery:"Margery",
	hilbert:"Hilbert",
	postino:"Postino",
	emma:"Emma",
	barghest: "Barghest",
	cirrus : "Cirrus",
	stratus : "Stratus",
	elia : "Elia",
	chef : "Chef",
	king : "KngWymar",
	queen : "Queen Ela",
	orchard : "Appleman",
	axassin : "Axassin",

}

global.dialog = {};

#region Dialogue

	#region Quillbeach
	global.dialog.marvTalk = [
		{
			speaker: speakers.man,
			message_: "Hello brave hero! If you need supplies, visit Gaz the merchant"
		},
		{
			speaker: speakers.man,
			message_: "Make sure to pick up a weapon from him before leaving town"
		},
		{
			speaker: speakers.man,
			message_: "He has all of the good supplies!"
		}
	]

	global.dialog.lucyTalk = [
		{
			speaker: speakers.woman,
			message_: "Good Day! Make sure to pick up a weapon before leaving town"
		},
		{
			speaker: speakers.woman,
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
			speaker: speakers.man,
			message_: "This is Quillbeach."
		},
		{
			speaker: speakers.man,
			message_: "The most tranquil town in all of Lucidia!"
		}
	]

	global.dialog.joseTalk = [
		{
			speaker: speakers.man,
			message_: "You look pretty tough, how much can you bench?"
		},
	]

	global.dialog.sueloTalk = [
		{
			speaker: speakers.woman,
			message_: "I've been a fisher for my whole life."
		},
		{
			speaker: speakers.woman,
			message_: "The waters here are great for catching fish!"
		}
	]

	global.dialog.doloresTalk = [
		{
			speaker: speakers.woman,
			message_: "Did you know that goblins can drop herbs?"
		},
		{
			speaker: speakers.woman,
			message_: "I wonder why they never use them..."
		}
	]

	global.dialog.adalinaPedroTalk = [
		{
			speaker: speakers.woman,
			message_: "I almost caught a swordfish yesterday"
		},
		{
			speaker: speakers.man,
			message_: "Dude swordfish aren't real"
		},
		{
			speaker: speakers.woman,
			message_: "What? Yeah they are, I saw one. It had a big sword."
		},
	]

	global.dialog.eliciaTalk = [
		{
			speaker: speakers.woman,
			message_: "Quillbeach is named after how tranquil it is."
		},
		{
			speaker: speakers.woman,
			message_: "What a lovely town."
		}
	]
	#endregion

	#region Valiburgh Outside

		#region Barghest Alive

		global.dialog.valiburgeGateSoldier1Talk = [
			{
				speaker: speakers.soldier,
				message_: "AAAGH!"
			},
			{
				speaker: speakers.soldier,
				message_: "oh, sorry mate i though you were the barghest for a moment!"
			},
			{
				speaker: speakers.soldier,
				message_: "Welcome to Valiburgh, City of Bravery"
			},
			{
				speaker: speakers.soldier,
				message_: "dont go causing any trouble ya hear!"
			}
		]

		global.dialog.valiburgeGateSoldier2Talk = [
			{
				speaker: speakers.soldier,
				message_: "Welcome to Valiburgh, City of Bravery"
			},
			{
				speaker: speakers.soldier,
				message_: "If you need a place to rest, my nan owns the local inn, the weary wyvern"
			}
		]

		global.dialog.valiburgeSoldier1Talk = [
			{
				speaker: speakers.soldier,
				message_: "We got attacked by the monster named the barghest a few days ago"
			},
			{
				speaker: speakers.soldier,
				message_: "Chopped up a couple of our best guards, real scary beast it was"
			}
		]

		global.dialog.valiburgeSoldier2Talk = [
			{
				speaker: speakers.soldier,
				message_: "King Wymar has increased the number of patrols in case the barghest comes knocking again"
			},
			{
				speaker: speakers.soldier,
				message_: "If it shows up, we'll be ready"
			},
		]

		global.dialog.valiburgeSoldier3Talk = [
			{
				speaker: speakers.soldier,
				message_: "King Wymar is looking for a brave hero"
			},
			{
				speaker: speakers.soldier,
				message_: "i'm pretty brave but i'm no hero!"
			},
		]

		global.dialog.adamTalk = [
			{
				speaker: speakers.man,
				message_: "Have you heard about the Barghest?"
			},
			{
				speaker: speakers.man,
				message_: "I heard it lives in a cave east of here and likes to eat people"
			}
		]

		global.dialog.bernardTalk = [
			{
				speaker: speakers.man,
				message_: "I just picked up a shield from gav's armour shop"
			},
			{
				speaker: speakers.man,
				message_: "you can never be too prepared in case the barghest attacks!"
			}
		]

		global.dialog.conradTalk = [
			{
				speaker: speakers.man,
				message_: "I'm training to be a guard"
			},
			{
				speaker: speakers.man,
				message_: "It's tough work but i've heard that the pay is good"
			}
		]

		global.dialog.diggoryTalk = [
			{
				speaker: speakers.man,
				message_: "Have you fought a Scarecrow at all?"
			},
			{
				speaker: speakers.man,
				message_: "They're pretty frail but can dish out quite the number if you can't keep up"
			}
		]

		global.dialog.helenTalk = [
			{
				speaker: speakers.woman,
				message_: "Theres a real ruckus going on at the castle at the moment"
			},
			{
				speaker: speakers.woman,
				message_: "They've even got more guards patrolling the place, wonder what thats about"
			}
		]

		global.dialog.julianaTalk = [
			{
				speaker: speakers.woman,
				message_: "That mean old Barghest beastie is a right old piece of work"
			},
			{
				speaker: speakers.woman,
				message_: "it showed up one day and made mincemeat of a few of the guards before running off"
			},
			{
				speaker: speakers.woman,
				message_: "just thinking about the thing gets me all shivery"
			}
		]

		global.dialog.anneTalk = [
			{
				speaker: speakers.woman,
				message_: "do you know any magic?"
			},
			{
				speaker: speakers.woman,
				message_: "i heard that the gods gave magic to humans so we could defend ourselves better"
			}
		]

		#endregion

		#region Barghest Dead

		global.dialog.valiburgeGateSoldier1TalkBarghestDead = [
			{
				speaker: speakers.soldier,
				message_: "Welcome to Valiburgh, City of Bravery"
			},
			{
				speaker: speakers.soldier,
				message_: "Don't go causing any trouble ya hear!"
			}
		]

		global.dialog.valiburgeSoldier1TalkBarghestDead = [
			{
				speaker: speakers.soldier,
				message_: "Herbs are a mighty important thing to keep around, you know"
			},
			{
				speaker: speakers.soldier,
				message_: "Pick some up at the item shop if you don't already have some!"
			}
		]

		global.dialog.valiburgeSoldier2TalkBarghestDead = [
			{
				speaker: speakers.soldier,
				message_: "King Wymar is a great leader!"
			},
			{
				speaker: speakers.soldier,
				message_: "He treats us all very well"
			},
		]

		global.dialog.adamTalkBarghestDead = [
			{
				speaker: speakers.man,
				message_: "It seems our great city is saved! Thank you, brave hero!"
			},
		]

		global.dialog.bernardTalkBarghestDead = [
			{
				speaker: speakers.man,
				message_: "My mate gav is the best blacksmith around"
			},
			{
				speaker: speakers.man,
				message_: "he makes all the best armour!"
			}
		]

		global.dialog.helenTalkBarghestDead = [
			{
				speaker: speakers.woman,
				message_: "the castle's a bit quiet at the moment"
			},
			{
				speaker: speakers.woman,
				message_: "They've even lowered the patrols, wonder what that's about"
			}
		]

		global.dialog.julianaTalkBarghestDead = [
			{
				speaker: speakers.woman,
				message_: "The monsters up north from here are mighty scary!"
			},
			{
				speaker: speakers.woman,
				message_: "then again, the mighty wyvern keeps the people up there safe"
			}
		]

		#endregion

	#endregion

	#region Valiburgh Inside
	global.dialog.simonTalk = [
		{
			speaker: speakers.man,
			message_: "The drinks here are a little pricey but sure are worth it!"
		}
	]

	global.dialog.susannahTalk = [
		{
			speaker: speakers.woman,
			message_: "Have you ever fought a nightcap?"
		},
		{
			speaker: speakers.woman,
			message_: "They shake their spores about to put you to sleep then beat you up while you take a kip!"
		}
	]

	global.dialog.gilbertTalk = [
		{
			speaker: speakers.man,
			message_: "The land up north is pretty dangerous"
		},
		{
			speaker: speakers.man,
			message_: "Make sure that you're prepared when you travel all the way up there"
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
			message_: "Something about magical ash I think"
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
			speaker: speakers.man,
			message_: "I'm travelling to Torgale at the moment, it's quite far away but I'll make it"
		}
	]

	global.dialog.orielTalk = [
		{
			speaker: speakers.woman,
			message_: "It's a good idea to have a few herbs on you at all times"
		},
		{
			speaker: speakers.woman,
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
			message_: "Torgale is a town on a mountain up north. They worship the great wyvern there."
		},
		{
			speaker: speakers.hilbert,
			message_: "That's where me and my wife are from!"
		},
	]

	global.dialog.gavTalk = [
		{
			speaker: speakers.gav,
			message_: "You're gonna want some armour if that horrid beast comes back, lad"
		},
		{
			speaker: speakers.gav,
			message_: "thats why i'm here!"
		}
	]

	global.dialog.gozTalk = [
		{
			speaker: speakers.goz,
			message_: "You came here from Quillbeach? My brother has a shop there."
		},
		{
			speaker: speakers.goz,
			message_: "Tell him hi if you see him again will ya?"
		}
	]

	global.dialog.guzTalk = [
		{
			speaker: speakers.guz,
			message_: "The guards are always buying their provisions from here"
		},
		{
			speaker: speakers.guz,
			message_: "guess my stuff is better than whatever they get at the castle!"
		}
	]

	global.dialog.steffanTalk = [
		{
			speaker: speakers.man,
			message_: "Those Haniwa monsters are a real threat to travellers!"
		},
		{
			speaker: speakers.man,
			message_: "They're slow as rocks though so running away is a breeze!"
		}
	]

	global.dialog.mariaTalk = [
		{
			speaker: speakers.woman,
			message_: "There once was a legendary hero called Mercathew"
		},
		{
			speaker: speakers.woman,
			message_: "He saved our world from a mightly demon lord, what a great guy!"
		}
	]

	global.dialog.janeTalk = [
		{
			speaker: speakers.woman,
			message_: "Our king is really great"
		},
		{
			speaker: speakers.woman,
			message_: "I heard he got pretty injured when that blasted monster attacked, though!"
		}
	]

	global.dialog.soldierSleepTalk = [
		{
			speaker: speakers.soldier,
			message_: "zzz"
		}
	]

	global.dialog.thomanTalk = [
		{
			speaker: speakers.man,
			message_: "Have you ever been inside the castle?"
		},
		{
			speaker: speakers.man,
			message_: "I've always wanted to have a look inside but the guards won't let me"
		}
	]

	global.dialog.lesleyTalk = [
		{
			speaker: speakers.woman,
			message_: "Fire can be a powerful tool in combat!"
		},
		{
			speaker: speakers.woman,
			message_: "I heard Jorogumos and Perytons hate fire!"
		}
	]

	global.dialog.vinceTalk = [
		{
			speaker: speakers.man,
			message_: "There is a cave east of here through the mountain pass"
		},
		{
			speaker: speakers.man,
			message_: "It's full of scary monsters but there might also be treasure!"
		}
	]

	global.dialog.louisTalk = [
		{
			speaker: speakers.man,
			message_: "Remember to rest at an Inn when you feel weary"
		},
		{
			speaker: speakers.man,
			message_: "You'll wake up feeling completely refreshed"
		}
	]

	global.dialog.cirrusTalk = [
		{
			speaker: speakers.cirrus,
			message_: "Magic is a powerful tool, but remember not to overuse it"
		},
		{
			speaker: speakers.cirrus,
			message_: "You might feel your pool of magic running dry halfway though a dungeon"
		},
		{
			speaker: speakers.cirrus,
			message_: "You don't want that to happen, brave hero!"
		}
	]


	#endregion

	#region Valiburgh Castle
	
	global.dialog.castleGuard1 = [
		{
			speaker: speakers.soldier,
			message_: "The King is up these stairs"
		},
		{
			speaker: speakers.soldier,
			message_: "Show respect when talking to him!"
		}
	]
	
	global.dialog.castleGuard2 = [
		{
			speaker: speakers.soldier,
			message_: "King Wymar is up these stairs"
		},
		{
			speaker: speakers.soldier,
			message_: "He is a jolly fellow but don't think him foolish!"
		}
	]
	
	global.dialog.castleGuardArmoury = [
		{
			speaker: speakers.soldier,
			message_: "I've been tasked with polishing all the armour and weapons in the castle"
		},
		{
			speaker: speakers.soldier,
			message_: "I can polish yours if you want"
		},
		{
			speaker: speakers.none,
			message_: "Your armour gets polished!"
		}
	]
	
	global.dialog.castleGuardSleepingQuarters = [
		{
			speaker: speakers.soldier,
			message_: "This is where us guards sleep"
		},
		{
			speaker: speakers.soldier,
			message_: "The beds are pretty comfy but there's not much privacy"
		}
	]
	
	global.dialog.castleGuard3 = [
		{
			speaker: speakers.soldier,
			message_: "King Wymar tasked me with guarding this room in case any prisoners try escaping"
		},
		{
			speaker: speakers.soldier,
			message_: "Not like anyone's going to try escaping this mighty fortress!"
		}
	]
	
	global.dialog.castleGuard4 = [
		{
			speaker: speakers.soldier,
			message_: "A very strange courier delivered me a parcel earlier"
		},
		{
			speaker: speakers.soldier,
			message_: "He was wearing red robes and a large hat..."
		}
	]
	
	global.dialog.castleGuard5 = [
		{
			speaker: speakers.soldier,
			message_: "Some weapons are imbued with elemental effects"
		},
		{
			speaker: speakers.soldier,
			message_: "That means they are stronger agains certain monsters!"
		}
	]
	
	global.dialog.castleGuardDungeon = [
		{
			speaker: speakers.soldier,
			message_: "I'm the warden of Valiburgh Jail"
		},
		{
			speaker: speakers.soldier,
			message_: "No one is escaping!"
		}
	]
	
	global.dialog.castleGuardVault = [
		{
			speaker: speakers.soldier,
			message_: "This is the vault, it holds mighty treasures!"
		},
		{
			speaker: speakers.soldier,
			message_: "No funny business!"
		}
	]
	
	global.dialog.castleKingsGuard1 = [
		{
			speaker: speakers.soldier,
			message_: "Always show respect when talking to the king!"
		}
	]

	global.dialog.castleKingsGuard2 = [
		{
			speaker: speakers.soldier,
			message_: "You'll find no safer place than valiburgh"
		},
		{
			speaker: speakers.soldier,
			message_: "All thanks to our great king and his watchful knights!"
		}
	]
	
	global.dialog.castleKingsGuard3 = [
		{
			speaker: speakers.soldier,
			message_: "Valiburgh is known for it's hospitality"
		},
		{
			speaker: speakers.soldier,
			message_: "Troublemakers won't be tolerated, however"
		}
	]
	
	global.dialog.castleKingsGuard4 = [
		{
			speaker: speakers.soldier,
			message_: "They say skeletons roam the cavern east of here"
		},
		{
			speaker: speakers.soldier,
			message_: "If you managed to beat them you must be a mighty warrior!"
		}
	]
	
	global.dialog.castleKingsGuard5 = [
		{
			speaker: speakers.soldier,
			message_: "Hail, mighty hero! Your presence brings us many pleasures!"
		}
	]
	
	global.dialog.castleKingsGuard6 = [
		{
			speaker: speakers.soldier,
			message_: "You carry the scent of adventure, mighty hero!"
		},
		{
			speaker: speakers.soldier,
			message_: "Best of luck with future battles!"
		},
	]
	
	global.dialog.stratusTalk = [
		{
			speaker: speakers.stratus,
			message_: "Ho Ho Ho! hello brave hero!"
		},
		{
			speaker: speakers.stratus,
			message_: "Have you heard of a cho?"
		},
		{
			speaker: speakers.stratus,
			message_: "They are nimble little creatures rarely spotted about lucidia."
		},
		{
			speaker: speakers.stratus,
			message_: "They have a habit of draining you of your magic, but drop bountiful rewards when slain!"
		},
		{
			speaker: speakers.stratus,
			message_: "according to to this tome, there might be some in a small cave north of the torgale orachard."
		},
	]
	
	global.dialog.eliraTalk = [
		{
			speaker: speakers.none,
			message_: "The woman is serving up some sort of stew"
		},
		{
			speaker: speakers.elia,
			message_: "A dash of passion... a sprinkle of creativity... ta da! Culinary Perfection!"
		},
		{
			speaker: speakers.elia,
			message_: "This is my iconic horsebird stew! Here, have some."
		},
		{
			speaker: speakers.none,
			message_: "You gain some stew!"
		}
	]
	
	global.dialog.eliraTalkAgain = [
		{
			speaker: speakers.none,
			message_: "Elira is serving up some horsebird stew"
		},
		{
			speaker: speakers.elia,
			message_: "What do you think of my marvellous stew?"
		},
		{
			speaker: speakers.elia,
			message_: "Divine, is it not?"
		}
	]
	
	global.dialog.celrikTalk = [
		{
			speaker: speakers.none,
			message_: "The man is making a soup"
		},
		{
			speaker: speakers.chef,
			message_: "In the kitchen, mistakes are simply opportunities for unexpected recipes. Watch and learn!"
		},
		{
			speaker: speakers.chef,
			message_: "..."
		},
		{
			speaker: speakers.chef,
			message_: "Nevermind, this is awful, i guess i'll have to start again"
		},
	]
	
	global.dialog.queenTalk = [
		{
			speaker: speakers.queen,
			message_: "ah brave hero, you are truly a powerful warrior"
		},
		{
			speaker: speakers.queen,
			message_: "best of luck in wherever your travels take you!"
		}
	]
	
	#endregion
	
	#region Wheatville Outside
		global.dialog.scarecrowNoReply = [
		{
			speaker: speakers.none,
			message_: "No reply. It's just a scarecrow."
		}
		]
		
		global.dialog.wheatvilleMan1 = [
		{
			speaker: speakers.man,
			message_: "Make sure to stay out of the forests up north!"
		},
		{
			speaker: speakers.man,
			message_: "The trolls that live there are proper deadly!"
		}
		]
		
		global.dialog.wheatvilleMan2 = [
		{
			speaker: speakers.man,
			message_: "Torgale is north of here on mount tempest"
		},
		{
			speaker: speakers.man,
			message_: "The temple of air is at the top, and the air crystal is inside."
		}
		]
		
		global.dialog.wheatvilleMan3 = [
		{
			speaker: speakers.man,
			message_: "Trollings are baby Trolls"
		},
		{
			speaker: speakers.man,
			message_: "Trolls care a lot about their babies"
		}
		]
		
		global.dialog.wheatvilleWoman1 = [
		{
			speaker: speakers.woman,
			message_: "Have you ever found a water wand? They are weapons that cast water spells"
		},
		{
			speaker: speakers.woman,
			message_: "I hear they sometimes wash up on beaches"
		}
		]
		
		global.dialog.wheatvilleWoman2 = [
		{
			speaker: speakers.woman,
			message_: "Welcome to Wheatville. the bread baked here is delicious!"
		}
		]
	#endregion
	
	#region Wheatville Inside
	
	#endregion
	
	#region Overworld
	
	global.dialog.skeletonNoReply = [
	{
		speaker: speakers.none,
		message_: "No reply. It's just a corpse."
	}
	]
	
	#endregion

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
		message_: "Have you visited Valiburgh yet? It's just north of here along the path"
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

global.dialog.guardBarghestFirstTalk = [
	{
		speaker: speakers.soldier,
		message_: "Hm? Who's this then?"
	},
	{
		speaker: speakers.soldier,
		message_: "Ya want to get into the castle and talk to the king?"
	},
	{
		speaker: speakers.soldier,
		message_: "He's looking for a brave hero but was injured when the barghest showed up"
	},
	{
		speaker: speakers.soldier,
		message_: "if ya really are a brave hero, go do us a favour and deal with the barghest will ya?"
	},
	{
		speaker: speakers.soldier,
		message_: "ya do that, and we'll let ya into the castle, deal?"
	},
	{
		speaker: speakers.soldier,
		message_: "they say the barghests dwelling is just northwest from here, in the mountains"
	},
	{
		speaker: speakers.soldier,
		message_: "quick as ya please"
	},
]

global.dialog.guardBarghestTalkAgain = [
	{
		speaker: speakers.soldier,
		message_: "back already? if ya really are a brave hero then the barghest should be small potatoes for ya"
	},
	{
		speaker: speakers.soldier,
		message_: "just northwest of here, remember? he's in the mountains"
	},
	{
		speaker: speakers.soldier,
		message_: "quick as ya please"
	},
]

global.dialog.guardBarghestDefeated = [
	{
		speaker: speakers.soldier,
		message_: "ready to admit that yer not up to the challenge?"
	},
	{
		speaker: speakers.soldier,
		message_: "wait a mo... did you... really defeat the barghest?"
	},
	{
		speaker: speakers.soldier,
		message_: "well blimey indeed! you really saved valiburgh, mate! you must be a brave hero indeed"
	},
	{
		speaker: speakers.soldier,
		message_: "we'll let the king know of your arrival, thank you for your service"
	},
]

global.dialog.guardBarghestDefeatedTalkAgain = [
	{
		speaker: speakers.soldier,
		message_: "thank you for your service, brave hero!"
	},
]

global.dialog.barghestGrowl = [
	{
		speaker: speakers.barghest,
		message_: "GRRRRRRAWWWW!!!"
	},
]

global.dialog.kingFirstTalk = [
	{
		speaker: speakers.king,
		message_: "ah, you must be the brave hero who saved my kingdom from the barghest"
	},
	{
		speaker: speakers.king,
		message_: "many thanks, mighty adventurer! you have proven your might this day"
	},
	{
		speaker: speakers.king,
		message_: "with might like yours, surely you must be the one to restore balance to our world!"
	},
	{
		speaker: speakers.king,
		message_: "you see, there were four great crystals that kept the balance in our world"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the earth which we walk"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the water which we sail"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the air which we breath"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the fire which warms us"
	},
	{
		speaker: speakers.king,
		message_: "but one fateful day, the evil wizard helrath corrupted all the crystals to gain their power"
	},
	{
		speaker: speakers.king,
		message_: "you must restore the four great crystals and defeat helrath to save our world, brave hero!"
	},
	{
		speaker: speakers.king,
		message_: "the kingdom of torgale is north of here, it is a city on mount tempest."
	},
	{
		speaker: speakers.king,
		message_: "the crystal of air rests inside a temple there. I recommend you start there."
	},
	{
		speaker: speakers.king,
		message_: "good luck, mighty hero! The world is counting on you!"
	},
]

global.dialog.kingNoCrystalsChat = [
	{
		speaker: speakers.king,
		message_: "hello again brave hero, have you come seeking guidance?"
	},
	{
		speaker: speakers.king,
		message_: "remember, there were four great crystals that kept the balance in our world"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the earth which we walk"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the water which we sail"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the air which we breath"
	},
	{
		speaker: speakers.king,
		message_: "the crystal of the fire which warms us"
	},
	{
		speaker: speakers.king,
		message_: "but one fateful day, the evil wizard helrath corrupted all the crystals to gain their power"
	},
	{
		speaker: speakers.king,
		message_: "you must restore the four great crystals and defeat helrath to save our world, brave hero!"
	},
	{
		speaker: speakers.king,
		message_: "the kingdom of torgale is north of here, it is a city on mount tempest."
	},
	{
		speaker: speakers.king,
		message_: "the crystal of air rests inside a temple there. I recommend you start there."
	},
	{
		speaker: speakers.king,
		message_: "good luck, mighty hero! The world is counting on you!"
	},
]

#endregion

#region Side Quests

global.dialog.postinoAskHelp = [
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

global.dialog.postinoDelivered = [
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

global.dialog.emmaAskHelp = [
	{
		speaker: speakers.emma,
		message_: "This garden is lovely, but it could always be better... *sigh*"
	},
	{
		speaker: speakers.emma,
		message_: "If only i had some mage ash, that would make a great compost for these plants to grow better"
	},
	{
		speaker: speakers.emma,
		message_: "I heard some can be found on the east coast past the mountains"
	},
]

global.dialog.emmaDelivered = [
	{
		speaker: speakers.emma,
		message_: "Is that... some mage ash?"
	},
	{
		speaker: speakers.emma,
		message_: "here, i'll give you these herbs for the ash, great deal right?"
	},
	{
		speaker: speakers.none,
		message_: "You recived three Herbs!"
	},
	{
		speaker: speakers.emma,
		message_: "thank you so much, brave hero! now the garden will look even better!"
	},
]

global.dialog.emmaChat = [
	{
		speaker: speakers.emma,
		message_: "This garden will look great thanks to you! Thank you so much"
	},
]

global.dialog.postValiburghAskHelp = [
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

global.dialog.postValiburghDelivered = [
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

global.dialog.postValiburghChat = [
	{
		speaker: speakers.postino,
		message_: "You really saved my behind, adventurer"
	},
	{
		speaker: speakers.postino,
		message_: "I'll be going to Torgale to deliver this mail, I hope we meet again soon!"
	}
]

global.dialog.orchardistAskHelp = [
	{
		speaker: speakers.orchard,
		message_: "gah! im so angry right now! a sodding so and so went and nicked my prized tree!"
	},
	{
		speaker: speakers.orchard,
		message_: "I was growing some special healing apples on that tree..."
	},
	{
		speaker: speakers.orchard,
		message_: "I think that naughty sod ran off northwest of here!"
	},
]

global.dialog.orchardistDelivered = [
	{
		speaker: speakers.orchard,
		message_: "Oh my! Is that... my prized tree? Oh thank you brave hero!"
	},
	{
		speaker: speakers.orchard,
		message_: "I should be able to start selling my special apples now, thank you so much!"
	}
]

global.dialog.orchardistChat = [
	{
		speaker: speakers.orchard,
		message_: "My magic apples help cure ailments of all kinds."
	},
	{
		speaker: speakers.orchard,
		message_: "The only grow on my prized magic tree blessed by the Zaratan"
	},
	{
		speaker: speakers.orchard,
		message_: "He's the guardian of the earth tree!"
	},
]

global.dialog.axassinTalk = [
	{
		speaker: speakers.axassin,
		message_: "HAHA FOOL! YOU WANT MY MAGIC TREE? NEVER!"
	},
	{
		speaker: speakers.axassin,
		message_: "I SHALL CUT YOU DOWN WHERE YOU STAND!"
	},
	{
		speaker: speakers.axassin,
		message_: "TAKE THIS!"
	},
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

global.dialog.torgaleWarning = [
	{
		speaker: speakers.sign_,
		message_: "Warning! Do not venture north unless you are well equipped!"
	},
		{
		speaker: speakers.sign_,
		message_: "The monsters roaming the path to Torgale are dangerous!"
	}
]


global.dialog.wearyWyvernSign = [
	{
		speaker: speakers.sign_,
		message_: "The Weary Wyvern Inn"
	}
]

global.dialog.valiburghBarghestSign = [
	{
		speaker: speakers.sign_,
		message_: "A mysterious giant wolf has attacked our town"
	},
	{
		speaker: speakers.sign_,
		message_: "any brave heroes willing to fight it, come to the castle at once!"
	},
	{
		speaker: speakers.sign_,
		message_: "- King Wymar"
	},
]

global.dialog.valiburghBarghestDeadSign = [
	{
		speaker: speakers.sign_,
		message_: "A brave hero has saved our town!"
	},
	{
		speaker: speakers.sign_,
		message_: "said hero must come to the castle at once!"
	},
	{
		speaker: speakers.sign_,
		message_: "- King Wymar"
	},
]

global.dialog.valiburghGrave1Talk = [
	{
		speaker: speakers.grave,
		message_: "Here Lies Squaa"
	},
	{
		speaker: speakers.grave,
		message_: "The Bravest Bird"
	}
]

global.dialog.valiburghGrave2Talk = [
	{
		speaker: speakers.grave,
		message_: "Here Lies Jim"
	},
	{
		speaker: speakers.grave,
		message_: "The Hungriest Swordsman"
	}
]

global.dialog.valiburghGrave3Talk = [
	{
		speaker: speakers.grave,
		message_: "Here Lies Gergnome"
	},
	{
		speaker: speakers.grave,
		message_: "The Smartest Gnome"
	}
]

global.dialog.valiburghGrave4Talk = [
	{
		speaker: speakers.grave,
		message_: "Here Lies Deimos"
	},
	{
		speaker: speakers.grave,
		message_: "The Buffest Bard"
	}
]

global.dialog.valiburghGrave5Talk = [
	{
		speaker: speakers.grave,
		message_: "Here Lies Mercathew"
	},
	{
		speaker: speakers.grave,
		message_: "Hero of Lucidia"
	}
]

#endregion