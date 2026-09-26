package com.narvii.video.widget;

import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class MediaTimeLineComponentKt {
    @NotNull
    public static final String convertMillisToTime(int i10) {
        int i11 = (i10 % 1000) / 100;
        int i12 = i10 / 1000;
        u0 u0Var = u0.INSTANCE;
        String str = String.format(Locale.US, "%01d:%02d.%1d", Arrays.copyOf(new Object[]{Integer.valueOf(i12 / 60), Integer.valueOf(i12 % 60), Integer.valueOf(i11)}, 3));
        t.i(str, "format(...)");
        return str;
    }
}
