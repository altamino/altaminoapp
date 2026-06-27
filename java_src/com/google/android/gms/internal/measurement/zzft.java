package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class zzft extends zzfr {
    private static final Class<?> zzaim = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzft() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzfr
    final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.measurement.zzfr
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzhw.zzp(obj, j);
        if (list instanceof zzfq) {
            objUnmodifiableList = ((zzfq) list).zznh();
        } else {
            if (zzaim.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzgt) && (list instanceof zzfg)) {
                zzfg zzfgVar = (zzfg) list;
                if (zzfgVar.zzjy()) {
                    zzfgVar.zzjz();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzhw.zza(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zza(Object obj, long j, int i) {
        zzfp zzfpVar;
        List<L> arrayList;
        List<L> listZzc = zzc(obj, j);
        if (listZzc.isEmpty()) {
            if (listZzc instanceof zzfq) {
                arrayList = new zzfp(i);
            } else if ((listZzc instanceof zzgt) && (listZzc instanceof zzfg)) {
                arrayList = ((zzfg) listZzc).zzq(i);
            } else {
                arrayList = new ArrayList<>(i);
            }
            zzhw.zza(obj, j, arrayList);
            return arrayList;
        }
        if (zzaim.isAssignableFrom(listZzc.getClass())) {
            ArrayList arrayList2 = new ArrayList(listZzc.size() + i);
            arrayList2.addAll(listZzc);
            zzhw.zza(obj, j, arrayList2);
            zzfpVar = arrayList2;
        } else if (listZzc instanceof zzht) {
            zzfp zzfpVar2 = new zzfp(listZzc.size() + i);
            zzfpVar2.addAll((zzht) listZzc);
            zzhw.zza(obj, j, zzfpVar2);
            zzfpVar = zzfpVar2;
        } else {
            if (!(listZzc instanceof zzgt) || !(listZzc instanceof zzfg)) {
                return listZzc;
            }
            zzfg zzfgVar = (zzfg) listZzc;
            if (zzfgVar.zzjy()) {
                return listZzc;
            }
            zzfg zzfgVarZzq = zzfgVar.zzq(listZzc.size() + i);
            zzhw.zza(obj, j, zzfgVarZzq);
            return zzfgVarZzq;
        }
        return zzfpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzfr
    final <E> void zza(Object obj, Object obj2, long j) {
        List listZzc = zzc(obj2, j);
        List listZza = zza(obj, j, listZzc.size());
        int size = listZza.size();
        int size2 = listZzc.size();
        if (size > 0 && size2 > 0) {
            listZza.addAll(listZzc);
        }
        if (size > 0) {
            listZzc = listZza;
        }
        zzhw.zza(obj, j, listZzc);
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzhw.zzp(obj, j);
    }
}
