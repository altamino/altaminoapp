package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class t3 extends k3 {
    public static final h.a<t3> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.s3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return t3.e(bundle);
        }
    };
    private static final int FIELD_MAX_STARS = 1;
    private static final int FIELD_STAR_RATING = 2;
    private static final int MAX_STARS_DEFAULT = 5;
    private static final int TYPE = 2;

    @IntRange
    private final int maxStars;
    private final float starRating;

    public t3(@IntRange int i10) {
        com.google.android.exoplayer2.util.a.b(i10 > 0, "maxStars must be a positive integer");
        this.maxStars = i10;
        this.starRating = -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static t3 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 2);
        int i10 = bundle.getInt(c(1), 5);
        float f = bundle.getFloat(c(2), -1.0f);
        return f == -1.0f ? new t3(i10) : new t3(i10, f);
    }

    public int hashCode() {
        return com.google.common.base.k.b(Integer.valueOf(this.maxStars), Float.valueOf(this.starRating));
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof t3)) {
            return false;
        }
        t3 t3Var = (t3) obj;
        return this.maxStars == t3Var.maxStars && this.starRating == t3Var.starRating;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 2);
        bundle.putInt(c(1), this.maxStars);
        bundle.putFloat(c(2), this.starRating);
        return bundle;
    }

    public t3(@IntRange int i10, @FloatRange float f) {
        com.google.android.exoplayer2.util.a.b(i10 > 0, "maxStars must be a positive integer");
        com.google.android.exoplayer2.util.a.b(f >= 0.0f && f <= ((float) i10), "starRating is out of range [0, maxStars]");
        this.maxStars = i10;
        this.starRating = f;
    }
}
