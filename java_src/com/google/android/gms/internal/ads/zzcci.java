package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcci implements zzaho<Object> {
    private final zzdte<zzccd> zzfnv;
    private final zzccj zzfpz;
    private final zzafo zzfsg;

    public zzcci(zzbzc zzbzcVar, zzbyt zzbytVar, zzccj zzccjVar, zzdte<zzccd> zzdteVar) {
        this.zzfsg = zzbzcVar.zzfo(zzbytVar.getCustomTemplateId());
        this.zzfpz = zzccjVar;
        this.zzfnv = zzdteVar;
    }

    public final void zzaji() {
        if (this.zzfsg == null) {
            return;
        }
        this.zzfpz.zza("/nativeAdCustomClick", this);
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.zzfsg.zza(this.zzfnv.get(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzbad.zzd(sb.toString(), e);
        }
    }
}
