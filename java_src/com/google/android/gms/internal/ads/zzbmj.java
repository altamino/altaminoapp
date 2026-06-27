package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzbmj implements zzaho<Object> {
    final /* synthetic */ zzbmg zzffm;

    zzbmj(zzbmg zzbmgVar) {
        this.zzffm = zzbmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzffm.zzl(map)) {
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvs)).booleanValue()) {
                this.zzffm.zzffi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbmk
                    private final zzbmj zzffo;

                    {
                        this.zzffo = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzffo.zzffm.zzffj.zzaff();
                    }
                });
            } else {
                this.zzffm.zzffj.zzaff();
            }
        }
    }
}
