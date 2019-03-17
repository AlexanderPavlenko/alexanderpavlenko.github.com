---
title: "Climbing the Tree"
date: 2019-03-17T05:12:00+03:00
tags:
- visualize
- needs
- values
---

Some time ago I discovered [Manfred Max-Neef's Fundamental human needs][] taxonomy:

> Unlike Maslow's Hierarchy of Needs, which focuses on a hierarchy of psychological needs, Max-Neef talks about needs that are complementary, all of which are necessary to achieve satisfaction.
<a href="https://commons.wikimedia.org/wiki/File:MaslowsHierarchyOfNeeds.svg#/media/File:MaslowsHierarchyOfNeeds.svg"><img src="https://upload.wikimedia.org/wikipedia/commons/3/33/MaslowsHierarchyOfNeeds.svg" alt="MaslowsHierarchyOfNeeds.svg" height="145" width="205"></a>

Indeed, the Maslow's hierarchy seems to me kind of opinionated and arbitrary.\
If only The Game was as simple as reaching the imaginary top of the infinite ladder.\
If only there were no such stories when self-actualization comes with the loss of some or all goodies listed below it, including one's life.

Perhaps there are enough pyramids in the world already, and this one has to go.

## Trunk ##

According to [Marshall Rosenberg][], my needs may be exactly the same as of any other human. But my values are probably different. These are not entirely independent concepts: if the needs are variables, then values are, well, their values. The more deficiently a need is met, the more valuable it may be to tend it. And as any quest it may involve multiple steps, thus the [means and ends].

## Branches ##

<div class="mermaid">
%% If you read this text, it means MermaidJS does not work in this browser as expected :(

graph LR

%% Means
Explore(Explore)
Knowledge(Knowledge)
Wealth(Wealth)
Change(Change)
Health(Health)

%% Ends
Play((Play))
Dream((Dream))
Grow((Grow))

%% Causality
Explore --> Knowledge
Knowledge --> Health
Knowledge --> Wealth
Knowledge --> Change
Wealth --> Health
Change --> Health
Health --> Play
Health --> Dream
Health --> Grow

%% Links
click Explore "#explore"
click Knowledge "#knowledge"
click Wealth "#wealth"
click Change "#change"
click Health "#health"

click Play "#play"
click Dream "#dream"
click Grow "#grow"
</div>

### Means ###

#### Explore ####

- Like a [multi-armed bandit]

#### Knowledge ####

- What do I think I know, and how do I think I know it?
- [Correlation does not imply causation][]
- [Probably][]

#### Wealth ####

- Money is not pieces of paper, it is the [common currency of caring][]. Hence the old saying: "Money makes the world go 'round, love barely keeps it from blowing up."

#### Change ####

- The only constant?

#### Health ####

- The most terminal value?

### "Ends" ###

#### Play ####

- With Alan Watts' speculation: “Existence, the physical universe, is basically playful. There is no necessity for it whatsoever. It isn’t going anywhere. It doesn’t have a destination that it ought to arrive at. But it is best understood by analogy with music, because music, as an art form, is essentially playful. We say you play the piano, you don’t work the piano."

#### Dream ####

- While in a [lucid dream][] and while making it more real.

#### Grow ####

- Spiral out 🌀 Keep going



[Manfred Max-Neef's Fundamental human needs]: https://en.wikipedia.org/wiki/Manfred_Max-Neef%27s_Fundamental_human_needs
[Marshall Rosenberg]: https://en.wikipedia.org/wiki/Nonviolent_Communication
[means and ends]: https://www.lesswrong.com/posts/n5ucT5ZbPdhfGNLtP/terminal-values-and-instrumental-values
[multi-armed bandit]: https://en.wikipedia.org/wiki/Multi-armed_bandit
[Correlation does not imply causation]: https://en.wikipedia.org/wiki/Correlation_does_not_imply_causation
[Probably]: https://en.wikipedia.org/wiki/Bayesian_inference
[common currency of caring]: https://www.lesswrong.com/posts/ZpDnRCeef2CLEFeKM/money-the-unit-of-caring
[lucid dream]: https://en.wikipedia.org/wiki/Lucid_dream



<script src="https://unpkg.com/mermaid@8.0.0/dist/mermaid.min.js" type="text/javascript"></script>
<script type="text/javascript">
mermaid.initialize({ 
  theme: 'dark',
  themeCSS: '\
    .cluster rect { fill: transparent !important; } \
    .edgePath .path { stroke: white !important; } \
    .label { font-family: "iA Writer QuattroS" !important; }',
  cloneCssStyles: false,
  useMaxWidth: true,
  htmlLabels: false,
  flowchart: { 
    curve: 'basis' 
  }
});
</script>