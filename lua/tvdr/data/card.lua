math.randomseed(os.time())

local cardSigns = {
	"♠️",
	"♦️",
	"♣️",
	"❥"
}

local cardValues = {
	"As",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
	"10",
	"Valet",
	"Dame",
	"Roi"
}


local function getCardSign()
	local randomIndex = math.random(1, #cardSigns)
	return cardSigns[randomIndex]
end

local function getCardValue()
	local randomIndex = math.random(1, #cardValues)
	return cardValues[randomIndex]
end

return {
	getCardSign = getCardSign,
	getCardValue = getCardValue
}
