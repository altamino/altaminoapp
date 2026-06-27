package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzctk implements zzcuz<Bundle> {
    private final zzcxk zzfex;

    public zzctk(zzcxk zzcxkVar) {
        this.zzfex = zzcxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcxk zzcxkVar = this.zzfex;
        if (zzcxkVar != null) {
            bundle2.putBoolean("render_in_browser", zzcxkVar.zzaml());
            bundle2.putBoolean("disable_ml", this.zzfex.zzamm());
        }
    }
}
