# Embattled HANDOFF

**Working tree:** `/home/johnnwfs/GameMakerProjects/Embattled`  
**Compile:** `Embattled.yyp` (not Embatted.yyp)  
**Igor cache:** `/home/johnnwfs/GameMakerProjects/_igor/Embattled/`

## Status 2026-09-18 (nextday)

- Imported Grok ships as 32px GM sprites + objects: kamikaze / strafer / shield_carrier.
- Types 7–9 in `scr_enemy_type`; waves **13–16** authored; endless `choose_enemy_type` includes new ships.
- Kamikaze chases player (`kamikaze` flag). Collision uses `max(hp, my_power)`.
- Prize Grok sprites registered but **not** swapped onto prize objects yet (need a look at 16px readability).
- Igor compiled and entered main loop after this import.
- Waves 17–21 added after that compile (recovery, strafer pair, kamikaze swarm, large+strafers, mini-boss scale-up). Recompile once to pick those up.

## Status 2026-09-17

- P0: first Igor `linux Run` **compiled and entered main loop** (640x320 window).
- P1 started: shared FX (`scr_fx_init` / `scr_fx_burst`), placeholder SFX (`scr_sfx` on `sound0` pitches), explosion/hit/muzzle/pickup/dock hooks, some `instance_exists` guards.
- Local HQ art: ComfyUI **Z-Image-Turbo** via `/home/johnnwfs/webportal/comfy_zimage.py` (port 8188). First batch in `art_gen/`.

## Next (in order)

1. Play-feel waves 13–16; tweak type 7–9 numbers in BALANCE.md.
2. Optionally swap prize objects to `spr_prize_*_new` after a visual check.
3. P3 waves 17–28 + mini-boss (fat large ship).
4. P4 dock/drone/UI polish.

## Art pipeline

```bash
# ComfyUI if down:
~/ComfyUI/venv/bin/python ~/ComfyUI/main.py --listen 127.0.0.1 --port 8188
PYTHONPATH=~/webportal python3 -c "import comfy_zimage; comfy_zimage.generate(PROMPT, DEST, width=512, height=512, prefix='emb_')"
```

Strafer candidate has tiny star specks — re-gen or crop. Kamikaze + shield carrier look usable.

## Do not

- Share Igor cache with AdventureAgentStorm.
- Kill Comfy if PrintLab/portal is using it; our instance may still be on 8188.
