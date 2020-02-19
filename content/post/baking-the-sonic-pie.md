---
title: "Baking the Sonic Pie"
date: 2019-02-18T21:21:42+03:00
summary: |
  Today I got curious to explore Sonic Pi and its integration with DAW via MIDI in particular.
tags:
- code
- music
---

There is already [an article][1] which sings praises to [Ruby][2]. \
And so does the author of [Sonic Pi][3].

{{<youtube 0lTZ8Tuyu5I>}}

Amazingly, [the concept of programming is probably emerged along with the first musical machines][4]. These days, I see how code becomes the universal language which gets ideas across when nothing else can. And the music is the code of feelings. \
Except when you have ["amusia."][5]

Today I got curious to explore Sonic Pi and its [integration with DAW via MIDI][6] in particular. This research was inspired by [Propellerhead Sequencer][7], and the goal was to implement a free analog on Ruby. \
[The result was satisfying!][8]

{{<soundcloud-track 577429878>}}

To render all these MIDI notes into the sound, I used [Propellerhead Reason][9]. It did help to create [per-channel controllers][10] and assign them to the instruments via "Surface locking."

-------------------

## With comfort ##

Sonic Pi looks nice, but its code editor is not yet as powerful as a professional IDE. So I started my [RubyMine][11], and after a few edit-save-reload cycles, it became apparent that a bit more integration is needed. With a few [helpful hints][12] from the Sonic Pi community, I implemented a [reload function][13] which is triggered automatically when the file is saved. Also, I checked out Sonic Pi source code and extracted [documentation][14] from it. The `yard.rb` file, when placed into the project dir, does enable the smarts, like the code autocompletion, analysis, and instant help.

{{<youtube DmvJsUnMjaI>}}

P.S. Sometimes writing code for fun is a nice break from writing code for a living!

[1]: https://medium.com/learn-love-code/why-teach-ruby-bac8416c77ba
[2]: https://www.ruby-lang.org/en/
[3]: https://sonic-pi.net/
[4]: https://www.ted.com/talks/steven_johnson_how_play_leads_to_great_inventions
[5]: https://www.oliversacks.com/books-by-oliver-sacks/musicophilia/
[6]: https://in-thread.sonic-pi.net/t/is-it-possible-to-control-via-sonic-pi-an-instrument-in-ableton/1878
[7]: https://www.propellerheads.com/shop/rack-extension/drum-sequencer/
[8]: https://github.com/AlexanderPavlenko/sonic-pi-works/blob/master/Sequencer.rb
[9]: https://www.propellerheads.com/en/reason
[10]: https://koshdukaimusicreason.blogspot.com/2015/09/generic-midi-channel-aware-remote.html
[11]: https://www.jetbrains.com/ruby/
[12]: https://in-thread.sonic-pi.net/t/buffer-autoreload-on-external-file-change-event/2075?u=alerticus
[13]: https://github.com/AlexanderPavlenko/sonic-pi-works/blob/master/autoreload.rb
[14]: https://github.com/AlexanderPavlenko/sonic-pi-works/tree/master/stubs
