package com.google.android.gms.internal.play_billing;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
final class zzcw extends AbstractMap {
    private static final Comparator zza = new zzct();
    private final Object[] zzb;
    private final int[] zzc;
    private final Set zzd = new zzcv(this, -1);
    private Integer zze = null;
    private String zzf = null;

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return this.zzd;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        if (this.zze == null) {
            this.zze = Integer.valueOf(super.hashCode());
        }
        return this.zze.intValue();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        if (this.zzf == null) {
            this.zzf = super.toString();
        }
        return this.zzf;
    }

    zzcw(List list) {
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            int size = list.size();
            Object[] objArrCopyOf = new Object[size];
            int[] iArr = new int[1];
            Iterator it2 = list.iterator();
            if (!it2.hasNext()) {
                iArr[0] = 0;
                if (size > 16 && size * 9 > 0) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, 0);
                }
                this.zzb = objArrCopyOf;
                this.zzc = iArr;
                return;
            }
            zzcs.zza((zzcs) it2.next());
            throw null;
        }
        zzcs.zza((zzcs) it.next());
        throw null;
    }
}
