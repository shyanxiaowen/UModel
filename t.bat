@echo off

rm UnLoader.exe
bash build.sh

set ut_path=c:/games/unreal~1/ut2004
if exist %ut_path%/system/ut2004.exe goto path_ok
set ut_path=c:/games/unreal/ut2004
:path_ok
set run=UnLoader.exe -path=%ut_path%
set run2=UnLoader.exe -path=data

rem goto bugs

rem ---------------------------------------------------------------------------

rem %run% HumanMaleA MercMaleD
%run% HumanFemaleA MercFemaleB
rem %run% HumanFemaleA
rem %run% HumanMaleA
rem %run% Bot

rem %run% SkaarjPack_rc
rem %run% SkaarjPack_rc NaliCow
rem %run% AS_VehiclesFull_M SpaceFighter_Human SkeletalMesh
rem %run2% MarineModel MarineMesh_Male
rem %run2% TarjaAnim
rem %run2% test Male SkeletalMesh
rem %run% 2K4_NvidiaIntro Intro2k4Skaarj SkeletalMesh
rem %run2% Bender
rem %run% NewWeapons2004
goto exit


rem ---------------------------------------------------------------------------
rem 	BUGS
rem ---------------------------------------------------------------------------
:bugs
rem %run2% AyaneMesh ayane
%run2% Mechanatrix_t mech_two
rem %run2% TarjaAnim SuperFemale
rem %run2% soria soria
rem %run% NewWeapons2004 NewTranslauncher_1st
rem %run% HumanMaleA NightMaleB
rem %run% HumanFemaleA MercFemaleB
goto exit


rem ---------------------------------------------------------------------------
rem		CRASH
rem ---------------------------------------------------------------------------
:crash
goto exit


rem ---------------------------------------------------------------------------
rem		SHADERS
rem ---------------------------------------------------------------------------
:shaders
%run% StreamAnims Dropship
%run% Weapons BioRifle_1st SkeletalMesh
goto exit


rem ---------------------------------------------------------------------------
rem		MATERIALS
rem ---------------------------------------------------------------------------
:materials
rem %run% PlayerSkins MercFemaleBBodyA
%run% PlayerSkins MercFemaleBHeadA
goto exit


rem ---------------------------------------------------------------------------

rem UnLoader.exe -list data/SplinterCell/EFemale.ukx

rem ---------------------------------------------------------------------------

:exit
