package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
public final class zzaw {
    private final int priority;
    private final /* synthetic */ zzau zzkf;
    private final boolean zzkg;
    private final boolean zzkh;

    zzaw(zzau zzauVar, int i, boolean z, boolean z2) {
        this.zzkf = zzauVar;
        this.priority = i;
        this.zzkg = z;
        this.zzkh = z2;
    }

    public final void zzaq(String str) throws IllegalStateException {
        this.zzkf.zza(this.priority, this.zzkg, this.zzkh, str, null, null, null);
    }

    public final void zza(String str, Object obj) throws IllegalStateException {
        this.zzkf.zza(this.priority, this.zzkg, this.zzkh, str, obj, null, null);
    }

    public final void zza(String str, Object obj, Object obj2) throws IllegalStateException {
        this.zzkf.zza(this.priority, this.zzkg, this.zzkh, str, obj, obj2, null);
    }

    public final void zza(String str, Object obj, Object obj2, Object obj3) throws IllegalStateException {
        this.zzkf.zza(this.priority, this.zzkg, this.zzkh, str, obj, obj2, obj3);
    }
}
