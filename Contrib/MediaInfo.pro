# MediaInfo library built with QMake
# in order to build with qmake just copy this file to the sources
# then open with QtCreator and build
TEMPLATE = lib
CONFIG += staticlib
TARGET = MediaInfo

DISTDIR = ../Library

ZENLIB_DIR = /Users/rkrause/src/cpp/MediaInfo/ZenLib
THIRD_PARTY_DIR = ../ThirdParty

INCLUDEPATH += . .. $${ZENLIB_DIR}/Source \
$${THIRD_PARTY_DIR}/tinyxml2 \
$${THIRD_PARTY_DIR}/aes-gladman \
$${THIRD_PARTY_DIR}/base64 \
$${THIRD_PARTY_DIR}/md5 \
$${THIRD_PARTY_DIR}/sha1-gladman \
$${THIRD_PARTY_DIR}/sha2-gladman \
$${THIRD_PARTY_DIR}/hmac-gladman

# Note: UNICODE is a must
QMAKE_CXXFLAGS +=  -D_UNICODE -DMEDIAINFO_LIBMMS_NO -DMEDIAINFO_LIBCURL_NO

# surpressing way too many warnings here, with a heavy sigh
# these should be looked at one group at a time
QMAKE_CFLAGS_WARN_ON -= -Wall
QMAKE_CXXFLAGS_WARN_ON -= -Wall
QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter \
-Wno-unused-private-field \
-Wno-unused-const-variable \
-Wno-ignored-qualifiers \
-Wno-missing-braces \
-Wno-pointer-sign \
-Wno-invalid-source-encoding \
-Wno-pointer-sign \
-Wno-parantheses



