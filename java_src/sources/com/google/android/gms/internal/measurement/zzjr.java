package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
final class zzjr extends zzjs {
    private static final Class<?> zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    @Override // com.google.android.gms.internal.measurement.zzjs
    final <L> List<L> zza(Object obj, long j6) {
        return zza(obj, j6, 10);
    }

    private zzjr() {
        super();
    }

    private static <L> List<L> zza(Object obj, long j6, int i10) {
        Object obj2;
        List<L> listZza;
        List<L> listZzc = zzc(obj, j6);
        if (listZzc.isEmpty()) {
            if (listZzc instanceof zzjp) {
                listZza = new zzjq(i10);
            } else {
                listZza = ((listZzc instanceof zzkv) && (listZzc instanceof zzjf)) ? ((zzjf) listZzc).zza(i10) : new ArrayList<>(i10);
            }
            zzmg.zza(obj, j6, listZza);
            return listZza;
        }
        if (zza.isAssignableFrom(listZzc.getClass())) {
            ArrayList arrayList = new ArrayList(listZzc.size() + i10);
            arrayList.addAll(listZzc);
            zzmg.zza(obj, j6, arrayList);
            obj2 = arrayList;
        } else {
            if (!(listZzc instanceof zzmb)) {
                if (!(listZzc instanceof zzkv) || !(listZzc instanceof zzjf)) {
                    return listZzc;
                }
                zzjf zzjfVar = (zzjf) listZzc;
                if (zzjfVar.zzc()) {
                    return listZzc;
                }
                zzjf zzjfVarZza = zzjfVar.zza(listZzc.size() + i10);
                zzmg.zza(obj, j6, zzjfVarZza);
                return zzjfVarZza;
            }
            zzjq zzjqVar = new zzjq(listZzc.size() + i10);
            zzjqVar.addAll((zzmb) listZzc);
            zzmg.zza(obj, j6, zzjqVar);
            obj2 = zzjqVar;
        }
        return (List<L>) obj2;
    }

    private static <E> List<E> zzc(Object obj, long j6) {
        return (List) zzmg.zze(obj, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    final void zzb(Object obj, long j6) {
        Object objUnmodifiableList;
        List list = (List) zzmg.zze(obj, j6);
        if (list instanceof zzjp) {
            objUnmodifiableList = ((zzjp) list).h_();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzkv) && (list instanceof zzjf)) {
                zzjf zzjfVar = (zzjf) list;
                if (zzjfVar.zzc()) {
                    zzjfVar.i_();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzmg.zza(obj, j6, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    final <E> void zza(Object obj, Object obj2, long j6) {
        List listZzc = zzc(obj2, j6);
        List listZza = zza(obj, j6, listZzc.size());
        int size = listZza.size();
        int size2 = listZzc.size();
        if (size > 0 && size2 > 0) {
            listZza.addAll(listZzc);
        }
        if (size > 0) {
            listZzc = listZza;
        }
        zzmg.zza(obj, j6, listZzc);
    }
}
