package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbnz implements zzdti<zzbuz<zzbto>> {
    private final zzbnk zzfhp;
    private final zzdtu<zzbtb> zzfht;

    public zzbnz(zzbnk zzbnkVar, zzdtu<zzbtb> zzdtuVar) {
        this.zzfhp = zzbnkVar;
        this.zzfht = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        final zzbtb zzbtbVar = this.zzfht.get();
        return (zzbuz) zzdto.zza(new zzbuz(new zzbto(zzbtbVar) { // from class: com.google.android.gms.internal.ads.zzbnm
            private final zzbtb zzfho;

            {
                this.zzfho = zzbtbVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbto
            public final void zzafq() {
                this.zzfho.zzagi();
            }
        }, zzbbm.zzeaf), "Cannot return null from a non-@Nullable @Provides method");
    }
}
