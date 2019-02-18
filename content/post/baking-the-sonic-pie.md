---
title: "Baking the Sonic Pie"
date: 2019-02-18T21:21:42+03:00
draft: false
tags:
- code
- music
---

There is already [an article][1] which sings praises to [Ruby][2]. \
And so does the author of [Sonic Pi][3].

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/0lTZ8Tuyu5I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Amazingly, [the concept of programming is probably emerged along with the first musical machines][4]. These days, I see how code becomes the universal language which gets ideas across when nothing else can. And the music is the code of feelings. \
Except when you have ["amusia."][5]

Today I got curious to explore Sonic Pi and its [integration with DAW via MIDI][6] in particular. This research was inspired by [Propellerhead Sequencer][7], and the goal was to implement a free analog on Ruby. \
[The result was satisfying!][8]

<iframe width="560" height="315" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/577429878&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>

To render all these MIDI notes into the sound, I used [Propellerhead Reason][9]. It did help to create [per-channel controllers][10] and assign them to the instruments via "Surface locking."

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
