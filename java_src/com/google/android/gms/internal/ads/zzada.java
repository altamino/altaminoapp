package com.google.android.gms.internal.ads;

import android.text.TextUtils;

@zzard
/* loaded from: classes2.dex */
public final class zzada {
    public static void zza(zzacy zzacyVar, zzacx zzacxVar) {
        if (zzacxVar.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(zzacxVar.zzmg())) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        zzacyVar.zza(zzacxVar.getContext(), zzacxVar.zzmg(), zzacxVar.zzqr(), zzacxVar.zzqs());
    }
}
