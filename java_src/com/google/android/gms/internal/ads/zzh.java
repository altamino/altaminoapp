package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzh implements zzac {
    private int zzr;
    private int zzs;
    private final int zzt;
    private final float zzu;

    public zzh() {
        this(2500, 1, 1.0f);
    }

    private zzh(int i, int i2, float f) {
        this.zzr = 2500;
        this.zzt = 1;
        this.zzu = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzac
    public final int zzb() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzac
    public final int zzc() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzac
    public final void zza(zzaf zzafVar) throws zzaf {
        this.zzs++;
        int i = this.zzr;
        this.zzr = i + ((int) (i * this.zzu));
        if (!(this.zzs <= this.zzt)) {
            throw zzafVar;
        }
    }
}
