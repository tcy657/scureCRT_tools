#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Function UpdateScup1
	fold = "SCUP1"
  crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/bootrom_8247a_256M.bin"",""/tffs/bootrom_8247a_256M.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R845.xex"",""/tffs/HX330_R845.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/R845_1588.zb"",""/tffs/R845_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/SCUP1.zb"",""/tffs/SCUP1.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/SCUP1.zj"",""/tffs/SCUP1.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateEso3
	fold = "ESO3"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/KRPHY_firmware.bin"",""/tffs/KRPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/GSO2.zj"",""/tffs/GSO2.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/eso3.zb"",""/tffs/eso3.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGO2_1588.zb"",""/tffs/XGO2_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateEsr1
	fold = "ESR1"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/GSR1.zj"",""/tffs/GSR1.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/esr1.zb"",""/tffs/esr1.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGR1_1588.zb"",""/tffs/XGR1_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

  crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

End Function

Function UpdateGso2
	fold = "GSO2"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/KRPHY_firmware.bin"",""/tffs/KRPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/GSO2.zj"",""/tffs/GSO2.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/gso2.zb"",""/tffs/gso2.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGO2_1588.zb"",""/tffs/XGO2_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateGsr1
	fold = "GSR1"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/GSR1.zj"",""/tffs/GSR1.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/gsr1.zb"",""/tffs/gsr1.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGR1_1588.zb"",""/tffs/XGR1_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

  crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateScuo1
	fold = "SCUO1"
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/xcuo1.zb"",""/tffs/xcuo1.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/ptn_680.zj"",""/tffs/ptn_680.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/640G.zj"",""/tffs/640G.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bcmsdk.zb"",""/tffs/bcmsdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/ptpHub.zb"",""/tffs/ptpHub.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/ifp.zb"",""/tffs/ifp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
  crt.Screen.Send "copy "& Chr(34) &fold &"/cku.zb"",""/tffs/cku.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateScur1
	fold = "SCUR1"
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/SCUR1.zb"",""/tffs/SCUR1.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/ptpHubXcuj2.zb"",""/tffs/ptpHubXcuj2.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bcmsdk.zb"",""/tffs/bcmsdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/scur1_fp.zx"",""/tffs/scur1_fp.zx""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/xcuj2_ptn.zx"",""/tffs/xcuj2_ptn.zx""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateXgo2

	fold = "XGO2"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGO2.zj"",""/tffs/XGO2.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/xgo2.zb"",""/tffs/xgo2.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGO2_1588.zb"",""/tffs/XGO2_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/KRPHY_firmware.bin"",""/tffs/KRPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateXgr1

	fold = "XGR1"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGR1.zj"",""/tffs/XGR1.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/xgr1.zb"",""/tffs/xgr1.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGR1_1588.zb"",""/tffs/XGR1_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

  crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateXso2

	fold = "XSO2"
	crt.Screen.Send "copy "& Chr(34)&fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/KRPHY_firmware.bin"",""/tffs/KRPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34)&fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/xso2.zb"",""/tffs/xso2.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/KRPHY_firmware.bin"",""/tffs/KRPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XGO2_1588.zb"",""/tffs/XGO2_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XGO2.zj"",""/tffs/XGO2_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
  crt.Screen.Send "copy "& Chr(34)&fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateXso3

	fold = "XSO3"
	crt.Screen.Send "copy "& Chr(34)&fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XSO3.zj"",""/tffs/XSO3.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/xso3.zb"",""/tffs/xso3.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/XGO2_1588.zb"",""/tffs/XGO2_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34)&fold &"/KRPHY_firmware.bin"",""/tffs/KRPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

  crt.Screen.Send "copy "& Chr(34)&fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateXso3v2

	fold = "XSO3V2"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/KRPHY_firmware.bin"",""/tffs/KRPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XSO3.zj"",""/tffs/XSO3.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/xso3.zb"",""/tffs/xso3.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
		
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGO2_1588.zb"",""/tffs/XGO2_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
  crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateXsr1

	fold = "XSR1"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGR1.zj"",""/tffs/XGR1.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/xsr1.zb"",""/tffs/xsr1.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGR1_1588.zb"",""/tffs/XGR1_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

  crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
End Function

