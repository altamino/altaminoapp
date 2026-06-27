package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzahr implements zzaho<zzbgz> {
    private static final Map<String, Integer> zzdam = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final com.google.android.gms.ads.internal.zzb zzdaj;
    private final zzapr zzdak;
    private final zzaqc zzdal;

    public zzahr(com.google.android.gms.ads.internal.zzb zzbVar, zzapr zzaprVar, zzaqc zzaqcVar) {
        this.zzdaj = zzbVar;
        this.zzdak = zzaprVar;
        this.zzdal = zzaqcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbgz zzbgzVar, Map map) {
        com.google.android.gms.ads.internal.zzb zzbVar;
        zzbgz zzbgzVar2 = zzbgzVar;
        int iIntValue = zzdam.get((String) map.get("a")).intValue();
        if (iIntValue != 5 && iIntValue != 7 && (zzbVar = this.zzdaj) != null && !zzbVar.zzkx()) {
            this.zzdaj.zzbk(null);
            return;
        }
        if (iIntValue == 1) {
            this.zzdak.zzg(map);
            return;
        }
        if (iIntValue == 3) {
            new zzapu(zzbgzVar2, map).execute();
            return;
        }
        if (iIntValue == 4) {
            new zzapo(zzbgzVar2, map).execute();
            return;
        }
        if (iIntValue == 5) {
            new zzapt(zzbgzVar2, map).execute();
            return;
        }
        if (iIntValue == 6) {
            this.zzdak.zzw(true);
        } else {
            if (iIntValue == 7) {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcmw)).booleanValue()) {
                    this.zzdal.zztd();
                    return;
                }
                return;
            }
            zzbad.zzeo("Unknown MRAID command called.");
        }
    }
}
