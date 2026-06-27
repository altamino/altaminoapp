package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbmg {
    private final String zzbsw;
    private final zzaly zzffh;
    private final Executor zzffi;
    private zzbmn zzffj;
    private final zzaho<Object> zzffk = new zzbmh(this);
    private final zzaho<Object> zzffl = new zzbmj(this);

    public zzbmg(String str, zzaly zzalyVar, Executor executor) {
        this.zzbsw = str;
        this.zzffh = zzalyVar;
        this.zzffi = executor;
    }

    public final void zza(zzbmn zzbmnVar) {
        this.zzffh.zzc("/updateActiveView", this.zzffk);
        this.zzffh.zzc("/untrackActiveViewUnit", this.zzffl);
        this.zzffj = zzbmnVar;
    }

    public final void zzd(zzbgz zzbgzVar) {
        zzbgzVar.zza("/updateActiveView", this.zzffk);
        zzbgzVar.zza("/untrackActiveViewUnit", this.zzffl);
    }

    public final void zze(zzbgz zzbgzVar) {
        zzbgzVar.zzb("/updateActiveView", this.zzffk);
        zzbgzVar.zzb("/untrackActiveViewUnit", this.zzffl);
    }

    public final void zzafc() {
        this.zzffh.zzd("/updateActiveView", this.zzffk);
        this.zzffh.zzd("/untrackActiveViewUnit", this.zzffl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzl(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.zzbsw);
    }
}
