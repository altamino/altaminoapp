package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbko implements zzbwt {
    private zzcyo zzepw;
    private zzbqy zzepx;
    private zzcfp zzepy;
    private zzbpx zzepz;
    private zzbqt zzeqa;
    private zzbtv zzeqb;
    private zzcyg zzeqd;
    private final /* synthetic */ zzbkc zzeqe;
    private zzcow zzezu;

    private zzbko(zzbkc zzbkcVar) {
        this.zzeqe = zzbkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final zzbws zzaed() {
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
        zzdto.zza(this.zzezu, (Class<zzcow>) zzcow.class);
        return new zzbkp(this.zzeqe, this.zzeqb, this.zzeqd, this.zzepw, this.zzepx, this.zzepy, this.zzepz, this.zzeqa, this.zzezu);
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final /* synthetic */ zzbwt zzb(zzcow zzcowVar) {
        this.zzezu = (zzcow) zzdto.checkNotNull(zzcowVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final /* synthetic */ zzbwt zzc(zzbqy zzbqyVar) {
        this.zzepx = (zzbqy) zzdto.checkNotNull(zzbqyVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final /* synthetic */ zzbwt zzc(zzbtv zzbtvVar) {
        this.zzeqb = (zzbtv) zzdto.checkNotNull(zzbtvVar);
        return this;
    }
}