Function UpdateXsr2

	fold = "XSR2"
	crt.Screen.Send "copy "& Chr(34) &fold &"/LinkOam_R860.zb"",""/tffs/LinkOam_R860.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/vxWorks_8247a_256M.z"",""/tffs/vxWorks_8247a_256M.z""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/boardproj.cmd"",""/tffs/boardproj.cmd""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/bmulib_8247a.zb"",""/tffs/bmulib_8247a.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGPHY_firmware.bin"",""/tffs/XGPHY_firmware.bin""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XSR2.zj"",""/tffs/XSR2.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/R86x_altera.zj"",""/tffs/R86x_altera.zj""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/xsr2.zb"",""/tffs/xsr2.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/param.xml"",""/tffs/param.xml""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330_R860.xex"",""/tffs/HX330_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/HX330B2_R860.xex"",""/tffs/HX330B2_R860.xex""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

	crt.Screen.Send "copy "& Chr(34) &fold &"/XelSdk.zb"",""/tffs/XelSdk.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XelApp.zb"",""/tffs/XelApp.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/appl_NP.zb"",""/tffs/appl_NP.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)
	
	crt.Screen.Send "copy "& Chr(34) &fold &"/XGR1_1588.zb"",""/tffs/XGR1_1588.zb""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)

  crt.Screen.Send "copy "& Chr(34) &fold &"/verInfo.ini"",""/tffs/verInfo.ini""" & chr(13)
	crt.Screen.WaitForString "value = "
	crt.Screen.Send chr(13)   
End Function


Sub Main
  Dim pass,hostname,result,style
  pass=30                                                                                   
  crt.Screen.Send vbCR
  If (crt.Screen.WaitForString ("->",1) <>False) Then
  	crt.Screen.Send "exit" &vbCR
  End If
   'pass = crt.Dialog.Prompt("Panel NO(2~29):", "Enter Panel NO", "", True)
  Do Until pass > 1 And pass < 30
  pass = Inputbox("请输入升级的单盘号(2~29):", "盘号")
  style = InputBox("请输入盘类型（SCUP1/ESO3/ESR1/GSO2/GSR1/SCUO1/SCUR1/XGO2/XGR1/XSO2/XSO3/XSO3_V2/XSR1/XSR2):","盘类型")
  crt.Screen.Send "hostname" &vbCR
  crt.Screen.Send "ps -ef | grep 'telnet 10.26.0."&pass &"'|grep -v grep" &"|awk '{print $2}'|xargs -n 1 kill -9" &vbCR
  crt.Screen.Send "telnet 10.26.0."&pass &vbCR
  result = crt.Screen.WaitForString ("VxWorks login: ", 50)
  If (result <>True) Then
  	crt.Screen.Send vbCR
  	MsgBox "无法登陆该单盘，请重试!",,"系统提示"
  	Exit Sub
  Else
  	crt.Sleep 50
	  crt.Screen.Send "bmu852" &vbCR
	  crt.Sleep 50
	  crt.Screen.WaitForString "Password: ",5
	  crt.Sleep 50
	  crt.Screen.Send "aaaabbbb" &vbCR
	  crt.Sleep 50
	  crt.Screen.WaitForString "->",2
	  crt.Screen.Send vbCR
	  crt.Screen.WaitForString "->"
	  crt.Screen.Send "dir" &vbCR
	  crt.Screen.WaitforString "->"	
	  'crt.Screen.Send "xdelete "/tffs/"" &vbCR
	  'crt.Screen.WaitforString "->"
	End If 
  Loop
 
	Select Case style
   Case "SCUP1"
      UpdateScup1
   Case "ESO3"
      UpdateEso3
   Case "ESR1"
      UpdateEsr1
   Case "GSO2"
      UpdateGso2
   Case "GSR1"
      UpdateGsr1
   Case "SCUO1"
      UpdateScuo1
   Case "SCUR1"
      UpdateScur1
   Case "XGO2"
      UpdateXgo2
   Case "XGR1"
      UpdateXgr1
   Case "XSO2"
      UpdateXso2
   Case "XSO3"
      UpdateXso3
   Case "XSO3_V2"
      UpdateXso3v2
   Case "XSR1"
      UpdateXsr1
   Case "XSR2"
      UpdateXsr2   
   Case Else
      'msgbox "盘类型错误，请重新操作! " ,, "系统提示"
 End Select

 crt.Screen.Synchronous = False

End Sub
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      