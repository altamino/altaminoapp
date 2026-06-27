package com.narvii.chat.rtc;

/* loaded from: classes2.dex */
public interface RtcJoinListener {
    public static final int ERROR_TYPE_JOIN_ERROR = 1;

    void onError(int i, String str, String str2);

    void onLeaveRtcChannel(String str);
}
