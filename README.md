# dosbox-staging-confs
Individual and curated conf files for Dosbox Staging, to run classic MS-DOS games in the best possible way on modern systems.

**Usage from the terminal (example):**

`dosbox --conf terminator-future-shock.conf`

Config files are compatible with the latest stable releases of [DosBox Staging](https://www.dosbox-staging.org).

> [!WARNING]
> Be aware that using Release Candidates of DosBox Staging can lead to ignored settings in the curated .conf files.

# Installing FluidSynth and SoundFonts

`fluidsynth` is the MIDI synthesizer. A SoundFont is also required to play MIDI files. The examples below install the free **FluidR3 GM** General MIDI SoundFont for popular GNU/Linux based distributions.
Please search your distributions repository contents for `fluid*` in case the examples below don't work on your installation. You need "FluidSynth" as software component and a corresponding soundfont to make it work.  

> [!TIP]
> You can use FluidSynth to emulate General MIDI/MPU-401 music in many DOS games. Not all games will work with this approach, but a lot will. Installing FluidSynth on your system is the basis for the DosBox Staging config files found in this repo. You can always fall back to FM Synth/Soundblaster/Adlib music if you want the original experience from the earlier days. Using FluidSynth brings you very good MIDI music quality to your beloved games and can improve your replay of these old classics.

![Human Machine Interfaces Sound Setup found in many DOS games in the 1990s.](/images/hmi_sound_setup.png)
_Human Machine Interfaces Sound Setup found in many DOS games in the 1990s._

## Arch Linux, CachyOS, and other Arch-based distributions

```bash
sudo pacman -Syu fluidsynth soundfont-fluid
```

The SoundFont is usually located here:

```text
/usr/share/soundfonts/FluidR3_GM.sf2
```

Optionally, create a default SoundFont symlink:

```bash
sudo ln -sf /usr/share/soundfonts/FluidR3_GM.sf2 /usr/share/soundfonts/default.sf2
```

## Debian, Ubuntu, Linux Mint, and Zorin OS

```bash
sudo apt update
sudo apt install fluidsynth fluid-soundfont-gm
```

Optionally, install the GS-compatible SoundFont as well:

```bash
sudo apt install fluid-soundfont-gs
```

The GM SoundFont is usually located here:

```text
/usr/share/sounds/sf2/FluidR3_GM.sf2
```

Optional default symlink:

```bash
sudo ln -sf /usr/share/sounds/sf2/FluidR3_GM.sf2 /usr/share/sounds/sf2/default-GM.sf2
```

## Fedora

```bash
sudo dnf install fluidsynth fluid-soundfont-gm
```

Optionally, install the GS SoundFont as well:

```bash
sudo dnf install fluid-soundfont-gs
```

## Bazzite

Bazzite uses an immutable Fedora Atomic base. Install packages with `rpm-ostree`; a system reboot is required afterwards.

```bash
rpm-ostree install fluidsynth fluid-soundfont-gm
systemctl reboot
```

Optional installation with the GS SoundFont:

```bash
rpm-ostree install fluidsynth fluid-soundfont-gm fluid-soundfont-gs
systemctl reboot
```

## Testing your FluidSynth installation

FluidSynth can be started directly with a SoundFont and a MIDI file:

```bash
fluidsynth /path/to/FluidR3_GM.sf2 your-file.mid
```

Example for Arch Linux or CachyOS:

```bash
fluidsynth -a pipewire -m alsa_seq /usr/share/soundfonts/FluidR3_GM.sf2 test.mid
```

You can find many popular game soundtracks in MIDI format for testing at [VGMusic.com](https://www.vgmusic.com).

## Alternative soundfont for MS-DOS games

A very good alternative to the FluidSynth soundfonts is ["GeneralUser GS" from composer S. Christian Collins](https://schristiancollins.com/generaluser.php). Download the soundfont (ca. 30 MB) from his website and place in the folder with your other soundfonts, i.e. `/usr/share/soundfonts/`.

>GeneralUser GS is a Roland GS and General MIDI (GM) compatible SoundFont bank for composing, playing MIDI files, and retro gaming. It features 261 instrument presets and 13 drum kits, all while possessing a very low memory footprint (30.7 MB of RAM). GeneralUser GS features detailed instrument programming, making heavy use of SoundFont synthesis and modulator features.
