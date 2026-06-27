package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzalw implements zzbbt {
    private final /* synthetic */ zzbbr zzdar;
    private final /* synthetic */ zzakw zzddr;

    zzalw(zzalu zzaluVar, zzbbr zzbbrVar, zzakw zzakwVar) {
        this.zzdar = zzbbrVar;
        this.zzddr = zzakwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbt
    public final void run() {
        this.zzdar.setException(new zzali("Unable to obtain a JavascriptEngine."));
        this.zzddr.release();
    }
}
