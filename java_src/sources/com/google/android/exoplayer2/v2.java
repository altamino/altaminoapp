package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class v2 extends IOException {
    public final boolean contentIsMalformed;
    public final int dataType;

    public static v2 a(@Nullable String str, @Nullable Throwable th) {
        return new v2(str, th, true, 1);
    }

    public static v2 b(@Nullable String str, @Nullable Throwable th) {
        return new v2(str, th, true, 0);
    }

    public static v2 c(@Nullable String str) {
        return new v2(str, null, false, 1);
    }

    protected v2(@Nullable String str, @Nullable Throwable th, boolean z6, int i10) {
        super(str, th);
        this.contentIsMalformed = z6;
        this.dataType = i10;
    }
}
