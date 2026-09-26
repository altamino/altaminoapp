package com.google.android.gms.internal.play_billing;

import com.google.firebase.sessions.settings.c;

/* JADX INFO: loaded from: classes10.dex */
public class zzba {
    private final String zza;
    private final Class zzb;
    private final boolean zzc;

    protected zzba(String str, Class cls, boolean z6) {
        this(str, cls, z6, true);
    }

    public final boolean zzb() {
        return this.zzc;
    }

    private zzba(String str, Class cls, boolean z6, boolean z10) {
        zzda.zzb(str);
        this.zza = str;
        this.zzb = cls;
        this.zzc = z6;
        System.identityHashCode(this);
        for (int i10 = 0; i10 < 5; i10++) {
        }
    }

    public static zzba zza(String str, Class cls) {
        return new zzba(str, cls, false, false);
    }

    public final String toString() {
        Class cls = this.zzb;
        return getClass().getName() + c.FORWARD_SLASH_STRING + this.zza + "[" + cls.getName() + "]";
    }
}
