package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
final class zzahf implements zzaho<zzbgz> {
    zzahf() {
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbgz zzbgzVar, Map map) {
        zzbgz zzbgzVar2 = zzbgzVar;
        com.google.android.gms.ads.internal.overlay.zzd zzdVarZzaae = zzbgzVar2.zzaae();
        if (zzdVarZzaae != null) {
            zzdVarZzaae.close();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzd zzdVarZzaaf = zzbgzVar2.zzaaf();
        if (zzdVarZzaaf != null) {
            zzdVarZzaaf.close();
        } else {
            zzbad.zzep("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
