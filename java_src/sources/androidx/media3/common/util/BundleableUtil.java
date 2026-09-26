package androidx.media3.common.util;

import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.Bundleable;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.common.collect.a0;
import com.google.common.collect.b0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class BundleableUtil {
    public static HashMap<String, String> a(Bundle bundle) {
        HashMap<String, String> map = new HashMap<>();
        if (bundle == Bundle.EMPTY) {
            return map;
        }
        for (String str : bundle.keySet()) {
            String string = bundle.getString(str);
            if (string != null) {
                map.put(str, string);
            }
        }
        return map;
    }

    public static b0<String, String> b(Bundle bundle) {
        return bundle == Bundle.EMPTY ? b0.m() : b0.f(a(bundle));
    }

    public static void c(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) Util.j(BundleableUtil.class.getClassLoader()));
        }
    }

    public static <T extends Bundleable> SparseArray<T> e(Bundleable.Creator<T> creator, SparseArray<Bundle> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = (SparseArray<T>) new SparseArray(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            parcelableSparseArray.put(sparseArray.keyAt(i10), creator.a(sparseArray.valueAt(i10)));
        }
        return parcelableSparseArray;
    }

    public static Bundle h(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    public static <T extends Bundleable> ArrayList<Bundle> i(Collection<T> collection) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toBundle());
        }
        return arrayList;
    }

    public static <T extends Bundleable> SparseArray<Bundle> j(SparseArray<T> sparseArray) {
        SparseArray<Bundle> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            sparseArray2.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10).toBundle());
        }
        return sparseArray2;
    }

    private BundleableUtil() {
    }

    public static <T extends Bundleable> a0<T> d(Bundleable.Creator<T> creator, List<Bundle> list) {
        a0.a aVarR = a0.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            aVarR.d(creator.a((Bundle) Assertions.e(list.get(i10))));
        }
        return aVarR.k();
    }

    public static Bundle f(Bundle bundle, String str, Bundle bundle2) {
        Bundle bundle3 = bundle.getBundle(str);
        if (bundle3 != null) {
            return bundle3;
        }
        return bundle2;
    }

    public static ArrayList<Integer> g(Bundle bundle, String str, ArrayList<Integer> arrayList) {
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        return arrayList;
    }
}