HEADERS += \
        Archive/File_7z.h \
        Archive/File_Ace.h \
        Archive/File_Bzip2.h \
        Archive/File_Elf.h \
        Archive/File_Gzip.h \
        Archive/File_Iso9660.h \
        Archive/File_Mz.h \
        Archive/File_Rar.h \
        Archive/File_Tar.h \
        Archive/File_Zip.h \
        Audio/File_Aac.h \
        Audio/File_Aac_GeneralAudio.h \
        Audio/File_Aac_GeneralAudio_Sbr.h \
        Audio/File_Aac_GeneralAudio_Sbr_Ps.h \
        Audio/File_Ac3.h \
        Audio/File_Adpcm.h \
        Audio/File_Als.h \
        Audio/File_Amr.h \
        Audio/File_Amv.h \
        Audio/File_Ape.h \
        Audio/File_Au.h \
        Audio/File_Caf.h \
        Audio/File_Celt.h \
        Audio/File_ChannelGrouping.h \
        Audio/File_DolbyE.h \
        Audio/File_Dts.h \
        Audio/File_ExtendedModule.h \
        Audio/File_Flac.h \
        Audio/File_ImpulseTracker.h \
        Audio/File_La.h \
        Audio/File_Midi.h \
        Audio/File_Module.h \
        Audio/File_Mpc.h \
        Audio/File_MpcSv8.h \
        Audio/File_Mpega.h \
        Audio/File_OpenMG.h \
        Audio/File_Opus.h \
        Audio/File_Pcm.h \
        Audio/File_Pcm_M2ts.h \
        Audio/File_Pcm_Vob.h \
        Audio/File_Ps2Audio.h \
        Audio/File_Rkau.h \
        Audio/File_ScreamTracker3.h \
        Audio/File_SmpteSt0302.h \
        Audio/File_SmpteSt0331.h \
        Audio/File_SmpteSt0337.h \
        Audio/File_Speex.h \
        Audio/File_Tak.h \
        Audio/File_Tta.h \
        Audio/File_TwinVQ.h \
        Audio/File_Vorbis.h \
        Audio/File_Wvpk.h \
        Duplicate/File__Duplicate__Base.h \
        Duplicate/File__Duplicate__Writer.h \
        Duplicate/File__Duplicate_MpegTs.h \
        Export/Export_EbuCore.h \
        Export/Export_Fims.h \
        Export/Export_Mpeg7.h \
        Export/Export_PBCore.h \
        Export/Export_PBCore2.h \
        Export/Export_reVTMD.h \
        File__Analyse_Automatic.h \
        File__Analyze.h \
        File__Analyze_MinimizeSize.h \
        File__Base.h \
        File__Duplicate.h \
        File__MultipleParsing.h \
        File_Dummy.h \
        File_Other.h \
        File_Unknown.h \
        HashWrapper.h \
        Image/File_ArriRaw.h \
        Image/File_Bmp.h \
        Image/File_Bpg.h \
        Image/File_Dds.h \
        Image/File_Dpx.h \
        Image/File_Exr.h \
        Image/File_Gif.h \
        Image/File_Ico.h \
        Image/File_Jpeg.h \
        Image/File_Pcx.h \
        Image/File_Png.h \
        Image/File_Psd.h \
        Image/File_Rle.h \
        Image/File_Tga.h \
        Image/File_Tiff.h \
        MediaInfo.h \
        MediaInfo_Config.h \
        MediaInfo_Config_MediaInfo.h \
        MediaInfo_Config_PerPackage.h \
        MediaInfo_Const.h \
        MediaInfo_Events.h \
        MediaInfo_Events_Internal.h \
        MediaInfo_Internal.h \
        MediaInfo_Internal_Const.h \
        MediaInfoList.h \
        MediaInfoList_Internal.h \
        Multiple/File__ReferenceFilesHelper.h \
        Multiple/File__ReferenceFilesHelper_Common.h \
        Multiple/File__ReferenceFilesHelper_Resource.h \
        Multiple/File__ReferenceFilesHelper_Sequence.h \
        Multiple/File__ReferenceFilesHelper_Sequence_Common.h \
        Multiple/File_Aaf.h \
        Multiple/File_Ancillary.h \
        Multiple/File_Bdmv.h \
        Multiple/File_Cdxa.h \
        Multiple/File_DashMpd.h \
        Multiple/File_DcpAm.h \
        Multiple/File_DcpCpl.h \
        Multiple/File_DcpPkl.h \
        Multiple/File_Dpg.h \
        Multiple/File_DvDif.h \
        Multiple/File_Dvdv.h \
        Multiple/File_Dxw.h \
        Multiple/File_Flv.h \
        Multiple/File_Gxf.h \
        Multiple/File_Gxf_TimeCode.h \
        Multiple/File_HdsF4m.h \
        Multiple/File_Hls.h \
        Multiple/File_Ibi.h \
        Multiple/File_Ibi_Creation.h \
        Multiple/File_Ism.h \
        Multiple/File_Ivf.h \
        Multiple/File_Lxf.h \
        Multiple/File_Mk.h \
        Multiple/File_Mpeg4.h \
        Multiple/File_Mpeg4_Descriptors.h \
        Multiple/File_Mpeg4_TimeCode.h \
        Multiple/File_Mpeg_Descriptors.h \
        Multiple/File_Mpeg_Psi.h \
        Multiple/File_MpegPs.h \
        Multiple/File_MpegTs.h \
        Multiple/File_Mxf.h \
        Multiple/File_Nut.h \
        Multiple/File_Ogg.h \
        Multiple/File_Ogg_SubElement.h \
        Multiple/File_P2_Clip.h \
        Multiple/File_Pmp.h \
        Multiple/File_Ptx.h \
        Multiple/File_Riff.h \
        Multiple/File_Rm.h \
        Multiple/File_SequenceInfo.h \
        Multiple/File_Skm.h \
        Multiple/File_Swf.h \
        Multiple/File_Umf.h \
        Multiple/File_Wm.h \
        Multiple/File_Xdcam_Clip.h \
        PreComp.h \
        Reader/Reader__Base.h \
        Reader/Reader_Directory.h \
        Reader/Reader_File.h \
        Reader/Reader_libcurl.h \
        Reader/Reader_libcurl_Include.h \
        Reader/Reader_libmms.h \
        Setup.h \
        Tag/File__Tags.h \
        Tag/File_ApeTag.h \
        Tag/File_Id3.h \
        Tag/File_Id3v2.h \
        Tag/File_Lyrics3.h \
        Tag/File_Lyrics3v2.h \
        Tag/File_PropertyList.h \
        Tag/File_VorbisCom.h \
        Tag/File_Xmp.h \
        Text/File_AribStdB24B37.h \
        Text/File_Cdp.h \
        Text/File_Cmml.h \
        Text/File_DtvccTransport.h \
        Text/File_DvbSubtitle.h \
        Text/File_Eia608.h \
        Text/File_Eia708.h \
        Text/File_Kate.h \
        Text/File_N19.h \
        Text/File_OtherText.h \
        Text/File_Pdf.h \
        Text/File_Pgs.h \
        Text/File_Scc.h \
        Text/File_Scte20.h \
        Text/File_Sdp.h \
        Text/File_SubRip.h \
        Text/File_Teletext.h \
        Text/File_TimedText.h \
        Text/File_Ttml.h \
        TimeCode.h \
        Video/File_AfdBarData.h \
        Video/File_Aic.h \
        Video/File_Avc.h \
        Video/File_AvsV.h \
        Video/File_Canopus.h \
        Video/File_Dirac.h \
        Video/File_Ffv1.h \
        Video/File_Flic.h \
        Video/File_Fraps.h \
        Video/File_H263.h \
        Video/File_Hevc.h \
        Video/File_HuffYuv.h \
        Video/File_Lagarith.h \
        Video/File_Mpeg4v.h \
        Video/File_Mpegv.h \
        Video/File_ProRes.h \
        Video/File_Theora.h \
        Video/File_Vc1.h \
        Video/File_Vc3.h \
        Video/File_Vp8.h \
        Video/File_Y4m.h \
        XmlUtils.h \

