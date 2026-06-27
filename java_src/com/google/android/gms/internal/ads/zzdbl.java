package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdgy;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzdbl {
    public static zzdgy zza(String str, String str2, String str3, int i, boolean z) {
        zzdgy.zza zzaVarZzgn = zzdgy.zzasf().zzgn(str2);
        String strValueOf = String.valueOf(str3);
        return (zzdgy) zzaVarZzgn.zzgo(strValueOf.length() != 0 ? "type.googleapis.com/google.crypto.tink.".concat(strValueOf) : new String("type.googleapis.com/google.crypto.tink.")).zzeq(0).zzbe(true).zzgp(str).zzaya();
    }

    public static void zza(zzdho zzdhoVar) throws GeneralSecurityException {
        for (zzdgy zzdgyVar : zzdhoVar.zzatj()) {
            if (zzdgyVar.zzart().isEmpty()) {
                throw new GeneralSecurityException("Missing type_url.");
            }
            if (zzdgyVar.zzasb().isEmpty()) {
                throw new GeneralSecurityException("Missing primitive_name.");
            }
            if (zzdgyVar.zzase().isEmpty()) {
                throw new GeneralSecurityException("Missing catalogue_name.");
            }
            zzdbk<?> zzdbkVarZzgi = zzdcf.zzgi(zzdgyVar.zzase());
            zzdcf.zza(zzdbkVarZzgi.zzanp());
            zzdcf.zza(zzdbkVarZzgi.zzb(zzdgyVar.zzart(), zzdgyVar.zzasb(), zzdgyVar.zzasc()), zzdgyVar.zzasd());
        }
    }
}
