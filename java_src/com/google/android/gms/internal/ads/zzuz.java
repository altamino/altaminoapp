package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public final class zzuz {
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;
    private final int zzbvu;

    @VisibleForTesting
    public zzuz(float f, float f2, float f3, float f4, int i) {
        this.left = f;
        this.top = f2;
        this.right = f + f3;
        this.bottom = f2 + f4;
        this.zzbvu = i;
    }

    final float zzna() {
        return this.left;
    }

    final float zznb() {
        return this.top;
    }

    final float zznc() {
        return this.right;
    }

    final float zznd() {
        return this.bottom;
    }

    final int zzne() {
        return this.zzbvu;
    }
}
