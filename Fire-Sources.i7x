Fire Sources by Bart Massey begins here.

A fire source is a kind of thing. A fire source can be alight. It is usually not alight.

A fire source has a number called the lit turn duration. The lit turn duration is usually 4. A fire source has a number called the remaining turns lit.

A fire source has a text called the lit description. The lit description is usually "A bright, smoky flame issues from the top of [the noun]."

After examining an alight fire source: say the lit description of the noun.

Chapter - Lighting a Fire Source

Lighting is an action applying to one thing. Understand "light [fire source]" as lighting. Understand "strike [fire source]" as lighting.

Carry out an actor lighting a fire source: now the noun is alight; now the remaining turns lit of the noun is the lit turn duration of the noun.

After an actor lighting a fire source: say the lit description of the noun.

Chapter - Extinguishing a Fire Source

Extinguishing is an action applying to one thing. Understand "extinguish [fire source]" as extinguishing. Understand "put out [fire source]" as extinguishing.

Check an actor extinguishing a not alight fire source: instead say "[The noun] is already extinguished."

Carry out an actor extinguishing a fire source: now the noun is not alight.

After an actor extinguishing a fire source (this is the after extinguishing a fire source rule): say "[The noun] goes out."

Chapter - Burning

Every turn when a fire source is alight:
	Repeat with fs running through alight fire sources:
		Decrease the remaining turns lit of fs by 1;
		If the remaining turns lit of fs is less than 0:
			Now the remaining turns lit of fs is 0;
		If the remaining turns lit of fs is 0:
			Try extinguishing fs.

Chapter - Common Fire Sources

Section - Lighters

A lighter is a kind of fire source. The description is usually "A generic butane-fueled cigarette lighter." A lighter can be full. It is usually full.

Check an actor lighting a lighter: If the noun is not full, instead say "[The noun] appears to be empty."

Section - Safety Matches

[Example 407 -  The Cow Exonerated in the Inform 7 Recipe Book contains an implementation similar to mine that I found after writing this. It points out that "matches" is problematic; I went with "safety match" instead of their solution.]

A safety match is a kind of fire source. The description is usually "A wooden stick with a phosphorus tip." 

A safety match can be burnt out. It is usually not burnt out. A safety match has a text called the burnt out description. The burnt out description is usually "This blackened wooden stick was once a lit match.".

Check an actor lighting a safety match: If the noun is burnt out, instead say "[The noun] is burnt out and thus cannot be lit."

After an actor extinguishing a safety match: if the burnt out description of the noun is not empty, now the description of the noun is the burnt out description of the noun; now the noun is burnt out; abide by the after extinguishing a fire source rule.

Fire Sources ends here.
