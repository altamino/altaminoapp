package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes9.dex */
public class SharedValues {
    public static final int UNSET = -1;
    private SparseIntArray mValues = new SparseIntArray();
    private HashMap<Integer, HashSet<WeakReference<SharedValuesListener>>> mValuesListeners = new HashMap<>();

    public interface SharedValuesListener {
    }

    public void a(int key, SharedValuesListener listener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(key));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.mValuesListeners.put(Integer.valueOf(key), hashSet);
        }
        hashSet.add(new WeakReference<>(listener));
    }

    public void b(int key, SharedValuesListener listener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(key));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (WeakReference<SharedValuesListener> weakReference : hashSet) {
            SharedValuesListener sharedValuesListener = weakReference.get();
            if (sharedValuesListener == null || sharedValuesListener == listener) {
                arrayList.add(weakReference);
            }
        }
        hashSet.removeAll(arrayList);
    }
}
