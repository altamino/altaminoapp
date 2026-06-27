package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcyk {
    private final zzbai zzbrc;
    private final zzawm zzbrw;
    private final Map<String, zzcym> zzglr = new HashMap();
    private final zzdh zzgls;
    private final Context zzys;

    public zzcyk(Context context, zzbai zzbaiVar, zzawm zzawmVar) {
        this.zzys = context;
        this.zzbrc = zzbaiVar;
        this.zzbrw = zzawmVar;
        this.zzgls = new zzdh(new com.google.android.gms.ads.internal.zzg(context, zzbaiVar));
    }

    public final zzcym zzfw(String str) {
        if (str == null) {
            return zzamt();
        }
        if (this.zzglr.containsKey(str)) {
            return this.zzglr.get(str);
        }
        zzcym zzcymVarZzfx = zzfx(str);
        this.zzglr.put(str, zzcymVarZzfx);
        return zzcymVarZzfx;
    }

    private final zzcym zzamt() {
        return new zzcym(this.zzys, this.zzbrw.zzvc(), this.zzbrw.zzve(), this.zzgls);
    }

    private final zzcym zzfx(String str) {
        zzasq zzasqVarZzv = zzasq.zzv(this.zzys);
        try {
            zzasqVarZzv.setAppPackageName(str);
            zzaxc zzaxcVar = new zzaxc();
            zzaxcVar.zza(this.zzys, str, false);
            zzaxf zzaxfVar = new zzaxf(this.zzbrw.zzvc(), zzaxcVar);
            return new zzcym(zzasqVarZzv, zzaxfVar, new zzawu(zzazt.zzwz(), zzaxfVar), new zzdh(new com.google.android.gms.ads.internal.zzg(this.zzys, this.zzbrc)));
        } catch (PackageManager.NameNotFoundException unused) {
            return zzamt();
        }
    }
}
