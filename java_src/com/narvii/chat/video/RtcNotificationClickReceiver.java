package com.narvii.chat.video;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.narvii.chat.rtc.RtcService;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class RtcNotificationClickReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ((RtcService) Utils.getNVContext(context).getService("rtc")).relaunchRtcMainActivity();
    }
}
