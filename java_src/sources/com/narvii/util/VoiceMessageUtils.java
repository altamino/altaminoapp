package com.narvii.util;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public class VoiceMessageUtils {
    public static int getDurationSecond(int i10) {
        return Math.round(i10 / 1000.0f);
    }

    public static String getVoiceMessageSummary(Context context, int i10) {
        return context.getString(R.string.voice_message_duration, getDurationSecond(i10) + CmcdHeadersFactory.STREAMING_FORMAT_SS);
    }
}
