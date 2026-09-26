package com.google.android.gms.internal.play_billing;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes9.dex */
public abstract class zzaf extends zzac implements List, RandomAccess {
    private static final zzat zza = new zzad(zzal.zza, 0);
    public static final /* synthetic */ int zzd = 0;

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (zzt.zza(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && zzt.zza(it.next(), it2.next())) {
                    }
                }
                if (!it2.hasNext()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    @Deprecated
    public final zzaf zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    /* JADX INFO: renamed from: zze */
    public final zzas iterator() {
        return listIterator(0);
    }

    static zzaf zzi(Object[] objArr, int i10) {
        return i10 == 0 ? zzal.zza : new zzal(objArr, i10);
    }

    public static zzaf zzj(Collection collection) {
        if (collection instanceof zzac) {
            zzaf zzafVarZzd = ((zzac) collection).zzd();
            if (!zzafVarZzd.zzf()) {
                return zzafVarZzd;
            }
            Object[] array = zzafVarZzd.toArray();
            return zzi(array, array.length);
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (array2[i10] == null) {
                throw new NullPointerException("at index " + i10);
            }
        }
        return zzi(array2, length);
    }

    public static zzaf zzk() {
        return zzal.zza;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    zzaf() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzac, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode = (iHashCode * 31) + get(i10).hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    int zza(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i11] = get(i11);
        }
        return size;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public zzaf subList(int i10, int i11) {
        zzx.zzd(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        if (i12 == 0) {
            return zzal.zza;
        }
        return new zzae(this, i10, i12);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzl, reason: merged with bridge method [inline-methods] */
    public final zzat listIterator(int i10) {
        zzx.zzb(i10, size(), "index");
        if (isEmpty()) {
            return zza;
        }
        return new zzad(this, i10);
    }
}
