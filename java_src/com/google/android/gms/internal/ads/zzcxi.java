package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcxi implements Callable {
    static final Callable zzghi = new zzcxi();

    private zzcxi() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        HashMap map = new HashMap();
        String str = (String) zzyt.zzpe().zzd(zzacu.zzcmk);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzyt.zzpe().zzd(zzacu.zzcml)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    map.put(str2, zzazr.zzeh(str2));
                }
            }
        }
        return new zzcxg(map);
    }
}
