package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbkr implements zzcdg {
    private zzcyo zzepw;
    private zzbqy zzepx;
    private zzcfp zzepy;
    private zzbpx zzepz;
    private zzbqt zzeqa;
    private zzbtv zzeqb;
    private zzcyg zzeqd;
    private final /* synthetic */ zzbkc zzeqe;

    private zzbkr(zzbkc zzbkcVar) {
        this.zzeqe = zzbkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdg
    public final zzcdf zzaeh() {
        zzdto.zza(this.zzeqb, (Class<zzbtv>) zzbtv.class);
        if (this.zzeqd == null) {
            this.zzeqd = new zzcyg();
        }
        if (this.zzepw == null) {
            this.zzepw = new zzcyo();
        }
        zzdto.zza(this.zzepx, (Class<zzbqy>) zzbqy.class);
        if (this.zzepy == null) {
            this.zzepy = new zzcfp();
        }
        if (this.zzepz == null) {
            this.zzepz = new zzbpx();
        }
        if (this.zzeqa == null) {
            this.zzeqa = new zzbqt();
        }
        return new zzbks(this.zzeqe, this.zzeqb, this.zzeqd, this.zzepw, this.zzepx, this.zzepy, this.zzepz, this.zzeqa);
    }

    @Override // com.google.android.gms.internal.ads.zzcdg
    public final /* synthetic */ zzcdg zzd(zzbqy zzbqyVar) {
        this.zzepx = (zzbqy) zzdto.checkNotNull(zzbqyVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcdg
    public final /* synthetic */ zzcdg zzd(zzbtv zzbtvVar) {
        this.zzeqb = (zzbtv) zzdto.checkNotNull(zzbtvVar);
        return this;
    }
}
