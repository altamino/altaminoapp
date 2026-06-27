package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzadi {
    private zzadi zzcxt;
    private final List<zzadg> zzcxr = new LinkedList();
    private final Map<String, String> zzcxs = new LinkedHashMap();
    private final Object lock = new Object();

    @VisibleForTesting
    boolean zzcxq = true;

    public zzadi(boolean z, String str, String str2) {
        this.zzcxs.put("action", str);
        this.zzcxs.put("ad_format", str2);
    }

    public final void zzc(zzadi zzadiVar) {
        synchronized (this.lock) {
            this.zzcxt = zzadiVar;
        }
    }

    public final zzadg zzfa(long j) {
        if (this.zzcxq) {
            return new zzadg(j, null, null);
        }
        return null;
    }

    public final boolean zza(zzadg zzadgVar, long j, String... strArr) {
        synchronized (this.lock) {
            for (String str : strArr) {
                this.zzcxr.add(new zzadg(j, str, zzadgVar));
            }
        }
        return true;
    }

    public final String zzqx() {
        String string;
        StringBuilder sb = new StringBuilder();
        synchronized (this.lock) {
            for (zzadg zzadgVar : this.zzcxr) {
                long time = zzadgVar.getTime();
                String strZzqu = zzadgVar.zzqu();
                zzadg zzadgVarZzqv = zzadgVar.zzqv();
                if (zzadgVarZzqv != null && time > 0) {
                    long time2 = time - zzadgVarZzqv.getTime();
                    sb.append(strZzqu);
                    sb.append('.');
                    sb.append(time2);
                    sb.append(',');
                }
            }
            this.zzcxr.clear();
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            string = sb.toString();
        }
        return string;
    }

    public final void zzh(String str, String str2) {
        zzacy zzacyVarZzuw;
        if (!this.zzcxq || TextUtils.isEmpty(str2) || (zzacyVarZzuw = com.google.android.gms.ads.internal.zzk.zzlk().zzuw()) == null) {
            return;
        }
        synchronized (this.lock) {
            zzadc zzadcVarZzch = zzacyVarZzuw.zzch(str);
            Map<String, String> map = this.zzcxs;
            map.put(str, zzadcVarZzch.zzg(map.get(str), str2));
        }
    }

    @VisibleForTesting
    final Map<String, String> zzqy() {
        synchronized (this.lock) {
            zzacy zzacyVarZzuw = com.google.android.gms.ads.internal.zzk.zzlk().zzuw();
            if (zzacyVarZzuw != null && this.zzcxt != null) {
                return zzacyVarZzuw.zza(this.zzcxs, this.zzcxt.zzqy());
            }
            return this.zzcxs;
        }
    }
}
