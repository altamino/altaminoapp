package com.google.android.exoplayer2.drm;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class p0 {
    public static final String PROPERTY_LICENSE_DURATION_REMAINING = "LicenseDurationRemaining";
    public static final String PROPERTY_PLAYBACK_DURATION_REMAINING = "PlaybackDurationRemaining";

    private static long a(Map<String, String> map, String str) {
        if (map == null) {
            return -9223372036854775807L;
        }
        try {
            String str2 = map.get(str);
            if (str2 != null) {
                return Long.parseLong(str2);
            }
            return -9223372036854775807L;
        } catch (NumberFormatException unused) {
            return -9223372036854775807L;
        }
    }

    @Nullable
    public static Pair<Long, Long> b(n nVar) {
        Map<String, String> mapQueryKeyStatus = nVar.queryKeyStatus();
        if (mapQueryKeyStatus == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(mapQueryKeyStatus, "LicenseDurationRemaining")), Long.valueOf(a(mapQueryKeyStatus, "PlaybackDurationRemaining")));
    }
}
