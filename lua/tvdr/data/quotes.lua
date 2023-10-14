math.randomseed(os.time())

local quotesTable = {
		"🌅 ~ Always look at the bright side of life ~ 🌅!",
		"Et ça fait : 'Eh, allez les bleus. On va gagner le foot ⚽, à l'aide des pieds 🦶.'",
		"🧐 Si ça ne marche pas, le problème se trouve entre le clavier et la chaise 🧐",
		"🪗 Voilà, voilà, voilà, voilà, voilà qui je suis. 🎵"
}

local function getRandomQuote()

	local randomIndex = math.random(1, #quotesTable)
	return quotesTable[randomIndex]

end

return {
	getRandomQuote = getRandomQuote
}


