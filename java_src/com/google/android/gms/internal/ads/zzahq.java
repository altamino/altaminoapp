package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzahq implements zzaho<Object> {
    private final Context zzlj;

    public zzahq(Context context) {
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final void zza(Object obj, Map<String, String> map) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (com.google.android.gms.ads.internal.zzk.zzme().zzx(this.zzlj)) {
            String str = map.get("eventName");
            String str2 = map.get("eventId");
            char c = 65535;
            int iHashCode = str.hashCode();
            if (iHashCode != 94399) {
                if (iHashCode != 94401) {
                    if (iHashCode == 94407 && str.equals("_ai")) {
                        c = 1;
                    }
                } else if (str.equals("_ac")) {
                    c = 0;
                }
            } else if (str.equals("_aa")) {
                c = 2;
            }
            if (c == 0) {
                com.google.android.gms.ads.internal.zzk.zzme().zzg(this.zzlj, str2);
                return;
            }
            if (c == 1) {
                com.google.android.gms.ads.internal.zzk.zzme().zzh(this.zzlj, str2);
            } else if (c == 2) {
                com.google.android.gms.ads.internal.zzk.zzme().zzj(this.zzlj, str2);
            } else {
                zzbad.zzen("logScionEvent gmsg contained unsupported eventName");
            }
        }
    }
}
