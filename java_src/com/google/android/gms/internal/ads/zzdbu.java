package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzdbu {
    private zzdha zzgph;

    private zzdbu(zzdha zzdhaVar) {
        this.zzgph = zzdhaVar;
    }

    static final zzdbu zza(zzdha zzdhaVar) throws GeneralSecurityException {
        if (zzdhaVar == null || zzdhaVar.zzasj() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzdbu(zzdhaVar);
    }

    final zzdha zzant() {
        return this.zzgph;
    }

    public final String toString() {
        return zzdch.zzc(this.zzgph).toString();
    }
}
