# Embattled TODO

## Current Read

Embattled already feels much closer to a complete arcade game than a prototype.
The core identity is strong:

- Hand-drawn intro title built with custom surface line drawing
- Docking / launch presentation at the start
- Mid-run repair / refit sequence
- Drone companion progression
- Prize / coin reward system tied to combat
- Tutorial, debug tooling, and structured wave progression

The biggest opportunity now is not inventing the game from scratch.
It is pushing the existing ideas further with polish, balance, content depth, and stronger feedback.

## Highest Priority

- Improve explosion quality with particles, layered flashes, debris, and hit feedback
- Rebalance player power versus enemy durability, density, and firing pressure
- Expand the hand-authored wave roster so the game has a true arcade-length run
- Add more enemy archetypes and more wave pattern types
- Add a stronger sound layer so combat, pickups, docking, and menu flow feel alive

## Visual Polish

- Add particle-enhanced enemy explosions
- Add particle-enhanced player-hit explosions
- Add drone destruction particles
- Add shield hit sparks and shield-break effects
- Add muzzle flashes for player, drones, enemies, and turret/cannon
- Add pickup sparkle / magnet / trail effects for coins and prizes
- Add stronger hit feedback when shots connect
- Add screen shake for large explosions and heavy impacts
- Add a brighter flash or shock ring for larger enemies
- Add a more dramatic plasma charge and release effect
- Add a better visual payoff for docking / repair light show

## Audio

- Add a proper shot sound for player fire
- Add distinct shot sounds for enemy fire
- Add explosion sounds for small enemies, large enemies, drones, and player damage
- Add pickup sounds for coins and power-ups
- Add docking / undocking / repair sounds
- Add a sound cue for wave start
- Add a sound cue for shield gain / shield break
- Add title / menu ambience or music
- Add gameplay music loop
- Add game over stinger

## Balance

- Review player base movement speed versus enemy bullet speed
- Review base player shot rate and early-game damage
- Review how quickly `my_shot_power` ramps up
- Review how powerful drones are relative to the main weapon
- Review whether shot-speed bonus is too strong or too weak
- Review armor recovery amount from prizes
- Review shield availability and frequency
- Review score-based reward pacing
- Review enemy HP values against current player DPS
- Review large enemy survivability versus the time they remain on screen
- Review how punishing collision damage is compared to projectile damage
- Review whether repair windows come too early, too late, or too predictably

## Reward / Coin System

- Clarify whether "coin" and "prize" should remain visually the same or split into clearer categories
- Improve pickup readability with glow / sparkle / trail effects
- Make prize drops feel more exciting when enemies die
- Review percent chances in `scr_spawn_prize`
- Add better visual distinction between armor / power / shot speed / shield rewards
- Consider adding rare rewards
- Consider adding combo or streak-based reward boosts
- Consider adding temporary score multiplier rewards
- Consider adding a magnet pickup or vacuum effect for near-misses
- Consider making special rewards more likely after high-pressure waves

## Intro / Opening

- Preserve the current hand-drawn title effect as a signature feature
- Clean up remaining legacy fragility around opening sequence state
- Consider adding subtle sound to each line-draw segment or letter reveal
- Consider adding a final flash / shimmer when "Embattled" is fully drawn
- Consider adding a short background animation or starfield emphasis behind the title
- Consider archiving the graph-paper source idea in project notes if you still have it

## Initial Spawn / Launch Sequence

- Tune the starting dock presentation so it feels intentional and smooth every run
- Add a launch sound or mechanical cue when the player becomes active
- Add a short thruster burst effect when thrust first turns on
- Add a visual cue telling the player when control begins
- Make sure the intro flow remains solid if tutorial/debug is toggled

## Repair / Refit Sequence

- Preserve repair docking as a signature pacing mechanic
- Improve docking feedback so the valid docking position is easier to understand
- Add stronger healing visuals during repair
- Add clearer reward messaging after repair completes
- Consider adding unique repair rewards at milestone waves
- Consider adding different repair bay variants later in the game
- Consider adding risk/reward decisions around repair timing if future design supports it

## Drone Companion System