SOURCES += \
        Archive/File_7z.cpp \
        Archive/File_Ace.cpp \
        Archive/File_Bzip2.cpp \
        Archive/File_Elf.cpp \
        Archive/File_Gzip.cpp \
        Archive/File_Iso9660.cpp \
        Archive/File_Mz.cpp \
        Archive/File_Rar.cpp \
        Archive/File_Tar.cpp \
        Archive/File_Zip.cpp \
        Audio/File_Aac.cpp \
        Audio/File_Aac_GeneralAudio.cpp \
        Audio/File_Aac_GeneralAudio_Sbr.cpp \
        Audio/File_Aac_GeneralAudio_Sbr_Ps.cpp \
        Audio/File_Aac_Main.cpp \
        Audio/File_Aac_Others.cpp \
        Audio/File_Ac3.cpp \
        Audio/File_Adpcm.cpp \
        Audio/File_Als.cpp \
        Audio/File_Amr.cpp \
        Audio/File_Amv.cpp \
        Audio/File_Ape.cpp \
        Audio/File_Au.cpp \
        Audio/File_Caf.cpp \
        Audio/File_Celt.cpp \
        Audio/File_ChannelGrouping.cpp \
        Audio/File_DolbyE.cpp \
        Audio/File_Dts.cpp \
        Audio/File_ExtendedModule.cpp \
        Audio/File_Flac.cpp \
        Audio/File_ImpulseTracker.cpp \
        Audio/File_La.cpp \
        Audio/File_Midi.cpp \
        Audio/File_Module.cpp \
        Audio/File_Mpc.cpp \
        Audio/File_MpcSv8.cpp \
        Audio/File_Mpega.cpp \
        Audio/File_OpenMG.cpp \
        Audio/File_Opus.cpp \
        Audio/File_Pcm.cpp \
        Audio/File_Pcm_M2ts.cpp \
        Audio/File_Pcm_Vob.cpp \
        Audio/File_Ps2Audio.cpp \
        Audio/File_Rkau.cpp \
        Audio/File_ScreamTracker3.cpp \
        Audio/File_SmpteSt0302.cpp \
        Audio/File_SmpteSt0331.cpp \
        Audio/File_SmpteSt0337.cpp \
        Audio/File_Speex.cpp \
        Audio/File_Tak.cpp \
        Audio/File_Tta.cpp \
        Audio/File_TwinVQ.cpp \
        Audio/File_Vorbis.cpp \
        Audio/File_Wvpk.cpp \
        Duplicate/File__Duplicate__Base.cpp \
        Duplicate/File__Duplicate__Writer.cpp \
        Duplicate/File__Duplicate_MpegTs.cpp \
        Export/Export_EbuCore.cpp \
        Export/Export_Fims.cpp \
        Export/Export_Mpeg7.cpp \
        Export/Export_PBCore.cpp \
        Export/Export_PBCore2.cpp \
        Export/Export_reVTMD.cpp \
        File__Analyze.cpp \
        File__Analyze_Buffer.cpp \
        File__Analyze_Buffer_MinimizeSize.cpp \
        File__Analyze_Streams.cpp \
        File__Analyze_Streams_Finish.cpp \
        File__Base.cpp \
        File__Duplicate.cpp \
        File__MultipleParsing.cpp \
        File_Dummy.cpp \
        File_Other.cpp \
        File_Unknown.cpp \
        HashWrapper.cpp \
        Image/File_ArriRaw.cpp \
        Image/File_Bmp.cpp \
        Image/File_Bpg.cpp \
        Image/File_Dds.cpp \
        Image/File_Dpx.cpp \
        Image/File_Exr.cpp \
        Image/File_Gif.cpp \
        Image/File_Ico.cpp \
        Image/File_Jpeg.cpp \
        Image/File_Pcx.cpp \
        Image/File_Png.cpp \
        Image/File_Psd.cpp \
        Image/File_Rle.cpp \
        Image/File_Tga.cpp \
        Image/File_Tiff.cpp \
        MediaInfo.cpp \
        MediaInfo_Config.cpp \
        MediaInfo_Config_Automatic.cpp \
        MediaInfo_Config_MediaInfo.cpp \
        MediaInfo_Config_PerPackage.cpp \
        MediaInfo_File.cpp \
        MediaInfo_Inform.cpp \
        MediaInfo_Internal.cpp \
        MediaInfoList.cpp \
        MediaInfoList_Internal.cpp \
        Multiple/File__ReferenceFilesHelper.cpp \
        Multiple/File__ReferenceFilesHelper_Resource.cpp \
        Multiple/File__ReferenceFilesHelper_Sequence.cpp \
        Multiple/File_Aaf.cpp \
        Multiple/File_Ancillary.cpp \
        Multiple/File_Bdmv.cpp \
        Multiple/File_Cdxa.cpp \
        Multiple/File_DashMpd.cpp \
        Multiple/File_DcpAm.cpp \
        Multiple/File_DcpCpl.cpp \
        Multiple/File_DcpPkl.cpp \
        Multiple/File_Dpg.cpp \
        Multiple/File_DvDif.cpp \
        Multiple/File_DvDif_Analysis.cpp \
        Multiple/File_Dvdv.cpp \
        Multiple/File_Dxw.cpp \
        Multiple/File_Flv.cpp \
        Multiple/File_Gxf.cpp \
        Multiple/File_Gxf_TimeCode.cpp \
        Multiple/File_HdsF4m.cpp \
        Multiple/File_Hls.cpp \
        Multiple/File_Ibi.cpp \
        Multiple/File_Ibi_Creation.cpp \
        Multiple/File_Ism.cpp \
        Multiple/File_Ivf.cpp \
        Multiple/File_Lxf.cpp \
        Multiple/File_Mk.cpp \
        Multiple/File_Mpeg4.cpp \
        Multiple/File_Mpeg4_Descriptors.cpp \
        Multiple/File_Mpeg4_Elements.cpp \
        Multiple/File_Mpeg4_TimeCode.cpp \
        Multiple/File_Mpeg_Descriptors.cpp \
        Multiple/File_Mpeg_Psi.cpp \
        Multiple/File_MpegPs.cpp \
        Multiple/File_MpegTs.cpp \
        Multiple/File_MpegTs_Duplicate.cpp \
        Multiple/File_Mxf.cpp \
        Multiple/File_Nut.cpp \
        Multiple/File_Ogg.cpp \
        Multiple/File_Ogg_SubElement.cpp \
        Multiple/File_P2_Clip.cpp \
        Multiple/File_Pmp.cpp \
        Multiple/File_Ptx.cpp \
        Multiple/File_Riff.cpp \
        Multiple/File_Riff_Elements.cpp \
        Multiple/File_Rm.cpp \
        Multiple/File_SequenceInfo.cpp \
        Multiple/File_Skm.cpp \
        Multiple/File_Swf.cpp \
        Multiple/File_Umf.cpp \
        Multiple/File_Wm.cpp \
        Multiple/File_Wm_Elements.cpp \
        Multiple/File_Xdcam_Clip.cpp \
        PreComp.cpp \
        Reader/Reader_Directory.cpp \
        Reader/Reader_File.cpp \
        Reader/Reader_libcurl.cpp \
        Reader/Reader_libmms.cpp \
        Tag/File__Tags.cpp \
        Tag/File_ApeTag.cpp \
        Tag/File_Id3.cpp \
        Tag/File_Id3v2.cpp \
        Tag/File_Lyrics3.cpp \
        Tag/File_Lyrics3v2.cpp \
        Tag/File_PropertyList.cpp \
        Tag/File_VorbisCom.cpp \
        Tag/File_Xmp.cpp \
        Text/File_AribStdB24B37.cpp \
        Text/File_Cdp.cpp \
        Text/File_Cmml.cpp \
        Text/File_DtvccTransport.cpp \
        Text/File_DvbSubtitle.cpp \
        Text/File_Eia608.cpp \
        Text/File_Eia708.cpp \
        Text/File_Kate.cpp \
        Text/File_N19.cpp \
        Text/File_OtherText.cpp \
        Text/File_Pdf.cpp \
        Text/File_Pgs.cpp \
        Text/File_Scc.cpp \
        Text/File_Scte20.cpp \
        Text/File_Sdp.cpp \
        Text/File_SubRip.cpp \
        Text/File_Teletext.cpp \
        Text/File_TimedText.cpp \
        Text/File_Ttml.cpp \
        TimeCode.cpp \
        Video/File_AfdBarData.cpp \
        Video/File_Aic.cpp \
        Video/File_Avc.cpp \
        Video/File_Avc_Duplicate.cpp \
        Video/File_AvsV.cpp \
        Video/File_Canopus.cpp \
        Video/File_Dirac.cpp \
        Video/File_Ffv1.cpp \
        Video/File_Flic.cpp \
        Video/File_Fraps.cpp \
        Video/File_H263.cpp \
        Video/File_Hevc.cpp \
        Video/File_HuffYuv.cpp \
        Video/File_Lagarith.cpp \
        Video/File_Mpeg4v.cpp \
        Video/File_Mpegv.cpp \
        Video/File_ProRes.cpp \
        Video/File_Theora.cpp \
        Video/File_Vc1.cpp \
        Video/File_Vc3.cpp \
        Video/File_Vp8.cpp \
        Video/File_Y4m.cpp \
        XmlUtils.cpp \


