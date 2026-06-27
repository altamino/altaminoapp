package com.narvii.video.model;

import io.agora.rtc.RtcEngine;

/* loaded from: classes3.dex */
public class Constant {
    public static final String MEDIA_SDK_VERSION;
    public static float PRP_DEFAULT_LIGHTNESS = 0.0f;
    public static int PRP_DEFAULT_SMOOTHNESS = 0;
    public static boolean PRP_ENABLED = false;
    public static final float PRP_MAX_LIGHTNESS = 1.5f;
    public static final int PRP_MAX_SMOOTHNESS = 15;
    public static boolean SHOW_VIDEO_INFO;

    static {
        String sdkVersion;
        try {
            sdkVersion = RtcEngine.getSdkVersion();
        } catch (Throwable unused) {
            sdkVersion = "undefined";
        }
        MEDIA_SDK_VERSION = sdkVersion;
        PRP_ENABLED = true;
        PRP_DEFAULT_LIGHTNESS = 1.1f;
        PRP_DEFAULT_SMOOTHNESS = 12;
        SHOW_VIDEO_INFO = true;
    }
}
