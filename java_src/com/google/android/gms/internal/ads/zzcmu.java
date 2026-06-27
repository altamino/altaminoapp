package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzcmu {
    private final Clock zzbsa;
    private final List<String> zzgbg = Collections.synchronizedList(new ArrayList());

    public zzcmu(Clock clock) {
        this.zzbsa = clock;
    }

    public final <T> zzbbh<T> zza(zzcxm zzcxmVar, zzbbh<T> zzbbhVar) {
        long jElapsedRealtime = this.zzbsa.elapsedRealtime();
        String str = zzcxmVar.zzdej;
        if (str != null) {
            zzbar.zza(zzbbhVar, new zzcmv(this, str, jElapsedRealtime), zzbbm.zzeaf);
        }
        return zzbbhVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, int i, long j) {
        List<String> list = this.zzgbg;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        list.add(sb.toString());
    }

    public final String zzaku() {
        return TextUtils.join("_", this.zzgbg);
    }
}
