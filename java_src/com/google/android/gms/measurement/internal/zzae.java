package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzae {
    final String name;
    private final String origin;
    final long timestamp;
    final String zzcf;
    final long zzfc;
    final zzag zzfd;

    private zzae(zzby zzbyVar, String str, String str2, String str3, long j, long j2, zzag zzagVar) throws IllegalStateException {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzagVar);
        this.zzcf = str2;
        this.name = str3;
        this.origin = TextUtils.isEmpty(str) ? null : str;
        this.timestamp = j;
        this.zzfc = j2;
        long j3 = this.zzfc;
        if (j3 != 0 && j3 > this.timestamp) {
            zzbyVar.zzad().zzdd().zza("Event created with reverse previous/current timestamps. appId, name", zzau.zzao(str2), zzau.zzao(str3));
        }
        this.zzfd = zzagVar;
    }

    zzae(zzby zzbyVar, String str, String str2, String str3, long j, long j2, Bundle bundle) throws IllegalStateException {
        zzag zzagVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zzcf = str2;
        this.name = str3;
        this.origin = TextUtils.isEmpty(str) ? null : str;
        this.timestamp = j;
        this.zzfc = j2;
        long j3 = this.zzfc;
        if (j3 != 0 && j3 > this.timestamp) {
            zzbyVar.zzad().zzdd().zza("Event created with reverse previous/current timestamps. appId", zzau.zzao(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzbyVar.zzad().zzda().zzaq("Param name can't be null");
                    it.remove();
                } else {
                    Object objZzb = zzbyVar.zzab().zzb(next, bundle2.get(next));
                    if (objZzb == null) {
                        zzbyVar.zzad().zzdd().zza("Param value can't be null", zzbyVar.zzaa().zzam(next));
                        it.remove();
                    } else {
                        zzbyVar.zzab().zza(bundle2, next, objZzb);
                    }
                }
            }
            zzagVar = new zzag(bundle2);
        } else {
            zzagVar = new zzag(new Bundle());
        }
        this.zzfd = zzagVar;
    }

    final zzae zza(zzby zzbyVar, long j) {
        return new zzae(zzbyVar, this.origin, this.zzcf, this.name, this.timestamp, j, this.zzfd);
    }

    public final String toString() {
        String str = this.zzcf;
        String str2 = this.name;
        String strValueOf = String.valueOf(this.zzfd);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(strValueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(strValueOf);
        sb.append('}');
        return sb.toString();
    }
}
