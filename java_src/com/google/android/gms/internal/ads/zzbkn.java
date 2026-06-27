package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbkn {
    private zzbjn zzeol;
    private zzcye zzfbv;
    private zzbld zzfbw;
    private zzbkw zzfbx;
    private zzdac zzfby;

    private zzbkn() {
    }

    public final zzbjm zzaec() {
        if (this.zzfbv == null) {
            this.zzfbv = new zzcye();
        }
        zzdto.zza(this.zzeol, (Class<zzbjn>) zzbjn.class);
        if (this.zzfbw == null) {
            this.zzfbw = new zzbld();
        }
        zzdto.zza(this.zzfbx, (Class<zzbkw>) zzbkw.class);
        if (this.zzfby == null) {
            this.zzfby = new zzdac();
        }
        return new zzbkc(this.zzfbv, this.zzeol, this.zzfbw, this.zzfbx, this.zzfby);
    }

    public final zzbkn zzc(zzbjn zzbjnVar) {
        this.zzeol = (zzbjn) zzdto.checkNotNull(zzbjnVar);
        return this;
    }

    public final zzbkn zza(zzbkw zzbkwVar) {
        this.zzfbx = (zzbkw) zzdto.checkNotNull(zzbkwVar);
        return this;
    }
}
