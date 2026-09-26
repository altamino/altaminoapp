package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
public final class i {
    private static final Pattern COMMENT = Pattern.compile("^NOTE([ \t].*)?$");
    private static final String WEBVTT_HEADER = "WEBVTT";

    public static float b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) throws NumberFormatException {
        String[] strArrI0 = o0.I0(str, "\\.");
        long j6 = 0;
        for (String str2 : o0.H0(strArrI0[0], ":")) {
            j6 = (j6 * 60) + Long.parseLong(str2);
        }
        long j10 = j6 * 1000;
        if (strArrI0.length == 2) {
            j10 += Long.parseLong(strArrI0[1]);
        }
        return j10 * 1000;
    }

    public static boolean a(c0 c0Var) {
        String strP = c0Var.p();
        if (strP != null && strP.startsWith(WEBVTT_HEADER)) {
            return true;
        }
        return false;
    }

    public static void d(c0 c0Var) throws v2 {
        int iE = c0Var.e();
        if (a(c0Var)) {
            return;
        }
        c0Var.P(iE);
        throw v2.a("Expected WEBVTT. Got " + c0Var.p(), null);
    }
}
