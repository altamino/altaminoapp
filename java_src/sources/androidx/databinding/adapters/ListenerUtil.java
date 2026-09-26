package androidx.databinding.adapters;

import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class ListenerUtil {
    private static final SparseArray<WeakHashMap<View, WeakReference<?>>> sListeners = new SparseArray<>();

    public static <T> T a(View view, T t5, int i10) {
        T t10 = (T) view.getTag(i10);
        view.setTag(i10, t5);
        return t10;
    }
}
