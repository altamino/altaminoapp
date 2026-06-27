package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final /* synthetic */ class zzckd implements zzbpb {
    private final zzbgz zzemf;

    private zzckd(zzbgz zzbgzVar) {
        this.zzemf = zzbgzVar;
    }

    static zzbpb zzn(zzbgz zzbgzVar) {
        return new zzckd(zzbgzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpb
    public final zzaar getVideoController() {
        return this.zzemf.zzyb();
    }
}
