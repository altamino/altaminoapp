package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public abstract class zzdtc {
    public abstract void zzhc(String str);

    public static zzdtc zzm(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new zzdsx(cls.getSimpleName()) : new zzdsz(cls.getSimpleName());
    }
}
