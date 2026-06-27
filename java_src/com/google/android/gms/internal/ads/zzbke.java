package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbke implements zzbxp {
    private zzcyo zzepw;
    private zzbqy zzepx;
    private zzcfp zzepy;
    private zzbpx zzepz;
    private zzbqt zzeqa;
    private zzbtv zzeqb;
    private zzbxk zzeqc;
    private zzcyg zzeqd;
    private final /* synthetic */ zzbkc zzeqe;

    private zzbke(zzbkc zzbkcVar) {
        this.zzeqe = zzbkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final zzbxo zzacy() {
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
        zzdto.zza(this.zzeqb, (Class<zzbtv>) zzbtv.class);
        zzdto.zza(this.zzeqc, (Class<zzbxk>) zzbxk.class);
        if (this.zzeqd == null) {
            this.zzeqd = new zzcyg();
        }
        return new zzbkf(this.zzeqe, this.zzepw, this.zzepx, this.zzepy, this.zzepz, this.zzeqa, this.zzeqb, this.zzeqc, this.zzeqd);
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final /* synthetic */ zzbxp zza(zzbxk zzbxkVar) {
        this.zzeqc = (zzbxk) zzdto.checkNotNull(zzbxkVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final /* synthetic */ zzbxp zza(zzbqy zzbqyVar) {
        this.zzepx = (zzbqy) zzdto.checkNotNull(zzbqyVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final /* synthetic */ zzbxp zza(zzbtv zzbtvVar) {
        this.zzeqb = (zzbtv) zzdto.checkNotNull(zzbtvVar);
        return this;
    }
}
