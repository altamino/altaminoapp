package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class c3 implements h {
    private static final int FIELD_PITCH = 1;
    private static final int FIELD_SPEED = 0;
    public final float pitch;
    private final int scaledUsPerMs;
    public final float speed;
    public static final c3 DEFAULT = new c3(1.0f);
    public static final h.a<c3> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.b3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return c3.d(bundle);
        }
    };

    public c3(float f) {
        this(f, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c3 d(Bundle bundle) {
        return new c3(bundle.getFloat(c(0), 1.0f), bundle.getFloat(c(1), 1.0f));
    }

    public long b(long j6) {
        return j6 * ((long) this.scaledUsPerMs);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c3.class != obj.getClass()) {
            return false;
        }
        c3 c3Var = (c3) obj;
        return this.speed == c3Var.speed && this.pitch == c3Var.pitch;
    }

    public String toString() {
        return com.google.android.exoplayer2.util.o0.z("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.speed), Float.valueOf(this.pitch));
    }

    public c3(@FloatRange float f, @FloatRange float f6) {
        com.google.android.exoplayer2.util.a.a(f > 0.0f);
        com.google.android.exoplayer2.util.a.a(f6 > 0.0f);
        this.speed = f;
        this.pitch = f6;
        this.scaledUsPerMs = Math.round(f * 1000.0f);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    @CheckResult
    public c3 e(@FloatRange float f) {
        return new c3(f, this.pitch);
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.speed)) * 31) + Float.floatToRawIntBits(this.pitch);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putFloat(c(0), this.speed);
        bundle.putFloat(c(1), this.pitch);
        return bundle;
    }
}
