package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzald implements zzbbv<zzajw> {
    final /* synthetic */ zzala zzdcz;

    zzald(zzala zzalaVar) {
        this.zzdcz = zzalaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbv
    public final /* synthetic */ void zzh(zzajw zzajwVar) {
        final zzajw zzajwVar2 = zzajwVar;
        zzbbm.zzeae.execute(new Runnable(this, zzajwVar2) { // from class: com.google.android.gms.internal.ads.zzale
            private final zzald zzdda;
            private final zzajw zzddb;

            {
                this.zzdda = this;
                this.zzddb = zzajwVar2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzald zzaldVar = this.zzdda;
                zzajw zzajwVar3 = this.zzddb;
                zzaldVar.zzdcz.zzdcc.zzh(zzajwVar3);
                zzajwVar3.destroy();
            }
        });
    }
}
