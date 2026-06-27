package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcbp {
    private final Executor zzffv;
    private final zzbva zzfmv;
    private final zzbmy zzfry;

    zzcbp(Executor executor, zzbmy zzbmyVar, zzbva zzbvaVar) {
        this.zzffv = executor;
        this.zzfmv = zzbvaVar;
        this.zzfry = zzbmyVar;
    }

    public final void zzk(final zzbgz zzbgzVar) {
        if (zzbgzVar == null) {
            return;
        }
        this.zzfmv.zzq(zzbgzVar.getView());
        this.zzfmv.zza(new zzue(zzbgzVar) { // from class: com.google.android.gms.internal.ads.zzcbq
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzue
            public final void zza(zzud zzudVar) {
                zzbii zzbiiVarZzaai = this.zzemf.zzaai();
                Rect rect = zzudVar.zzbtr;
                zzbiiVarZzaai.zza(rect.left, rect.top, false);
            }
        }, this.zzffv);
        this.zzfmv.zza(new zzue(zzbgzVar) { // from class: com.google.android.gms.internal.ads.zzcbr
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzue
            public final void zza(zzud zzudVar) {
                zzbgz zzbgzVar2 = this.zzemf;
                HashMap map = new HashMap();
                map.put("isVisible", zzudVar.zzbtk ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
                zzbgzVar2.zza("onAdVisibilityChanged", map);
            }
        }, this.zzffv);
        this.zzfmv.zza(this.zzfry, this.zzffv);
        this.zzfry.zzg(zzbgzVar);
        zzbgzVar.zza("/trackActiveViewUnit", new zzaho(this) { // from class: com.google.android.gms.internal.ads.zzcbs
            private final zzcbp zzfrz;

            {
                this.zzfrz = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, Map map) {
                this.zzfrz.zzf((zzbgz) obj, map);
            }
        });
        zzbgzVar.zza("/untrackActiveViewUnit", new zzaho(this) { // from class: com.google.android.gms.internal.ads.zzcbt
            private final zzcbp zzfrz;

            {
                this.zzfrz = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, Map map) {
                this.zzfrz.zze((zzbgz) obj, map);
            }
        });
    }

    final /* synthetic */ void zze(zzbgz zzbgzVar, Map map) {
        this.zzfry.disable();
    }

    final /* synthetic */ void zzf(zzbgz zzbgzVar, Map map) {
        this.zzfry.enable();
    }
}
