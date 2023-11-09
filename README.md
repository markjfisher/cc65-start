# cc-65 starter apps

Minimal cc65 code with build file to make and run in Altirra/applewin

These examples were mostly cobbled together to support a conversation in FujiNet discord,
but do use my amended version of the terribly unofficial makefile, adding multi-level
directories to src dir.

Some learnings:

- apple2 target with pure asm require .forceimport to work, atari is fine
