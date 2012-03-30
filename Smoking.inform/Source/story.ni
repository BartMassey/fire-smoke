"Smoking" by "Bart Massey"

[ This is really two extensions glommed together for now. The first handles burning in general, the second handles smoking. ]

Book - Burnables

[ TODO: Make aflame burnables act as light sources by default. Report state changes only for visible things. Be able to smoke a hookah. Move from turns to time for durations. Fix pipe disambiguation bugs. Get rid of Bob smoking twice the first turn. ]

A burnable is a kind of thing. A burnable can be aflame. It is usually not aflame.

A burnable has a number called the aflame turn duration. The aflame turn duration is usually 3. A burnable has a number called the remaining turns aflame.

A burnable has a text called the aflame description. The aflame description is usually "[conditional paragraph break]A bright, smoky flame issues from [the noun]."

After an actor examining an aflame burnable: say the aflame description of the noun.

Part - Ignition Sources

An ignition source is a kind of burnable. Understand "strike [ignition source]" as burning.

To say lighting (the target burnable - a burnable):  say "[if the person asked is the player](lighting [the target burnable])[command clarification break][otherwise][The person asked] lights [the target burnable]. [run paragraph on][end if]".

Part - Burning a Burnable

Understand "burn [burnable]" or "light [burnable]" or "ignite [burnable]" as burning.

Check an actor burning an object when the noun is not a burnable: instead say "One does not burn [the noun]."

Check an actor burning a burnable when the noun is aflame: instead say "[The noun] is already lit."

Check an actor burning a burnable when the noun is not an ignition source and the actor does not carry an aflame ignition source: instead say "To burn [the noun] requires something with which to set it alight."

Carry out an actor burning a burnable: now the noun is aflame; now the remaining turns aflame of the noun is one plus the aflame turn duration of the noun.

After an actor burning a burnable: say the aflame description of the noun.

The block burning rule is not listed in the check burning rules.

Part - Extinguishing a Burnable

Extinguishing is an action applying to one thing. Understand "extinguish [burnable]" or "put out [burnable]" or "smother [burnable]" as extinguishing.

Check an actor extinguishing a not aflame burnable: instead say "[The noun] is not aflame."

Carry out an actor extinguishing a burnable: now the noun is not aflame.

Report an actor extinguishing a burnable (this is the report extinguishing a burnable rule): say "[The noun] goes out."

Part - Burning

Every turn when a burnable is aflame:
	Repeat with b running through aflame burnables:
		Decrease the remaining turns aflame of b by 1;
		If the remaining turns aflame of b is less than 0:
			Now the remaining turns aflame of b is 0;
		If the remaining turns aflame of b is 0:
			Try extinguishing b.

Part - Flame-Consumable, Burnt-out

A burnable can be flame-consumable. A burnable is usually not flame-consumable.

A burnable can be burnt out. A burnable is usually not burnt out. A burnable has a text called the burnt out description. The burnt out description is usually "[The noun] is burnt out."

Check an actor burning a burnable when the noun is burnt out: instead say "[The noun] is burnt out and thus cannot be lit."

After an actor extinguishing a flame-consumable burnable: if the burnt out description of the noun is not empty, now the description of the noun is the burnt out description of the noun; now the noun is burnt out.

Chapter - Implicit Ignition

Before an actor burning a burnable when the actor is carrying a not burnt out ignition source and the actor is not carrying an aflame ignition source and the noun is not an ignition source: let i be a random not burnt out ignition source carried by the actor; say lighting i; try the actor burning i.

Chapter - Common Ignition Sources

Section - Lighters

A lighter is a kind of ignition source. The description is usually "A generic cigarette lighter." The aflame turn duration of a lighter is usually 6.

A lighter can be full. It is usually full.

Check an actor burning a lighter: If the noun is not full, instead say "[The noun] appears to be empty."


Section - Safety Matches

[Example 407 -  The Cow Exonerated in the Inform 7 Recipe Book contains an implementation similar to mine that I found after writing this. It points out that "matches" is problematic; I went with "wooden match" instead of their solution.]

A wooden match is a kind of ignition source. A wooden match is privately-named and flame-consumable. The description is usually "A wooden stick with a phosphorus tip." The burnt out description is usually "This blackened wooden stick was once a lit match." The printed name of a wooden match is "match". Understand "match" as a wooden match.

Book - Smoking

A smokable is a kind of burnable. The aflame turn duration of a smokable is usually 10. The aflame description is usually "A curl of smoke issues from [the noun]."

A smokable has a text called the smoking description. The smoking description is usually "[The person asked] [if the person asked is the player]puff[otherwise]puffs[end if] gently on [the noun]."

Check an actor burning a carried smokable when the actor is carrying an aflame smokable: instead say "[The actor] already [if the actor is the player]have[otherwise]has[end if] a lit [random aflame smokable carried by the actor]."

Check an actor burning a carried smokable: if the actor is not carrying an aflame ignition source, instead say "[The actor] [if the actor is the player]need[otherwise]needs[end if] some way to light [the noun]."

Part - The Act Of Smoking

[ XXX Smoking a hookah too big to carry should be legal. Right now, it isn't. ]

Smoking is an action applying to one carried thing. Understand "smoke [smokable]" or "puff [smokable]" or "puff on [smokable]" as smoking. Understand "smoke" or "puff" as smoking.

Rule for supplying a missing noun while smoking: if the person asked is not carrying a smokable, instead say "Got a smoke?"; if the person asked is carrying an aflame smokable, now the noun is a random aflame smokable carried by the person asked; otherwise now the noun is a random smokable carried by the person asked.

Check an actor smoking a smokable: if the noun is not aflame, instead say "[The noun] must be lit before smoking it."

Carry out an actor smoking a smokable: say the smoking description of the noun.

Part - Implicitly Lighting Up Before Smoking

Before an actor smoking a smokable when the noun is not aflame  (this is the implicit lighting up before smoking rule): say lighting the noun; try the actor burning the noun. 

Part - Common Smokables

Chapter - Smoking Tubes

A smoking tube is a kind of smokable. It is flame-consumable. The burnt out description is usually "This is a nondescript [noun] butt."

A cigarette is a kind of smoking tube. The description is usually "This long paper cylinder contains tobacco." 

A cigar is a kind of smoking tube. The description is usually "A long cylinder of fragrant tobacco."

Chapter - Pipes

A pipe is a kind of smokable. The description is usually "This is a generic-looking pipe; it has a stem and a bowl." 

A pipe bowl is a kind of container. It is open and not openable. A pipe bowl is part of every pipe. The description is usually "This is the part of the pipe where the tobacco goes."

A pipe stem is a kind of thing. A pipe stem is part of every pipe. The description is usually "This is the part of the pipe one sucks on when smoking."

Book - Example

The Smoking Room is a room.

 The orange lighter is a lighter. The briar pipe is a pipe.

The player carries the orange lighter and a wooden match. The player carries a cigarette, a cigar and the briar pipe.

Part - Bob

The yellow lighter is a lighter. The clay pipe is a pipe.

Bob is a man in the smoking room. The description is "Looks like Bob is a smoker." Bob carries the clay pipe and the yellow lighter.

After an actor examining Bob: try Bob smoking the clay pipe.

Every turn when Bob is carrying an aflame smokable (called the target smokable): try Bob smoking the target smokable.

Part - Testing - Not for publication

Test me with "x Bob / smoke".
