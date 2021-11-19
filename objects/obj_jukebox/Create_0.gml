/// @description Insert description here
// You can write your code in this editor

//Stops all the music
audio_stop_all();

//Reads room and plays appropriate track
if room = TitleRoom{
	audio_play_sound(snd_titleTheme, 10, true);
} else if room = VictoryRoom{
	audio_play_sound(snd_victoryTheme, 10, true);
} else if room = GameOverRoom{
	audio_play_sound(snd_gameOverTheme, 10, true);
}