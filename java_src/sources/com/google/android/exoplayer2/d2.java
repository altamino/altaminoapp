package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class d2 extends k3 {
    public static final h.a<d2> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.c2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return d2.e(bundle);
        }
    };
    private static final int FIELD_IS_HEART = 2;
    private static final int FIELD_RATED = 1;
    private static final int TYPE = 0;
    private final boolean isHeart;
    private final boolean rated;

    public d2() {
        this.rated = false;
        this.isHeart = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static d2 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 0);
        return bundle.getBoolean(c(1), false) ? new d2(bundle.getBoolean(c(2), false)) : new d2();
    }

    public int hashCode() {
        return com.google.common.base.k.b(Boolean.valueOf(this.rated), Boolean.valueOf(this.isHeart));
    }

    public d2(boolean z6) {
        this.rated = true;
        this.isHeart = z6;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof d2)) {
            return false;
        }
        d2 d2Var = (d2) obj;
        return this.isHeart == d2Var.isHeart && this.rated == d2Var.rated;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 0);
        bundle.putBoolean(c(1), this.rated);
        bundle.putBoolean(c(2), this.isHeart);
        return bundle;
    }
}
