/-  *station
/+  verb, dbug, defa=default-agent
::
|%
::
+$  versioned-state  $%(state-0)
::
+$  state-0  [%0 ~]
::
+$  card  card:agent:gall
--
::
%+  verb  &
%-  agent:dbug
=|  state-0
=*  state  -
::
^-  agent:gall
::
=<
  |_  =bowl:gall
  +*  this  .
      def   ~(. (defa this %|) bowl)
      core   ~(. +> [bowl ~])
  ++  on-init
    ^-  (quip card _this)
    ~>  %bout.[0 '%station +on-init']
    =^  cards  state  abet:init:core
    [cards this]
  ::
  ++  on-save
    ^-  vase
    ~>  %bout.[0 '%station +on-save']
    !>(state)
  ::
  ++  on-load
    |=  =vase
    ~>  %bout.[0 '%station +on-load']
    ^-  (quip card _this)
    =^  cards  state  abet:(load:core vase)
    [cards this]
  ::
  ++  on-poke
    |=  =cage
    ~>  %bout.[0 '%station +on-poke']
    ^-  (quip card _this)
    =^  cards  state  abet:(poke:core cage)
    [cards this]
  ::
  ++  on-peek
    |=  =path
    ~>  %bout.[0 '%station +on-peek']
    ^-  (unit (unit cage))
    :: =^  cards  state  (peek:core path)
    :: [cards this]
    [~ ~]
  ::
  ++  on-agent
    |=  [pole=(pole knot) =sign:agent:gall]
    ~>  %bout.[0 '%station +on-agent']
    ^-  (quip card _this)
    :: =^  cards  state  abet:(agent:core pole sign)
    :: [cards this]
    `this
  ::
  ++  on-arvo
    |=  [pole=(pole knot) sign=sign-arvo]
    ~>  %bout.[0 '%station +on-arvo']
    ^-  (quip card _this)
    :: =^  cards  state  abet:(arvo:core pole sign)
    :: [cards this]
    `this
  ::
  ++  on-watch
    |=  pole=(pole knot)
    ~>  %bout.[0 '%station +on-watch']
    ^-  (quip card _this)
    :: =^  cards  state  abet:(watch:core pole)
    :: [cards this]
    `this
  ::
  ++  on-fail
    ~>  %bout.[0 '%station +on-fail']
    on-fail:def
  ::
  ++  on-leave
    ~>  %bout.[0 '%station +on-leave']
    on-leave:def
  ::
  --
::
|_  [=bowl:gall cards=(list card)]
+*  core  .
++  abet  [(flop cards) state]
++  emit  |=(=card core(cards [card cards]))
++  emil  |=(new-cards=(list card) core(cards (welp new-cards cards)))
::  +init: handle on-init
::
++  init
  ^+  core
  core
::  +load: handle on-load
::
++  load
  |=  =vase
  ^+  core
  ?>  ?=([%0 *] q.vase)
  core(state !<(state-0 vase))
::  +poke: handle on-poke
::
++  poke
  |=  [=mark =vase]
  ^+  core
  core
::
--