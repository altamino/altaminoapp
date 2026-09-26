package com.airbnb.lottie;

import androidx.annotation.RestrictTo;
import androidx.core.os.TraceCompat;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class d {
    public static final boolean DBG = false;
    private static final int MAX_DEPTH = 20;
    public static final String TAG = "LOTTIE";
    private static int depthPastMaxDepth;
    private static String[] sections;
    private static long[] startTimeNs;
    private static int traceDepth;
    private static boolean traceEnabled;

    public static void a(String str) {
        if (traceEnabled) {
            int i10 = traceDepth;
            if (i10 == 20) {
                depthPastMaxDepth++;
                return;
            }
            sections[i10] = str;
            startTimeNs[i10] = System.nanoTime();
            TraceCompat.a(str);
            traceDepth++;
        }
    }

    public static float b(String str) {
        int i10 = depthPastMaxDepth;
        if (i10 > 0) {
            depthPastMaxDepth = i10 - 1;
            return 0.0f;
        }
        if (!traceEnabled) {
            return 0.0f;
        }
        int i11 = traceDepth - 1;
        traceDepth = i11;
        if (i11 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(sections[i11])) {
            TraceCompat.b();
            return (System.nanoTime() - startTimeNs[traceDepth]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + sections[traceDepth] + ".");
    }
}
