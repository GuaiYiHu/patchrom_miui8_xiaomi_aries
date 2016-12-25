import common
import edify_generator
import os

def ModifyBegin(edify):
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ifelse(is_mounted("/data"), unmount("/data"));
ui_print("******************************************");
ui_print("* MIUI8 based on android6.0 for xiaomi 2/2s");
ui_print("*");
ui_print("* Powered by GuaiYiHu");
ui_print("* Now loading MIUI...");
ui_print("******************************************");\n''' + edify.script[0]

def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyBegin(edify)
