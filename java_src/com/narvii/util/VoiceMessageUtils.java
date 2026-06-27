package com.narvii.util;

import android.content.Context;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class VoiceMessageUtils {
    public static String getVoiceMessageSummary(Context context, int i) {
        return context.getString(R.string.voice_message_duration, getDurationSecond(i) + "s");
    }

    public static int getDurationSecond(int i) {
        return Math.round(i / 1000.0f);
    }
}
