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
      cor   ~(. +> [bowl ~])
  ++  on-init
    ^-  (quip card _this)
    ~>  %bout.[0 '%station +on-init']
    =^  cards  state  abet:init:cor
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
    =^  cards  state  abet:(load:cor vaz)
    [cards this]
  ::
  ++  on-poke
    |=  cag=cage
    ~>  %bout.[0 '%station +on-poke']
    ^-  (quip card _this)
    =^  cards  state  abet:(poke:cor cag)
    [cards this]
  ::
  ++  on-peek
    |=  pax=path
    ~>  %bout.[0 '%station +on-peek']
    ^-  (unit (unit cage))
    ::  (peek:cor pax)
    [~ ~]
  ::
  ++  on-agent
    |=  [pol=(pole knot) sig=sign:agent:gall]
    ~>  %bout.[0 '%station +on-agent']
    ^-  (quip card _this)
    ::  abet:(agent:cor pol sig)
    `this
  ::
  ++  on-arvo
    |=  [pol=(pole knot) sig=sign-arvo]
    ~>  %bout.[0 '%station +on-arvo']
    ^-  (quip card _this)
    ::  abet:(arvo:cor pol sig)
    `this
  ::
  ++  on-watch
    |=  pax=path
    ~>  %bout.[0 '%station +on-watch']
    ^-  (quip card _this)
    ::  abet:(watch:cor pax)
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
|_  [bol=bowl:gall dek=(list card)]
+*  cor  .
++  emit  |=(=card cor(dek [card dek]))
++  emil  |=(lac=(list card) cor(dek (welp lac dek)))
++  abet
  ^-  (quip card _state)
  [(flop dek) state]
::  +init: handle on-init
::
++  init
  ^+  cor
  cor
::  +load: handle on-load
::
++  load
  |=  vaz=vase
  ?>  ?=([%0 *] q.vaz)
  cor(state !<(state-0 vaz))
::  +poke: handle on-poke
::
++  poke
  |=  [mar=mark vaz=vase]
  ^+  cor
  cor
::
--