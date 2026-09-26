package androidx.fragment.app;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.transition.FragmentTransitionSupport;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
class FragmentTransition {
    static final FragmentTransitionImpl PLATFORM_IMPL = new FragmentTransitionCompat21();
    static final FragmentTransitionImpl SUPPORT_IMPL = c();

    static boolean f() {
        return (PLATFORM_IMPL == null && SUPPORT_IMPL == null) ? false : true;
    }

    static void a(Fragment fragment, Fragment fragment2, boolean z6, ArrayMap<String, View> arrayMap, boolean z10) {
        SharedElementCallback enterTransitionCallback = z6 ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayMap == null ? 0 : arrayMap.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList2.add(arrayMap.l(i10));
                arrayList.add(arrayMap.p(i10));
            }
            if (z10) {
                enterTransitionCallback.onSharedElementStart(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.onSharedElementEnd(arrayList2, arrayList, null);
            }
        }
    }

    private static FragmentTransitionImpl c() {
        try {
            return (FragmentTransitionImpl) FragmentTransitionSupport.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static void e(ArrayList<View> arrayList, int i10) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i10);
        }
    }

    private FragmentTransition() {
    }

    static String b(ArrayMap<String, String> arrayMap, String str) {
        int size = arrayMap.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (str.equals(arrayMap.p(i10))) {
                return arrayMap.l(i10);
            }
        }
        return null;
    }

    static void d(@NonNull ArrayMap<String, String> arrayMap, @NonNull ArrayMap<String, View> arrayMap2) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            if (!arrayMap2.containsKey(arrayMap.p(size))) {
                arrayMap.n(size);
            }
        }
    }
}
