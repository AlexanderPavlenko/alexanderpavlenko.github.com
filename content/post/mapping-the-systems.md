---
title: "Mapping the Systems"
date: 2019-03-17T05:12:00+03:00
tags:
- visualize
- toys
---

I think it's cool to be able to create various diagrams just by declaring them in plain text. The first tool which I was using is [PlantUML][]. Then I discovered [MermaidJS][], which is nicely supported by [Typora][]. It's even possible to render diagrams in the supported browsers. This allows the interactive elements and nice stylings. The graph below is an attempt to visualize the data flow and feedback loops for some of my gadgets.

[PlantUML]: http://plantuml.com/
[MermaidJS]: https://mermaidjs.github.io/
[Typora]: https://typora.io/

{{< diagram >}}
graph LR
subgraph Digital Organs

subgraph Long-Term Memory
Player[Cowon Plenue D]
click Player "http://www.cowonglobal.com/product_wide/PLENUED/product_page_1.php"
Camera[Lumix DMC TZ-80]
click Camera "https://www.panasonic.com/au/consumer/lumix-cameras-video-cameras/lumix-digital-cameras/dmc-tz80.html"
Recorder[Zoom H2n]
click Recorder "https://www.zoom.co.jp/products/handy-recorder/h2n-handy-recorder"
Reader[Kobo Aura One]
click Reader "https://us.kobobooks.com/collections/ereaders/products/kobo-aura-one-limited-edition"
end

subgraph Speakers
Speaker[Logitech G560]
click Speaker "https://www.logitechg.com/en-us/products/gaming-audio/g560-rgb-gaming-speakers.html"
Speaker2[JBL Playlist 150]
click Speaker2 "https://www.jbl.com/home-speakers-2/JBL+PLAYLIST+150.html"
end

subgraph Screens
Projector[Optoma GT1080e]
click Projector "https://www.optoma.co.uk/product-details/GT1080e"
Monitor[LG 27UD88-W]
click Monitor "https://www.lg.com/us/monitors/lg-27UD88-W-4k-uhd-led-monitor"
end

Flashlight[Fenix BC30]
click Flashlight "https://www.fenix-store.com/fenix-bc30-led-bike-light/"
end

subgraph Input
I-Audial[Audial]
I-Audiovisual[Audiovisual]
end

subgraph Output
Audial
Audiovisual
subgraph Visual
Text
White
end
end

%% Channels

Monitor --> Audiovisual

Speaker ==> Audial
Speaker2 --> Audial

Projector --> Audiovisual

I-Audiovisual ==> Camera
Camera --> Audiovisual

I-Audial ==> Recorder
Recorder --> Audial

Player --> Audial

Reader ==> Text

Flashlight --> White
{{< /diagram >}}

{{< mermaidjs >}}