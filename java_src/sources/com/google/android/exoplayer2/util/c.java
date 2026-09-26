package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.material.internal.ParcelableSparseArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class c {
    public static void a(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) o0.j(c.class.getClassLoader()));
        }
    }

    public static <T extends com.google.android.exoplayer2.h> SparseArray<T> c(com.google.android.exoplayer2.h.a<T> aVar, SparseArray<Bundle> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = (SparseArray<T>) new SparseArray(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            parcelableSparseArray.put(sparseArray.keyAt(i10), aVar.a(sparseArray.valueAt(i10)));
        }
        return parcelableSparseArray;
    }

    public static <T extends com.google.android.exoplayer2.h> ArrayList<Bundle> d(Collection<T> collection) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toBundle());
        }
        return arrayList;
    }

    public static <T extends com.google.android.exoplayer2.h> SparseArray<Bundle> e(SparseArray<T> sparseArray) {
        SparseArray<Bundle> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            sparseArray2.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10).toBundle());
        }
        return sparseArray2;
    }

    private c() {
    }

    public static <T extends com.google.android.exoplayer2.h> com.google.common.collect.a0<T> b(com.google.android.exoplayer2.h.a<T> aVar, List<Bundle> list) {
        com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            aVarR.d(aVar.a((Bundle) a.e(list.get(i10))));
        }
        return aVarR.k();
    }
}
