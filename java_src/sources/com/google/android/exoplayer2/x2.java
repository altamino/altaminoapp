package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class x2 extends k3 {
    public static final h.a<x2> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.w2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return x2.e(bundle);
        }
    };
    private static final int FIELD_PERCENT = 1;
    private static final int TYPE = 1;
    private final float percent;

    public x2() {
        this.percent = -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static x2 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 1);
        float f = bundle.getFloat(c(1), -1.0f);
        return f == -1.0f ? new x2() : new x2(f);
    }

    public int hashCode() {
        return com.google.common.base.k.b(Float.valueOf(this.percent));
    }

    public x2(@FloatRange float f) {
        com.google.android.exoplayer2.util.a.b(f >= 0.0f && f <= 100.0f, "percent must be in the range of [0, 100]");
        this.percent = f;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof x2) && this.percent == ((x2) obj).percent;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 1);
        bundle.putFloat(c(1), this.percent);
        return bundle;
    }
}
