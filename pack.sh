#!/bin/sh

mkdir -p output/Bootup_USen/Message
mkdir -p output/Bootup_EUen/Message
mkdir -p temp/DemoMsg
mkdir -p temp/ActorType
mkdir -p temp/LayoutMsg
mkdir -p temp/QuestMsg
mkdir -p temp/ShoutMsg
mkdir -p temp/StaticMsg
mkdir -p temp/Tips
mkdir -p temp/EventFlowMsg
cp ActorType/*.msbt temp/ActorType
cp DemoMsg/*.msbt temp/DemoMsg
cp LayoutMsg/*.msbt temp/LayoutMsg
cp QuestMsg/*.msbt temp/QuestMsg
cp ShoutMsg/*.msbt temp/ShoutMsg
cp StaticMsg/*.msbt temp/StaticMsg
cp Tips/*.msbt temp/Tips
cp EventFlowMsg/*.msbt temp/EventFlowMsg

sarc create temp Msg_USen.product.ssarc

cp Msg_USen.product.ssarc output/Bootup_EUen/Message/Msg_EUen.product.ssarc
mv Msg_USen.product.ssarc output/Bootup_USen/Message/

cd output || exit
sarc create Bootup_USen Bootup_USen.pack
sarc create Bootup_EUen Bootup_EUen.pack
rm -r ../temp/
rm -r Bootup_USen/
rm -r Bootup_EUen/
