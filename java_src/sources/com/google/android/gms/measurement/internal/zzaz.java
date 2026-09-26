package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
public final class zzaz {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final zzbb zze;
    private final String zzf;

    zzaz(zzhf zzhfVar, String str, String str2, String str3, long j6, long j10, Bundle bundle) {
        zzbb zzbbVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.zza = str2;
        this.zzb = str3;
        this.zzf = TextUtils.isEmpty(str) ? null : str;
        this.zzc = j6;
        this.zzd = j10;
        if (j10 != 0 && j10 > j6) {
            zzhfVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId", zzfr.zza(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzbbVar = new zzbb(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzhfVar.zzj().zzg().zza("Param name can't be null");
                    it.remove();
                } else {
                    Object objZzb = zzhfVar.zzt().zzb(next, bundle2.get(next));
                    if (objZzb == null) {
                        zzhfVar.zzj().zzu().zza("Param value can't be null", zzhfVar.zzk().zzb(next));
                        it.remove();
                    } else {
                        zzhfVar.zzt().zza(bundle2, next, objZzb);
                    }
                }
            }
            zzbbVar = new zzbb(bundle2);
        }
        this.zze = zzbbVar;
    }

    public final String toString() {
        return "Event{appId='" + this.zza + "', name='" + this.zzb + "', params=" + String.valueOf(this.zze) + "}";
    }

    final zzaz zza(zzhf zzhfVar, long j6) {
        return new zzaz(zzhfVar, this.zzf, this.zza, this.zzb, this.zzc, j6, this.zze);
    }

    private zzaz(zzhf zzhfVar, String str, String str2, String str3, long j6, long j10, zzbb zzbbVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzbbVar);
        this.zza = str2;
        this.zzb = str3;
        this.zzf = TextUtils.isEmpty(str) ? null : str;
        this.zzc = j6;
        this.zzd = j10;
        if (j10 != 0 && j10 > j6) {
            zzhfVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId, name", zzfr.zza(str2), zzfr.zza(str3));
        }
        this.zze = zzbbVar;
    }
}
