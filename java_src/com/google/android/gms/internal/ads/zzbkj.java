package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbkj implements zzbod {
    private zzcyo zzepw;
    private zzbqy zzepx;
    private zzcfp zzepy;
    private zzbpx zzepz;
    private zzbqt zzeqa;
    private zzbtv zzeqb;
    private zzbxk zzeqc;
    private zzcyg zzeqd;
    private final /* synthetic */ zzbkc zzeqe;
    private zzbnc zzezs;
    private zzbox zzezt;
    private zzcow zzezu;

    private zzbkj(zzbkc zzbkcVar) {
        this.zzeqe = zzbkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final zzboc zzads() {
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
        zzdto.zza(this.zzezs, (Class<zzbnc>) zzbnc.class);
        if (this.zzepz == null) {
            this.zzepz = new zzbpx();
        }
        if (this.zzeqa == null) {
            this.zzeqa = new zzbqt();
        }
        zzdto.zza(this.zzezt, (Class<zzbox>) zzbox.class);
        zzdto.zza(this.zzezu, (Class<zzcow>) zzcow.class);
        zzdto.zza(this.zzeqc, (Class<zzbxk>) zzbxk.class);
        return new zzbkk(this.zzeqe, this.zzeqb, this.zzeqd, this.zzepw, this.zzepx, this.zzepy, this.zzezs, this.zzepz, this.zzeqa, this.zzezt, this.zzezu, this.zzeqc);
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final /* synthetic */ zzbod zzb(zzbxk zzbxkVar) {
        this.zzeqc = (zzbxk) zzdto.checkNotNull(zzbxkVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final /* synthetic */ zzbod zza(zzbnc zzbncVar) {
        this.zzezs = (zzbnc) zzdto.checkNotNull(zzbncVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final /* synthetic */ zzbod zza(zzbox zzboxVar) {
        this.zzezt = (zzbox) zzdto.checkNotNull(zzboxVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final /* synthetic */ zzbod zza(zzcow zzcowVar) {
        this.zzezu = (zzcow) zzdto.checkNotNull(zzcowVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final /* synthetic */ zzbod zzb(zzbqy zzbqyVar) {
        this.zzepx = (zzbqy) zzdto.checkNotNull(zzbqyVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final /* synthetic */ zzbod zzb(zzbtv zzbtvVar) {
        this.zzeqb = (zzbtv) zzdto.checkNotNull(zzbtvVar);
        return this;
    }
}
