package com.google.android.gms.internal.measurement;

import com.google.common.base.o;

/* JADX INFO: loaded from: classes7.dex */
public final class zzgy {
    private final boolean zza;

    public final boolean zza(String str) {
        o.l(str, "flagName must not be null");
        if (this.zza) {
            return zzha.zza.get().d(str);
        }
        return true;
    }

    public zzgy(zzhb zzhbVar) {
        o.l(zzhbVar, "BuildInfo must be non-null");
        this.zza = !zzhbVar.zza();
    }
}
