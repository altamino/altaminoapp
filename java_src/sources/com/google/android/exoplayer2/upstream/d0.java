package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
public final class d0 {
    private static final String TAG = "HttpUtil";
    private static final Pattern CONTENT_RANGE_WITH_START_AND_END = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern CONTENT_RANGE_WITH_SIZE = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    @Nullable
    public static String a(long j6, long j10) {
        if (j6 == 0 && j10 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("bytes=");
        sb.append(j6);
        sb.append("-");
        if (j10 != -1) {
            sb.append((j6 + j10) - 1);
        }
        return sb.toString();
    }

    public static long b(@Nullable String str, @Nullable String str2) {
        long j6;
        if (!TextUtils.isEmpty(str)) {
            try {
                j6 = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                com.google.android.exoplayer2.util.t.c(TAG, "Unexpected Content-Length [" + str + "]");
                j6 = -1;
            }
        } else {
            j6 = -1;
        }
        if (!TextUtils.isEmpty(str2)) {
            Matcher matcher = CONTENT_RANGE_WITH_START_AND_END.matcher(str2);
            if (matcher.matches()) {
                try {
                    long j10 = (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))) - Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)))) + 1;
                    if (j6 < 0) {
                        return j10;
                    }
                    if (j6 != j10) {
                        com.google.android.exoplayer2.util.t.i(TAG, "Inconsistent headers [" + str + "] [" + str2 + "]");
                        return Math.max(j6, j10);
                    }
                    return j6;
                } catch (NumberFormatException unused2) {
                    com.google.android.exoplayer2.util.t.c(TAG, "Unexpected Content-Range [" + str2 + "]");
                    return j6;
                }
            }
            return j6;
        }
        return j6;
    }

    public static long c(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = CONTENT_RANGE_WITH_SIZE.matcher(str);
        if (!matcher.matches()) {
            return -1L;
        }
        return Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
    }
}
