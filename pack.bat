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
copy ActorType temp\ActorType
copy DemoMsg temp\DemoMsg
copy Layout temp\LayoutMsg
copy QuestMsg temp\QuestMsg
copy ShoutMsg temp\ShoutMsg
copy StaticMsg temp\StaticMsg
copy Tips temp\Tips

sarctool create temp Msg_USen.product.ssarc

copy Msg_USen.product.ssarc !output\Bootup_EUen\Message\Msg_EUen.product.ssarc
move Msg_USen.product.ssarc !output\Bootup_USen\Message\

cd !output\
sarctool create Bootup_USen Bootup_USen.pack
sarctool create Bootup_EUen Bootup_EUen.pack
rmdir ..\temp\ /S /Q
rmdir Bootup_USen\ /S /Q
rmdir Bootup_EUen\ /S /Q
explorer ..\!output

exit
pause
cls
color 0a
echo Packing complete!
pause