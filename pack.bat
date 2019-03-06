rem I'm lazy to do this auto

mkdir !output\Bootup_USen\Message
mkdir !output\Bootup_EUen\Message
mkdir temp\DemoMsg
mkdir temp\ActorType
mkdir temp\LayoutMsg
mkdir temp\QuestMsg
mkdir temp\ShoutMsg
mkdir temp\StaticMsg
mkdir temp\Tips
mkdir temp\EventFlowMsg
copy ActorType\*.msbt temp\ActorType
copy DemoMsg\*.msbt temp\DemoMsg
copy LayoutMsg\*.msbt temp\LayoutMsg
copy QuestMsg\*.msbt temp\QuestMsg
copy ShoutMsg\*.msbt temp\ShoutMsg
copy StaticMsg\*.msbt temp\StaticMsg
copy Tips\*.msbt temp\Tips
copy EventFlowMsg\*.msbt temp\EventFlowMsg

sarc create temp Msg_USen.product.ssarc

copy Msg_USen.product.ssarc !output\Bootup_EUen\Message\Msg_EUen.product.ssarc
move Msg_USen.product.ssarc !output\Bootup_USen\Message\

cd !output\
sarc create Bootup_USen Bootup_USen.pack
sarc create Bootup_EUen Bootup_EUen.pack
rmdir ..\temp\ /S /Q
rmdir Bootup_USen\ /S /Q
rmdir Bootup_EUen\ /S /Q
explorer ..\!output