SOURCES += \
        $${THIRD_PARTY_DIR}/aes-gladman/aes_modes.c \
        $${THIRD_PARTY_DIR}/aes-gladman/aes_ni.c \
        $${THIRD_PARTY_DIR}/aes-gladman/aescrypt.c \
        $${THIRD_PARTY_DIR}/aes-gladman/aeskey.c \
        $${THIRD_PARTY_DIR}/aes-gladman/aestab.c \
        $${THIRD_PARTY_DIR}/aes-gladman/aesxam.c \
        $${THIRD_PARTY_DIR}/aes-gladman/tablegen.c \
        $${THIRD_PARTY_DIR}/hmac-gladman/hmac.c \
        $${THIRD_PARTY_DIR}/hmac-gladman/pwd2key.c \
        $${THIRD_PARTY_DIR}/md5/md5.c \
        $${THIRD_PARTY_DIR}/sha1-gladman/sha1.c \
        $${THIRD_PARTY_DIR}/sha2-gladman/sha2.c \
        $${THIRD_PARTY_DIR}/sha2-gladman/shasum.c \
        $${THIRD_PARTY_DIR}/tinyxml2/tinyxml2.cpp

HEADERS += \
        $${THIRD_PARTY_DIR}/aes-gladman/aes.h \
        $${THIRD_PARTY_DIR}/aes-gladman/aes_ni.h \
        $${THIRD_PARTY_DIR}/aes-gladman/aes_via_ace.h \
        $${THIRD_PARTY_DIR}/aes-gladman/aescpp.h \
        $${THIRD_PARTY_DIR}/aes-gladman/aesopt.h \
        $${THIRD_PARTY_DIR}/aes-gladman/aestab.h \
        $${THIRD_PARTY_DIR}/aes-gladman/brg_endian.h \
        $${THIRD_PARTY_DIR}/aes-gladman/brg_types.h \
        $${THIRD_PARTY_DIR}/base64/base64.h \
        $${THIRD_PARTY_DIR}/hmac-gladman/hmac.h \
        $${THIRD_PARTY_DIR}/hmac-gladman/pwd2key.h \
        $${THIRD_PARTY_DIR}/md5/md5.h \
        $${THIRD_PARTY_DIR}/sha1-gladman/sha1.h \
        $${THIRD_PARTY_DIR}/sha2-gladman/sha2.h \
        $${THIRD_PARTY_DIR}/tinyxml2/tinyxml2.h

OTHER_FILES += \
        $${THIRD_PARTY_DIR}/aes-gladman/aes.txt \
        $${THIRD_PARTY_DIR}/aes-gladman/aes_amd64.asm \
        $${THIRD_PARTY_DIR}/aes-gladman/aes_x86_v1.asm \
        $${THIRD_PARTY_DIR}/aes-gladman/aes_x86_v2.asm \
        $${THIRD_PARTY_DIR}/aes-gladman/via_ace.txt \
