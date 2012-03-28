"Smoking" by "Bart Massey"

Part - Making Fire

A fire source is a kind of thing. A fire source can be aflame. It is usually not aflame.

A fire source has a number called the lit turn duration. The lit turn duration is usually 3. A fire source has a number called the remaining turns lit.

A fire source has a text called the lit description. The lit description is usually "A bright, smoky flame issues from [the noun]."

After examining an aflame fire source: say the lit description of the noun.

Chapter - Lighting a Fire Source

Lighting is an action applying to one thing. Understand "light [fire source]" or "strike [fire source]" or "ignite [fire source]" as lighting.

Carry out an actor lighting a fire source: now the noun is aflame; now the remaining turns lit of the noun is one plus the lit turn duration of the noun.

After an actor lighting a fire source: say the lit description of the noun.

Chapter - Extinguishing a Fire Source

Extinguishing is an action applying to one thing. Understand "extinguish [fire source]" or "put out [fire source]" or "smother [fire source]" as extinguishing.

Check an actor extinguishing a not aflame fire source: instead say "[The noun] is not aflame."

Carry out an actor extinguishing a fire source: now the noun is not aflame.

After an actor extinguishing a fire source (this is the after extinguishing a fire source rule): say "[The noun] goes out."

Chapter - Burning

Every turn when a fire source is aflame:
	Repeat with fs running through aflame fire sources:
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

[Example 407 -  The Cow Exonerated in the Inform 7 Recipe Book contains an implementation similar to mine that I found after writing this. It points out that "matches" is problematic; I went with "wooden match" instead of their solution.]

A wooden match is a kind of fire source. The description is usually "A wooden stick with a phosphorus tip." The printed name of a wooden match is "match". A wooden match is privately-named. Understand "match" as a wooden match. 

A wooden match can be burnt out. It is usually not burnt out. A wooden match has a text called the burnt out description. The burnt out description is usually "This blackened wooden stick was once a lit match.".

Check an actor lighting a wooden match: If the noun is burnt out, instead say "[The noun] is burnt out and thus cannot be lit."

After an actor extinguishing a wooden match: if the burnt out description of the noun is not empty, now the description of the noun is the burnt out description of the noun; now the noun is burnt out; abide by the after extinguishing a fire source rule.

Part - Smoking

A smokable is a kind of thing.

Chapter - The Act Of Smoking

Smoking is an action applying to one thing. Understand "smoke [smokable]" as smoking.

Chapter - Common Smokables

A cigarette is a kind of smokable. The description is usually "This long paper cylinder contains tobacco."

A cigar is a kind of smokable. The description is usually "A long cylinder of fragrant tobacco."

Section - Pipes

A pipe is a kind of smokable. The description is usually "This is a generic-looking pipe; it has a stem and a bowl." 

A pipe bowl is a kind of container. It is open and not openable. A pipe bowl is part of every pipe. The description is usually "This is the part of the pipe where the tobacco goes."

A pipe stem is a kind of thing. A pipe stem is part of every pipe. The description is usually "This is the part of the pipe one sucks on when smoking."

Part - Example

The Smoking Room is a room.

The player carries a lighter and a wooden match. The player carries a cigarette, a cigar and a pipe.
