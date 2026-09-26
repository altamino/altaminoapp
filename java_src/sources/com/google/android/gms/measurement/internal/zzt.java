package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzob;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
final class zzt extends zzmo {
    private String zza;
    private Set<Integer> zzb;
    private Map<Integer, zzv> zzc;
    private Long zzd;
    private Long zze;

    private final zzv zza(Integer num) {
        if (this.zzc.containsKey(num)) {
            return this.zzc.get(num);
        }
        zzv zzvVar = new zzv(this, this.zza);
        this.zzc.put(num, zzvVar);
        return zzvVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzmo
    protected final boolean zzc() {
        return false;
    }

    zzt(zzmp zzmpVar) {
        super(zzmpVar);
    }

    @WorkerThread
    final List<com.google.android.gms.internal.measurement.zzfi.zzc> zza(String str, List<com.google.android.gms.internal.measurement.zzfi.zze> list, List<com.google.android.gms.internal.measurement.zzfi.zzn> list2, Long l, Long l6) {
        boolean z6;
        zzbc zzbcVar;
        zzx zzxVar;
        Map<Integer, com.google.android.gms.internal.measurement.zzfi.zzl> map;
        List<com.google.android.gms.internal.measurement.zzew.zzb> list3;
        Map<Integer, com.google.android.gms.internal.measurement.zzfi.zzl> map2;
        Map<Integer, List<Integer>> map3;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.zza = str;
        this.zzb = new HashSet();
        this.zzc = new ArrayMap();
        this.zzd = l;
        this.zze = l6;
        Iterator<com.google.android.gms.internal.measurement.zzfi.zze> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z6 = false;
                break;
            }
            if ("_s".equals(it.next().zzg())) {
                z6 = true;
                break;
            }
        }
        boolean z10 = zzob.zza() && zze().zzf(this.zza, zzbi.zzbg);
        boolean z11 = zzob.zza() && zze().zzf(this.zza, zzbi.zzbf);
        if (z6) {
            zzao zzaoVarZzh = zzh();
            String str2 = this.zza;
            zzaoVarZzh.zzak();
            zzaoVarZzh.zzt();
            Preconditions.checkNotEmpty(str2);
            ContentValues contentValues = new ContentValues();
            contentValues.put("current_session_count", (Integer) 0);
            try {
                zzaoVarZzh.e_().update("events", contentValues, "app_id = ?", new String[]{str2});
            } catch (SQLiteException e) {
                zzaoVarZzh.zzj().zzg().zza("Error resetting session-scoped event counts. appId", zzfr.zza(str2), e);
            }
        }
        Map<Integer, List<com.google.android.gms.internal.measurement.zzew.zzb>> mapEmptyMap = Collections.emptyMap();
        if (z11 && z10) {
            mapEmptyMap = zzh().zzk(this.zza);
        }
        Map<Integer, com.google.android.gms.internal.measurement.zzfi.zzl> mapZzj = zzh().zzj(this.zza);
        if (!mapZzj.isEmpty()) {
            HashSet hashSet = new HashSet(mapZzj.keySet());
            if (z6) {
                String str3 = this.zza;
                Map<Integer, List<Integer>> mapZzl = zzh().zzl(this.zza);
                Preconditions.checkNotEmpty(str3);
                Preconditions.checkNotNull(mapZzj);
                ArrayMap arrayMap = new ArrayMap();
                if (!mapZzj.isEmpty()) {
                    Iterator<Integer> it2 = mapZzj.keySet().iterator();
                    while (it2.hasNext()) {
                        int iIntValue = it2.next().intValue();
                        com.google.android.gms.internal.measurement.zzfi.zzl zzlVar = mapZzj.get(Integer.valueOf(iIntValue));
                        List<Integer> list4 = mapZzl.get(Integer.valueOf(iIntValue));
                        if (list4 != null && !list4.isEmpty()) {
                            List<Long> listZza = g_().zza(zzlVar.zzi(), list4);
                            if (!listZza.isEmpty()) {
                                com.google.android.gms.internal.measurement.zzfi.zzl.zza zzaVarZzb = zzlVar.zzby().zzb().zzb(listZza);
                                zzaVarZzb.zzd().zzd(g_().zza(zzlVar.zzk(), list4));
                                ArrayList arrayList = new ArrayList();
                                for (com.google.android.gms.internal.measurement.zzfi.zzd zzdVar : zzlVar.zzh()) {
                                    Map<Integer, List<Integer>> map4 = mapZzl;
                                    if (!list4.contains(Integer.valueOf(zzdVar.zza()))) {
                                        arrayList.add(zzdVar);
                                    }
                                    mapZzl = map4;
                                }
                                map3 = mapZzl;
                                zzaVarZzb.zza().zza(arrayList);
                                ArrayList arrayList2 = new ArrayList();
                                for (com.google.android.gms.internal.measurement.zzfi.zzm zzmVar : zzlVar.zzj()) {
                                    if (!list4.contains(Integer.valueOf(zzmVar.zzb()))) {
                                        arrayList2.add(zzmVar);
                                    }
                                }
                                zzaVarZzb.zzc().zzc(arrayList2);
                                arrayMap.put(Integer.valueOf(iIntValue), (com.google.android.gms.internal.measurement.zzfi.zzl) ((com.google.android.gms.internal.measurement.zzix) zzaVarZzb.zzab()));
                                mapZzl = map3;
                            }
                        } else {
                            map3 = mapZzl;
                            arrayMap.put(Integer.valueOf(iIntValue), zzlVar);
                            mapZzl = map3;
                        }
                    }
                }
                map = arrayMap;
            } else {
                map = mapZzj;
            }
            Iterator it3 = hashSet.iterator();
            while (it3.hasNext()) {
                int iIntValue2 = ((Integer) it3.next()).intValue();
                com.google.android.gms.internal.measurement.zzfi.zzl zzlVar2 = map.get(Integer.valueOf(iIntValue2));
                BitSet bitSet = new BitSet();
                BitSet bitSet2 = new BitSet();
                ArrayMap arrayMap2 = new ArrayMap();
                if (zzlVar2 != null && zzlVar2.zza() != 0) {
                    for (com.google.android.gms.internal.measurement.zzfi.zzd zzdVar2 : zzlVar2.zzh()) {
                        if (zzdVar2.zzf()) {
                            arrayMap2.put(Integer.valueOf(zzdVar2.zza()), zzdVar2.zze() ? Long.valueOf(zzdVar2.zzb()) : null);
                        }
                    }
                }
                ArrayMap arrayMap3 = new ArrayMap();
                if (zzlVar2 != null && zzlVar2.zzc() != 0) {
                    for (com.google.android.gms.internal.measurement.zzfi.zzm zzmVar2 : zzlVar2.zzj()) {
                        if (zzmVar2.zzf() && zzmVar2.zza() > 0) {
                            arrayMap3.put(Integer.valueOf(zzmVar2.zzb()), Long.valueOf(zzmVar2.zza(zzmVar2.zza() - 1)));
                        }
                    }
                }
                if (zzlVar2 != null) {
                    int i10 = 0;
                    while (i10 < (zzlVar2.zzd() << 6)) {
                        if (zzmz.zza(zzlVar2.zzk(), i10)) {
                            map2 = map;
                            zzj().zzp().zza("Filter already evaluated. audience ID, filter ID", Integer.valueOf(iIntValue2), Integer.valueOf(i10));
                            bitSet2.set(i10);
                            if (zzmz.zza(zzlVar2.zzi(), i10)) {
                                bitSet.set(i10);
                            }
                            i10++;
                            map = map2;
                        } else {
                            map2 = map;
                        }
                        arrayMap2.remove(Integer.valueOf(i10));
                        i10++;
                        map = map2;
                    }
                }
                Map<Integer, com.google.android.gms.internal.measurement.zzfi.zzl> map5 = map;
                com.google.android.gms.internal.measurement.zzfi.zzl zzlVar3 = mapZzj.get(Integer.valueOf(iIntValue2));
                if (z11 && z10 && (list3 = mapEmptyMap.get(Integer.valueOf(iIntValue2))) != null && this.zze != null && this.zzd != null) {
                    for (com.google.android.gms.internal.measurement.zzew.zzb zzbVar : list3) {
                        int iZzb = zzbVar.zzb();
                        long jLongValue = this.zze.longValue() / 1000;
                        if (zzbVar.zzi()) {
                            jLongValue = this.zzd.longValue() / 1000;
                        }
                        if (arrayMap2.containsKey(Integer.valueOf(iZzb))) {
                            arrayMap2.put(Integer.valueOf(iZzb), Long.valueOf(jLongValue));
                        }
                        if (arrayMap3.containsKey(Integer.valueOf(iZzb))) {
                            arrayMap3.put(Integer.valueOf(iZzb), Long.valueOf(jLongValue));
                        }
                    }
                }
                this.zzc.put(Integer.valueOf(iIntValue2), new zzv(this, this.zza, zzlVar3, bitSet, bitSet2, arrayMap2, arrayMap3));
                it3 = it3;
                map = map5;
            }
        }
        zzaa zzaaVar = null;
        if (!list.isEmpty()) {
            zzx zzxVar2 = new zzx(this);
            ArrayMap arrayMap4 = new ArrayMap();
            for (com.google.android.gms.internal.measurement.zzfi.zze zzeVar : list) {
                com.google.android.gms.internal.measurement.zzfi.zze zzeVarZza = zzxVar2.zza(this.zza, zzeVar);
                if (zzeVarZza != null) {
                    zzao zzaoVarZzh2 = zzh();
                    String str4 = this.zza;
                    String strZzg = zzeVarZza.zzg();
                    zzbc zzbcVarZzd = zzaoVarZzh2.zzd(str4, zzeVar.zzg());
                    if (zzbcVarZzd == null) {
                        zzaoVarZzh2.zzj().zzu().zza("Event aggregate wasn't created during raw event logging. appId, event", zzfr.zza(str4), zzaoVarZzh2.zzi().zza(strZzg));
                        zzbcVar = new zzbc(str4, zzeVar.zzg(), 1L, 1L, 1L, zzeVar.zzd(), 0L, null, null, null, null);
                    } else {
                        zzbcVar = new zzbc(zzbcVarZzd.zza, zzbcVarZzd.zzb, zzbcVarZzd.zzc + 1, zzbcVarZzd.zzd + 1, zzbcVarZzd.zze + 1, zzbcVarZzd.zzf, zzbcVarZzd.zzg, zzbcVarZzd.zzh, zzbcVarZzd.zzi, zzbcVarZzd.zzj, zzbcVarZzd.zzk);
                    }
                    zzh().zza(zzbcVar);
                    long j6 = zzbcVar.zzc;
                    String strZzg2 = zzeVarZza.zzg();
                    Map<Integer, List<com.google.android.gms.internal.measurement.zzew.zzb>> mapZzf = (Map) arrayMap4.get(strZzg2);
                    if (mapZzf == null) {
                        mapZzf = zzh().zzf(this.zza, strZzg2);
                        arrayMap4.put(strZzg2, mapZzf);
                    }
                    Iterator<Integer> it4 = mapZzf.keySet().iterator();
                    while (it4.hasNext()) {
                        int iIntValue3 = it4.next().intValue();
                        if (this.zzb.contains(Integer.valueOf(iIntValue3))) {
                            zzj().zzp().zza("Skipping failed audience ID", Integer.valueOf(iIntValue3));
                        } else {
                            Iterator<com.google.android.gms.internal.measurement.zzew.zzb> it5 = mapZzf.get(Integer.valueOf(iIntValue3)).iterator();
                            boolean zZza = true;
                            while (true) {
                                if (!it5.hasNext()) {
                                    zzxVar = zzxVar2;
                                    break;
                                }
                                com.google.android.gms.internal.measurement.zzew.zzb next = it5.next();
                                zzz zzzVar = new zzz(this, this.zza, iIntValue3, next);
                                zzxVar = zzxVar2;
                                zZza = zzzVar.zza(this.zzd, this.zze, zzeVarZza, j6, zzbcVar, zza(iIntValue3, next.zzb()));
                                if (zZza) {
                                    zza(Integer.valueOf(iIntValue3)).zza(zzzVar);
                                    zzxVar2 = zzxVar;
                                } else {
                                    this.zzb.add(Integer.valueOf(iIntValue3));
                                    break;
                                }
                            }
                            if (!zZza) {
                                this.zzb.add(Integer.valueOf(iIntValue3));
                            }
                            zzxVar2 = zzxVar;
                        }
                    }
                }
            }
        }
        if (!list2.isEmpty()) {
            ArrayMap arrayMap5 = new ArrayMap();
            for (com.google.android.gms.internal.measurement.zzfi.zzn zznVar : list2) {
                String strZzg3 = zznVar.zzg();
                Map<Integer, List<com.google.android.gms.internal.measurement.zzew.zze>> mapZzg = (Map) arrayMap5.get(strZzg3);
                if (mapZzg == null) {
                    mapZzg = zzh().zzg(this.zza, strZzg3);
                    arrayMap5.put(strZzg3, mapZzg);
                }
                Iterator<Integer> it6 = mapZzg.keySet().iterator();
                while (it6.hasNext()) {
                    int iIntValue4 = it6.next().intValue();
                    if (this.zzb.contains(Integer.valueOf(iIntValue4))) {
                        zzj().zzp().zza("Skipping failed audience ID", Integer.valueOf(iIntValue4));
                        break;
                    }
                    Iterator<com.google.android.gms.internal.measurement.zzew.zze> it7 = mapZzg.get(Integer.valueOf(iIntValue4)).iterator();
                    boolean zZza2 = true;
                    while (true) {
                        if (it7.hasNext()) {
                            com.google.android.gms.internal.measurement.zzew.zze next2 = it7.next();
                            if (zzj().zza(2)) {
                                zzj().zzp().zza("Evaluating filter. audience, filter, property", Integer.valueOf(iIntValue4), next2.zzi() ? Integer.valueOf(next2.zza()) : null, zzi().zzc(next2.zze()));
                                zzj().zzp().zza("Filter definition", g_().zza(next2));
                            }
                            if (next2.zzi() && next2.zza() <= 256) {
                                zzab zzabVar = new zzab(this, this.zza, iIntValue4, next2);
                                zZza2 = zzabVar.zza(this.zzd, this.zze, zznVar, zza(iIntValue4, next2.zza()));
                                if (zZza2) {
                                    zza(Integer.valueOf(iIntValue4)).zza(zzabVar);
                                } else {
                                    this.zzb.add(Integer.valueOf(iIntValue4));
                                }
                            } else {
                                zzj().zzu().zza("Invalid property filter ID. appId, id", zzfr.zza(this.zza), String.valueOf(next2.zzi() ? Integer.valueOf(next2.zza()) : null));
                                this.zzb.add(Integer.valueOf(iIntValue4));
                            }
                        }
                        if (!zZza2) {
                            this.zzb.add(Integer.valueOf(iIntValue4));
                        }
                    }
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Set<Integer> setKeySet = this.zzc.keySet();
        setKeySet.removeAll(this.zzb);
        Iterator<Integer> it8 = setKeySet.iterator();
        while (it8.hasNext()) {
            int iIntValue5 = it8.next().intValue();
            zzv zzvVar = this.zzc.get(Integer.valueOf(iIntValue5));
            Preconditions.checkNotNull(zzvVar);
            com.google.android.gms.internal.measurement.zzfi.zzc zzcVarZza = zzvVar.zza(iIntValue5);
            arrayList3.add(zzcVarZza);
            zzao zzaoVarZzh3 = zzh();
            String str5 = this.zza;
            com.google.android.gms.internal.measurement.zzfi.zzl zzlVarZzd = zzcVarZza.zzd();
            zzaoVarZzh3.zzak();
            zzaoVarZzh3.zzt();
            Preconditions.checkNotEmpty(str5);
            Preconditions.checkNotNull(zzlVarZzd);
            byte[] bArrZzbv = zzlVarZzd.zzbv();
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("app_id", str5);
            contentValues2.put("audience_id", Integer.valueOf(iIntValue5));
            contentValues2.put("current_results", bArrZzbv);
            try {
                try {
                    if (zzaoVarZzh3.e_().insertWithOnConflict("audience_filter_values", null, contentValues2, 5) == -1) {
                        zzaoVarZzh3.zzj().zzg().zza("Failed to insert filter results (got -1). appId", zzfr.zza(str5));
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    zzaoVarZzh3.zzj().zzg().zza("Error storing filter results. appId", zzfr.zza(str5), e);
                }
            } catch (SQLiteException e6) {
                e = e6;
            }
        }
        return arrayList3;
    }

    private final boolean zza(int i10, int i11) {
        zzv zzvVar = this.zzc.get(Integer.valueOf(i10));
        if (zzvVar == null) {
            return false;
        }
        return zzvVar.zzd.get(i11);
    }
}
