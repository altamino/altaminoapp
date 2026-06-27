package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbku implements zzcqp {
    private zzcyo zzepw;
    private zzbqy zzepx;
    private zzcfp zzepy;
    private final /* synthetic */ zzbkc zzeqe;
    private zzcqt zzfdv;

    private zzbku(zzbkc zzbkcVar) {
        this.zzeqe = zzbkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqp
    public final zzcqo zzaem() {
        if (this.zzepw == null) {
            this.zzepw = new zzcyo();
        }
        zzdto.zza(this.zzepx, (Class<zzbqy>) zzbqy.class);
        zzdto.zza(this.zzfdv, (Class<zzcqt>) zzcqt.class);
        if (this.zzepy == null) {
            this.zzepy = new zzcfp();
        }
        return new zzbkv(this.zzeqe, this.zzepw, this.zzepx, this.zzfdv, this.zzepy);
    }

    @Override // com.google.android.gms.internal.ads.zzcqp
    public final /* synthetic */ zzcqp zza(zzcqt zzcqtVar) {
        this.zzfdv = (zzcqt) zzdto.checkNotNull(zzcqtVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqp
    public final /* synthetic */ zzcqp zze(zzbqy zzbqyVar) {
        this.zzepx = (zzbqy) zzdto.checkNotNull(zzbqyVar);
        return this;
    }
}
