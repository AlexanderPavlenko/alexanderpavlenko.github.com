---
title: "Slicing the Beat"
date: 2019-07-04T04:20:00+03:00
summary: |
  In this post I will continue the exploration of Sonic Pi. So far, I wrote the sequencer, and then found myself reading about the polyrhythms.
tags:
- code
- music
---

In this post I will [continue the exploration of Sonic Pi][previous].\
So far, I wrote the sequencer, and then found myself reading about the polyrhythms:

> From the philosophical perspective of the African musician, cross-beats can symbolize the challenging moments or emotional stress we all encounter. Playing cross-beats while fully grounded in the main beats, prepares one for maintaining a life-purpose while dealing with life's challenges. Many non-Saharan languages do not have a word for rhythm, or even music. From the African viewpoint, the rhythms represent the very fabric of life itself; they are an embodiment of the people, symbolizing interdependence in human relationships.
> [[Peñalosa (2009: 21)][]]

Sounds like fun. Sure, there are lots of plugins on sale for generating such rhythms. But I remembered: it's a simple algorithm, which is probably open-sourced. 

> The Euclidean algorithm (which comes down to us from Euclid’s Elements) computes the greatest common divisor of two given integers. It is shown here that the structure of the Euclidean algorithm may be used to generate, very efficiently, a large family of rhythms used as timelines (ostinatos), in sub-Saharan African music in particular, and world music in general. [[Godfried Toussaint][]]

So, this algorithm does look like a perfect addition to my sequencer. [Here is an example][code].

{{<soundcloud-track 647460816>}}

In this example the Sonic Pi is only used for MIDI generation.\
The sounds come from an amazing new synth – [Massive X][].\

{{<youtube zKCyQSA-FpM>}}

I got inspired by this stylish promo, indeed :)

[previous]: /blog/post/baking-the-sonic-pie/
[Peñalosa (2009: 21)]: https://en.wikipedia.org/wiki/Polyrhythm#cite_note-11
[Godfried Toussaint]: http://cgm.cs.mcgill.ca/~godfried/publications/banff.pdf
[code]: https://github.com/AlexanderPavlenko/sonic-pi-works/blob/master/05_Eury.rb
[Massive X]: https://www.native-instruments.com/en/products/komplete/synths/massive-x/