package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class g0 {
    public static final g0 UNKNOWN = new g0(-1, -1);
    private final int height;
    private final int width;

    public int a() {
        return this.height;
    }

    public int b() {
        return this.width;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.width == g0Var.width && this.height == g0Var.height;
    }

    public int hashCode() {
        int i10 = this.height;
        int i11 = this.width;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        return this.width + "x" + this.height;
    }

    public g0(int i10, int i11) {
        boolean z6;
        if ((i10 != -1 && i10 < 0) || (i11 != -1 && i11 < 0)) {
            z6 = false;
        } else {
            z6 = true;
        }
        a.a(z6);
        this.width = i10;
        this.height = i11;
    }
}