- Keep the current companion unlock structure
- Polish drone motion so they feel more like rotating escorts and less like manual offsets
- Add a more visible drone firing effect
- Add clearer drone death / respawn or replacement feedback
- Review drone damage contribution in mid and late game
- Consider additional drone types with different fire patterns
- Consider a temporary third drone power-up for special waves or rare rewards

## Enemies

- Expand enemy roster beyond the current core ships
- Add more medium-weight enemy types between basic and large enemy
- Add enemies with stronger identity:
- Fast strafers
- Shield carriers
- Burst-fire enemies
- Mines or stationary hazards
- Kamikaze or charger enemies
- Turret ships
- Enemies that spawn escorts
- Add at least one mini-boss style encounter
- Add at least one true boss encounter if the game is meant to support long arcade sessions

## Waves

- Expand the hand-authored wave list significantly
- Push past the current handcrafted early/midgame into arcade-length content
- Build better tooling to design and test future waves quickly
- Add more wave archetypes:
- Symmetric formations
- Alternating top/bottom attack lanes
- Spiral or crossing patterns
- Heavy escort waves
- Reward waves
- Recovery waves
- Ambush waves
- Mixed enemy composition waves
- Create a "difficulty bands" plan so new waves scale cleanly
- Decide where hand-authored waves end and procedural remixing begins
- Consider a hybrid model:
- Hand-authored opener and milestone waves
- Procedural remixes between milestone waves
- Add milestone waves every few rounds with a clear spike in presentation

## Debug Builders

- Expand debug tooling into a path-design workflow
- Add a debug path sketch mode:
- Pick an initial Y entry point
- Place a sequence of dots
- Require each next dot to be left of the previous one
- Convert the resulting dot chain into a candidate enemy path
- Allow testing that path immediately with selected enemy types
- Add a way to save promising debug paths into a format ready for code integration
- Add a debug wave builder mode:
- Choose up to 3 spawn origins
- For each origin, choose ship type
- For each origin, choose count
- For each origin, choose delay between ships
- For each origin, choose an already-coded path type
- Spawn the whole authored mini-wave on demand
- Use those debug-built patterns as design references for codified future waves
- Keep the final shipped wave/path logic hand-curated even if the debug builder is used for prototyping

## Difficulty Curve

- Map out the game in phases:
- Opening onboarding
- Early mastery
- Midgame escalation
- Late-game survival
- Endless / arcade pressure
- Identify where the game currently becomes repetitive
- Identify where the player becomes overpowered
- Identify where enemy patterns stop introducing new ideas

## UI / Feedback

- Improve wave-start messaging
- Improve reward pickup messaging
- Improve clarity for armor, power, shield, and score changes
- Add better feedback when power is about to expire
- Add stronger game over summary
- Consider showing milestone wave numbers more dramatically

## Technical Cleanup

- Continue removing remaining old GM conversion issues and deprecated calls
- Reduce direct singleton access where missing instances can still cause runtime bugs
- Review all object-to-object direct property writes for safety
- Normalize comparison operators and remove remaining accidental assignment-in-condition patterns
- Review line ending strategy if Git noise becomes annoying
- Add a short developer note explaining key systems:
- Wave flow
- Repair system
- Drones
- Prize spawning
- Opening title surface

## Nice-to-Have Ideas

- Add background variation by later waves
- Add environmental hazards
- Add alternate player ship unlocks or debug-select ships as full features
- Add score attack / endless mode
- Add local high score tracking
- Add post-run summary screen with stats
- Add achievements or milestone badges

## Suggested Order Of Attack

1. Stabilize any remaining conversion/runtime issues
2. Add sound effects to core combat and rewards
3. Upgrade explosions and impact feedback with particles
4. Rebalance player DPS, prizes, and enemy survivability
5. Expand hand-authored wave content
6. Add new enemy archetypes to support new waves
7. Revisit repair/drone/reward cadence after the new content is in place
8. Add late-game / arcade-ready progression structure

## Notes To Preserve

- The hand-drawn title is worth preserving as-is in spirit, even if the implementation gets cleaned up
- The repair bay / docking mechanic is one of the game’s most distinctive ideas
- The coin / prize reward system is part of the game’s identity and should be enhanced, not replaced
- The drone companions are a strong escalation mechanic and worth building on
