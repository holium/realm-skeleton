/-  *station
/+  r-l=realm-lib
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
      eng   ~(. +> [bowl ~])
  ++  on-init
    ^-  (quip card _this)
    ~>  %bout.[0 '%station +on-init']
    =^  cards  state  abet:init:eng
    [cards this]
  ::
  ++  on-save
    ^-  vase
    ~>  %bout.[0 '%station +on-save']
    !>(state)
  ::
  ++  on-load
    |=  vaz=vase
    ~>  %bout.[0 '%station +on-load']
    ^-  (quip card _this)
    =^  cards  state  abet:(load:eng vaz)
    [cards this]
  ::
  ++  on-poke
    |=  cag=cage
    ~>  %bout.[0 '%station +on-poke']
    ^-  (quip card _this)
    =^  cards  state  abet:(poke:eng cag)
    [cards this]
  ::
  ++  on-peek
    |=  pax=path
    ~>  %bout.[0 '%station +on-peek']
    ^-  (unit (unit cage))
    ::  (scry:eng pax)
    [~ ~]
  ::
  ++  on-agent
    |=  [pol=(pole knot) sig=sign:agent:gall]
    ~>  %bout.[0 '%station +on-agent']
    ^-  (quip card _this)
    ::  abet:(dude:eng pol sig)
    `this
  ::
  ++  on-arvo
    |=  [pol=(pole knot) sig=sign-arvo]
    ~>  %bout.[0 '%station +on-arvo']
    ^-  (quip card _this)
    ::  abet:(arvo:eng pol sig)
    `this
  ::
  ++  on-watch
    |=  pax=path
    ~>  %bout.[0 '%station +on-watch']
    ^-  (quip card _this)
    ::  abet:(watch:eng pax)
    `this
  ::
  ++  on-fail
    ~>  %bout.[0 '%station +on-fail']
    on-fail:def
  ::
  ++  on-leave
    ~>  %bout.[0 '%station +on-init']
    on-leave:def
  ::
  --
::
|_  [bol=bowl:gall caz=(list card)]
+*  dat  .
++  emit  |=(c=card dat(caz [c caz]))
++  emil  |=(lc=(list card) dat(caz (welp lc caz)))
++  abet
  ^-  (quip card _state)
  [(flop caz) state]
::  +init: handle on-init
::
++  init
  ^+  dat
  dat
::  +load: handle on-load
::
++  load
  |=  vaz=vase
  ?>  ?=([%0 *] q.vaz)
  dat(state !<(state-0 vaz))
::  +poke: handle on-poke
::
++  poke
  |=  [mar=mark vaz=vase]
  ^+  dat
  dat
::
--