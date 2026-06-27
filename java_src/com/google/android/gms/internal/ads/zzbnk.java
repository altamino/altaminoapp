package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Set;

/* loaded from: classes2.dex */
public class zzbnk {
    private final View view;
    private final zzbgz zzdbs;
    private final zzcxn zzfgx;
    private final zzbpb zzfgy;

    public zzbnk(View view, zzbgz zzbgzVar, zzbpb zzbpbVar, zzcxn zzcxnVar) {
        this.view = view;
        this.zzdbs = zzbgzVar;
        this.zzfgy = zzbpbVar;
        this.zzfgx = zzcxnVar;
    }

    public final zzbgz zzafn() {
        return this.zzdbs;
    }

    public final View zzafi() {
        return this.view;
    }

    public final zzbpb zzafo() {
        return this.zzfgy;
    }

    public final zzcxn zzafp() {
        return this.zzfgx;
    }

    public zzbso zza(Set<zzbuz<zzbsr>> set) {
        return new zzbso(set);
    }
}
