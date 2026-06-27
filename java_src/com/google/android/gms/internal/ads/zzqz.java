package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;

/* loaded from: classes2.dex */
public final class zzqz extends zzlr {
    private static final Object zzbkr = new Object();
    private final boolean zzaus;
    private final boolean zzaut;
    private final long zzbks;
    private final long zzbkt;
    private final long zzbku;
    private final long zzbkv;

    public zzqz(long j, boolean z) {
        this(j, j, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzlr
    public final int zzhf() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzlr
    public final int zzhg() {
        return 1;
    }

    private zzqz(long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.zzbks = j;
        this.zzbkt = j2;
        this.zzbku = 0L;
        this.zzbkv = 0L;
        this.zzaus = z;
        this.zzaut = false;
    }

    @Override // com.google.android.gms.internal.ads.zzlr
    public final zzlu zza(int i, zzlu zzluVar, boolean z, long j) {
        zzsk.zzc(i, 0, 1);
        boolean z2 = this.zzaus;
        long j2 = this.zzbkt;
        zzluVar.zzaun = null;
        zzluVar.zzauq = C.TIME_UNSET;
        zzluVar.zzaur = C.TIME_UNSET;
        zzluVar.zzaus = z2;
        zzluVar.zzaut = false;
        zzluVar.zzauw = 0L;
        zzluVar.zzack = j2;
        zzluVar.zzauu = 0;
        zzluVar.zzauv = 0;
        zzluVar.zzaux = 0L;
        return zzluVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlr
    public final zzlt zza(int i, zzlt zzltVar, boolean z) {
        zzsk.zzc(i, 0, 1);
        Object obj = z ? zzbkr : null;
        return zzltVar.zza(obj, obj, 0, this.zzbks, 0L, false);
    }

    @Override // com.google.android.gms.internal.ads.zzlr
    public final int zzc(Object obj) {
        return zzbkr.equals(obj) ? 0 : -1;
    }
}
