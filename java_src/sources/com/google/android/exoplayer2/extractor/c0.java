package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class c0 {
    public static final c0 START = new c0(0, 0);
    public final long position;
    public final long timeUs;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.timeUs == c0Var.timeUs && this.position == c0Var.position;
    }

    public int hashCode() {
        return (((int) this.timeUs) * 31) + ((int) this.position);
    }

    public String toString() {
        return "[timeUs=" + this.timeUs + ", position=" + this.position + "]";
    }

    public c0(long j6, long j10) {
        this.timeUs = j6;
        this.position = j10;
    }
}
