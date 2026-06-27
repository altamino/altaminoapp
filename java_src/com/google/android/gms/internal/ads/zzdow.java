package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class zzdow extends zzdou {
    private static final Class<?> zzhjc = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzdow() {
        super();
    }

    @Override // com.google.android.gms.internal.ads.zzdou
    final <L> List<L> zza(Object obj, long j) {
        return zza(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzdou
    final void zzb(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) zzdqz.zzp(obj, j);
        if (list instanceof zzdot) {
            objUnmodifiableList = ((zzdot) list).zzayp();
        } else {
            if (zzhjc.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzdpw) && (list instanceof zzdoj)) {
                zzdoj zzdojVar = (zzdoj) list;
                if (zzdojVar.zzavi()) {
                    zzdojVar.zzavj();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzdqz.zza(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <L> List<L> zza(Object obj, long j, int i) {
        zzdos zzdosVar;
        List<L> arrayList;
        List<L> listZzc = zzc(obj, j);
        if (listZzc.isEmpty()) {
            if (listZzc instanceof zzdot) {
                arrayList = new zzdos(i);
            } else if ((listZzc instanceof zzdpw) && (listZzc instanceof zzdoj)) {
                arrayList = ((zzdoj) listZzc).zzfl(i);
            } else {
                arrayList = new ArrayList<>(i);
            }
            zzdqz.zza(obj, j, arrayList);
            return arrayList;
        }
        if (zzhjc.isAssignableFrom(listZzc.getClass())) {
            ArrayList arrayList2 = new ArrayList(listZzc.size() + i);
            arrayList2.addAll(listZzc);
            zzdqz.zza(obj, j, arrayList2);
            zzdosVar = arrayList2;
        } else if (listZzc instanceof zzdqw) {
            zzdos zzdosVar2 = new zzdos(listZzc.size() + i);
            zzdosVar2.addAll((zzdqw) listZzc);
            zzdqz.zza(obj, j, zzdosVar2);
            zzdosVar = zzdosVar2;
        } else {
            if (!(listZzc instanceof zzdpw) || !(listZzc instanceof zzdoj)) {
                return listZzc;
            }
            zzdoj zzdojVar = (zzdoj) listZzc;
            if (zzdojVar.zzavi()) {
                return listZzc;
            }
            zzdoj zzdojVarZzfl = zzdojVar.zzfl(listZzc.size() + i);
            zzdqz.zza(obj, j, zzdojVarZzfl);
            return zzdojVarZzfl;
        }
        return zzdosVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdou
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
        zzdqz.zza(obj, j, listZzc);
    }

    private static <E> List<E> zzc(Object obj, long j) {
        return (List) zzdqz.zzp(obj, j);
    }
}
