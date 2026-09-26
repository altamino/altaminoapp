package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class zzx {
    private com.google.android.gms.internal.measurement.zzfi.zze zza;
    private Long zzb;
    private long zzc;
    private final /* synthetic */ zzt zzd;

    private zzx(zzt zztVar) {
        this.zzd = zztVar;
    }

    final com.google.android.gms.internal.measurement.zzfi.zze zza(String str, com.google.android.gms.internal.measurement.zzfi.zze zzeVar) {
        boolean z6;
        Object obj;
        String strZzg = zzeVar.zzg();
        List<com.google.android.gms.internal.measurement.zzfi.zzg> listZzh = zzeVar.zzh();
        this.zzd.g_();
        Long l = (Long) zzmz.zzb(zzeVar, "_eid");
        if (l != null) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6 && strZzg.equals("_ep")) {
            Preconditions.checkNotNull(l);
            this.zzd.g_();
            strZzg = (String) zzmz.zzb(zzeVar, "_en");
            if (TextUtils.isEmpty(strZzg)) {
                this.zzd.zzj().zzm().zza("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.zza == null || this.zzb == null || l.longValue() != this.zzb.longValue()) {
                Pair<com.google.android.gms.internal.measurement.zzfi.zze, Long> pairZza = this.zzd.zzh().zza(str, l);
                if (pairZza != null && (obj = pairZza.first) != null) {
                    this.zza = (com.google.android.gms.internal.measurement.zzfi.zze) obj;
                    this.zzc = ((Long) pairZza.second).longValue();
                    this.zzd.g_();
                    this.zzb = (Long) zzmz.zzb(this.zza, "_eid");
                } else {
                    this.zzd.zzj().zzm().zza("Extra parameter without existing main event. eventName, eventId", strZzg, l);
                    return null;
                }
            }
            long j6 = this.zzc - 1;
            this.zzc = j6;
            if (j6 <= 0) {
                zzao zzaoVarZzh = this.zzd.zzh();
                zzaoVarZzh.zzt();
                zzaoVarZzh.zzj().zzp().zza("Clearing complex main event info. appId", str);
                try {
                    zzaoVarZzh.e_().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e) {
                    zzaoVarZzh.zzj().zzg().zza("Error clearing complex main event", e);
                }
            } else {
                this.zzd.zzh().zza(str, l, this.zzc, this.zza);
            }
            ArrayList arrayList = new ArrayList();
            for (com.google.android.gms.internal.measurement.zzfi.zzg zzgVar : this.zza.zzh()) {
                this.zzd.g_();
                if (zzmz.zza(zzeVar, zzgVar.zzg()) == null) {
                    arrayList.add(zzgVar);
                }
            }
            if (!arrayList.isEmpty()) {
                arrayList.addAll(listZzh);
                listZzh = arrayList;
            } else {
                this.zzd.zzj().zzm().zza("No unique parameters in main event. eventName", strZzg);
            }
        } else if (z6) {
            this.zzb = l;
            this.zza = zzeVar;
            this.zzd.g_();
            Object obj2 = 0L;
            Object objZzb = zzmz.zzb(zzeVar, "_epc");
            if (objZzb != null) {
                obj2 = objZzb;
            }
            long jLongValue = ((Long) obj2).longValue();
            this.zzc = jLongValue;
            if (jLongValue <= 0) {
                this.zzd.zzj().zzm().zza("Complex event with zero extra param count. eventName", strZzg);
            } else {
                this.zzd.zzh().zza(str, (Long) Preconditions.checkNotNull(l), this.zzc, zzeVar);
            }
        }
        return (com.google.android.gms.internal.measurement.zzfi.zze) ((com.google.android.gms.internal.measurement.zzix) zzeVar.zzby().zza(strZzg).zzd().zza(listZzh).zzab());
    }
}
