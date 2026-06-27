package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zzhm {
    public int flags;
    public int size;
    public long zzaga;
    public ByteBuffer zzde;
    public final zzgb zzafz = new zzgb();
    private final int zzagb = 0;

    public zzhm(int i) {
    }

    public final boolean zzeo() {
        return (this.flags & 2) != 0;
    }

    public final boolean zzep() {
        return (this.flags & 1) != 0;
    }
}
