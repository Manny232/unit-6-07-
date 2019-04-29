display.setDefault( "background", 50, 50, 0  )


local calculateButton = display.newImageRect( "calculateButton.png", 200, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

print( "Try and guess my age " )


local asntextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )
asntextfield.id = "asn textField"

local answertextfield = display.newText( "guess my age", 160, 150, native.systemFont, 20 )
answertextfield:setFillColor( 0,30, 50 )

local function calculateButtonTouch( event )

ageToGuess = 14
asn = tonumber(asntextfield.text)

if asn < ageToGuess then
  answertextfield.text = "I am older"	


elseif asn > ageToGuess then 

answertextfield.text = " I am younger"


else 
	answertextfield.text = "you guessed my age"

end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )
