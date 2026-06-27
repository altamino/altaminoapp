package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbho implements zzaho<zzbgz> {
    private final /* synthetic */ zzbhm zzelu;

    zzbho(zzbhm zzbhmVar) {
        this.zzelu = zzbhmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbgz zzbgzVar, Map map) throws NumberFormatException {
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int i = Integer.parseInt(str);
                synchronized (this.zzelu) {
                    if (this.zzelu.zzelk != i) {
                        this.zzelu.zzelk = i;
                        this.zzelu.requestLayout();
                    }
                }
            } catch (Exception e) {
                zzbad.zzd("Exception occurred while getting webview content height", e);
            }
        }
    }
}
