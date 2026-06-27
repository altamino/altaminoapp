package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public class zzbvz {
    private final zzbgz zzdbs;
    private final zzbwz zzflm;

    public zzbvz(zzbwz zzbwzVar) {
        this(zzbwzVar, null);
    }

    public zzbvz(zzbwz zzbwzVar, zzbgz zzbgzVar) {
        this.zzflm = zzbwzVar;
        this.zzdbs = zzbgzVar;
    }

    public final zzbwz zzaha() {
        return this.zzflm;
    }

    public final zzbgz zzafn() {
        return this.zzdbs;
    }

    public final View zzahb() {
        zzbgz zzbgzVar = this.zzdbs;
        if (zzbgzVar == null) {
            return null;
        }
        return zzbgzVar.getWebView();
    }

    public Set<zzbuz<zzbrl>> zza(zzbxc zzbxcVar) {
        return Collections.singleton(zzbuz.zzb(zzbxcVar, zzbbm.zzeaf));
    }

    final /* synthetic */ void zzahc() {
        if (this.zzdbs.zzaae() != null) {
            this.zzdbs.zzaae().close();
        }
    }
}
