package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class p3 {
    public static final p3 DEFAULT = new p3(false);
    public final boolean tunneling;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && p3.class == obj.getClass() && this.tunneling == ((p3) obj).tunneling;
    }

    public int hashCode() {
        return !this.tunneling ? 1 : 0;
    }

    public p3(boolean z6) {
        this.tunneling = z6;
    }
}
