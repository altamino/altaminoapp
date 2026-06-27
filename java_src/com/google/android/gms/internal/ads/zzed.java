package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
final class zzed {
    static zzdbq zzya;

    static boolean zzb(zzdy zzdyVar) throws IllegalAccessException, GeneralSecurityException, InvocationTargetException {
        Method methodZzc;
        if (zzya != null) {
            return true;
        }
        String str = (String) zzyt.zzpe().zzd(zzacu.zzcrl);
        if (str == null || str.length() == 0) {
            str = (zzdyVar == null || (methodZzc = zzdyVar.zzc("zu6uZ8u7nNJHsIXbotuBCEBd9hieUh9UBKC94dMPsF422AtJb3FisPSqZI3W+06A", "tm6XtP5M5qvCs+TffoCZhF/AF3Fx7Ow8iqgApPbgXSw=")) == null) ? null : (String) methodZzc.invoke(null, new Object[0]);
            if (str == null) {
                return false;
            }
        }
        try {
            zzdbu zzdbuVarZzl = zzdbz.zzl(zzcg.zza(str, true));
            zzdbl.zza(zzddc.zzgpt);
            zzdcf.zza(new zzddg());
            zzya = (zzdbq) zzdcf.zza(zzdcf.zza(zzdbuVarZzl, (zzdbs) null, zzdbq.class));
        } catch (IllegalArgumentException | GeneralSecurityException unused) {
        }
        return zzya != null;
    }
}
