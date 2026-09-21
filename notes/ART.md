# Local HQ art (Z-Image)

High-end T2I on this box is **ComfyUI Z-Image-Turbo** (`comfy_zimage.py`), not SDXL-turbo `make_image.py`.

Style target: existing 16-bit side-view ships on black (see `spr_enemy_1`, `spr_player`).

| File | Seed | Notes |
|---|---|---|
| `art_gen/emb_kamikaze_00001_.png` | 3505344910486558604 | Good dart; facing left |
| `art_gen/emb_strafer_00001_.png` | 8148817933818195349 | Good shape; tiny star specks (defect) |
| `art_gen/emb_shield_carrier_00001_.png` | 3702401232010117557 | Shield bubble reads; facing left |

## Grok Imagine

Allowed. Style-locked `image_edit` from `spr_enemy_1`, plus pickup `image_gen`. Files in `art_gen/grok/`:

- ships: `kamikaze.png`, `strafer.png`, `shield_carrier.png`
- prizes: `prize_armor.png`, `prize_power.png`, `prize_speed.png`, `prize_shield.png`

Not in the `.yyp` yet (32px crop + color key still needed). Prefer this set for style match; keep Z-Image as backup.
