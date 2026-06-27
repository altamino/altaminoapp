package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzahx implements zzaho<Object> {
    private final zzahy zzdas;

    public static void zza(zzbgz zzbgzVar, zzahy zzahyVar) {
        zzbgzVar.zza("/reward", new zzahx(zzahyVar));
    }

    private zzahx(zzahy zzahyVar) {
        this.zzdas = zzahyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) throws NumberFormatException {
        String str = map.get("action");
        if ("grant".equals(str)) {
            zzato zzatoVar = null;
            try {
                int i = Integer.parseInt(map.get("amount"));
                String str2 = map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzatoVar = new zzato(str2, i);
                }
            } catch (NumberFormatException e) {
                zzbad.zzd("Unable to parse reward amount.", e);
            }
            this.zzdas.zza(zzatoVar);
            return;
        }
        if ("video_start".equals(str)) {
            this.zzdas.zzrq();
        } else if ("video_complete".equals(str)) {
            this.zzdas.zzrr();
        }
    }
}
