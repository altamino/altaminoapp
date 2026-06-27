package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

@zzard
/* loaded from: classes2.dex */
public final class zzadj extends zzadm {
    private final com.google.android.gms.ads.internal.zzf zzcxu;
    private final String zzcxv;
    private final String zzcxw;

    public zzadj(com.google.android.gms.ads.internal.zzf zzfVar, String str, String str2) {
        this.zzcxu = zzfVar;
        this.zzcxv = str;
        this.zzcxw = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final String zzqz() {
        return this.zzcxv;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final String getContent() {
        return this.zzcxw;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzo(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return;
        }
        this.zzcxu.zzg((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void recordClick() {
        this.zzcxu.zzky();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void recordImpression() {
        this.zzcxu.zzkz();
    }
}
