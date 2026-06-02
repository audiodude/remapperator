# Remapperator

A Max for Live MIDI effect that remaps incoming notes to a chromatic sequence in **order of first appearance**.

- The first distinct note you play maps to **C1**, the next to **C#1**, then **D1**, and so on up by semitone.
- Mappings are **sticky**: once a note is assigned, it always fires the same output.
- Chords map per-note, so an N-note chord becomes an N-semitone cluster.
- An **In/Out** readout shows the last incoming note and where it mapped.

## Controls

- **Reset** — clears all mappings; the next note starts again at C1.
- **Output velocity** — fixed velocity for all output notes (note-offs send velocity 0).

## Install

Drop `remapperator.amxd` onto a MIDI track in Ableton Live. It's frozen/self-contained — no other files needed.

## Development

Logic lives in the abstractions; the `.amxd` is a thin shell.

- `remapperator.maxpat` — mapping logic
- `note2name.maxpat` — MIDI number → note name (e.g. `79 → G4`, Ableton C3=60)
- `notename_demo.maxpat` — standalone demo of the note-name display
- `validate_maxpat.mjs` — structural check: `node validate_maxpat.mjs <file>.maxpat`

Keep the `.maxpat` files beside the `.amxd` while editing (same-folder resolution). To ship, **freeze** the device from Live's editor (Edit button → snowflake → Save), which embeds the abstractions. To edit a frozen device, unfreeze first.
