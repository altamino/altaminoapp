package com.narvii.nvplayer;

import android.content.Context;
import com.narvii.app.NVApplication;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class NVPlayerManager {
    public static INVPlayer getNVPlayer(Context context) {
        return NVExoPlayer.getInstance(context != null ? context.getApplicationContext() : NVApplication.instance());
    }
}
