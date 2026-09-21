/// @description scr_sfx(kind) — placeholder pitches on sound0 until real assets land.
function scr_sfx() {
	var kind = argument[0];
	if (!audio_exists(sound0)) {
		return;
	}
	var snd = audio_play_sound(sound0, 1, false);
	var pitch = 1;
	var gain = 0.35;
	switch (kind) {
		case "shot_player": pitch = 1.35; gain = 0.22; break;
		case "shot_enemy": pitch = 0.85; gain = 0.18; break;
		case "explode_small": pitch = 0.7; gain = 0.4; break;
		case "explode_large": pitch = 0.45; gain = 0.55; break;
		case "pickup": pitch = 1.6; gain = 0.3; break;
		case "dock": pitch = 0.55; gain = 0.4; break;
		case "wave": pitch = 1.1; gain = 0.25; break;
		case "hurt": pitch = 0.5; gain = 0.4; break;
		case "shield": pitch = 1.8; gain = 0.28; break;
	}
	audio_sound_pitch(snd, pitch);
	audio_sound_gain(snd, gain, 0);
}
