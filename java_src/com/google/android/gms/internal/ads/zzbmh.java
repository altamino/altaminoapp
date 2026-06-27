package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzbmh implements zzaho<Object> {
    final /* synthetic */ zzbmg zzffm;

    zzbmh(zzbmg zzbmgVar) {
        this.zzffm = zzbmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzffm.zzl(map)) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvs)).booleanValue()) {
                this.zzffm.zzffi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbmi
                    private final zzbmh zzffn;

                    {
                        this.zzffn = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzffn.zzffm.zzffj.zzafd();
                    }
                });
            } else {
                this.zzffm.zzffj.zzafd();
            }
        }
    }
}
