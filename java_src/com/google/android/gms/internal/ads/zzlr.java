package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public abstract class zzlr {
    public static final zzlr zzaum = new zzls();

    public abstract zzlt zza(int i, zzlt zzltVar, boolean z);

    public abstract zzlu zza(int i, zzlu zzluVar, boolean z, long j);

    public abstract int zzc(Object obj);

    public abstract int zzhf();

    public abstract int zzhg();

    public final boolean isEmpty() {
        return zzhf() == 0;
    }

    public final zzlu zza(int i, zzlu zzluVar, boolean z) {
        return zza(i, zzluVar, false, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(int r3, com.google.android.gms.internal.ads.zzlt r4, com.google.android.gms.internal.ads.zzlu r5, int r6) {
        /*
            r2 = this;
            r0 = 0
            r2.zza(r3, r4, r0)
            r2.zza(r0, r5, r0)
            r4 = 1
            if (r3 != 0) goto L31
            r3 = -1
            if (r6 == 0) goto L22
            if (r6 == r4) goto L20
            r1 = 2
            if (r6 != r1) goto L1a
            int r6 = r2.zzhf()
            int r6 = r6 - r4
            if (r6 != 0) goto L2a
            goto L20
        L1a:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            r3.<init>()
            throw r3
        L20:
            r4 = 0
            goto L2a
        L22:
            int r6 = r2.zzhf()
            int r6 = r6 - r4
            if (r6 != 0) goto L2a
            r4 = -1
        L2a:
            if (r4 != r3) goto L2d
            return r3
        L2d:
            r2.zza(r4, r5, r0)
            return r0
        L31:
            int r3 = r3 + r4
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlr.zza(int, com.google.android.gms.internal.ads.zzlt, com.google.android.gms.internal.ads.zzlu, int):int");
    }
}
