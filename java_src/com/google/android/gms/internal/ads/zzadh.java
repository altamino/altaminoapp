package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzadh {
    private final Map<String, zzadg> zzcxo = new HashMap();
    private final zzadi zzcxp;

    public zzadh(zzadi zzadiVar) {
        this.zzcxp = zzadiVar;
    }

    public final void zza(String str, zzadg zzadgVar) {
        this.zzcxo.put(str, zzadgVar);
    }

    public final void zza(String str, String str2, long j) {
        zzadi zzadiVar = this.zzcxp;
        zzadg zzadgVar = this.zzcxo.get(str2);
        String[] strArr = {str};
        if (zzadiVar != null && zzadgVar != null) {
            zzadiVar.zza(zzadgVar, j, strArr);
        }
        Map<String, zzadg> map = this.zzcxo;
        zzadi zzadiVar2 = this.zzcxp;
        map.put(str, zzadiVar2 == null ? null : zzadiVar2.zzfa(j));
    }

    public final zzadi zzqw() {
        return this.zzcxp;
    }
}
