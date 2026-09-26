package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class x3 extends k3 {
    public static final h.a<x3> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.w3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return x3.e(bundle);
        }
    };
    private static final int FIELD_IS_THUMBS_UP = 2;
    private static final int FIELD_RATED = 1;
    private static final int TYPE = 3;
    private final boolean isThumbsUp;
    private final boolean rated;

    public x3() {
        this.rated = false;
        this.isThumbsUp = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static x3 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 3);
        return bundle.getBoolean(c(1), false) ? new x3(bundle.getBoolean(c(2), false)) : new x3();
    }

    public int hashCode() {
        return com.google.common.base.k.b(Boolean.valueOf(this.rated), Boolean.valueOf(this.isThumbsUp));
    }

    public x3(boolean z6) {
        this.rated = true;
        this.isThumbsUp = z6;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof x3)) {
            return false;
        }
        x3 x3Var = (x3) obj;
        return this.isThumbsUp == x3Var.isThumbsUp && this.rated == x3Var.rated;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 3);
        bundle.putBoolean(c(1), this.rated);
        bundle.putBoolean(c(2), this.isThumbsUp);
        return bundle;
    }
}
