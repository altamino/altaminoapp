package com.narvii.chat.rtc;

/* JADX INFO: loaded from: classes11.dex */
public interface RtcJoinListener {
    public static final int ERROR_TYPE_JOIN_ERROR = 1;

    void onError(int i10, String str, String str2);

    void onLeaveRtcChannel(String str);
}
