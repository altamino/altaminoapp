package androidx.coordinatorlayout.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public final class DirectedAcyclicGraph<T> {
    private final Pools.Pool<ArrayList<T>> mListPool = new Pools.SimplePool(10);
    private final SimpleArrayMap<T, ArrayList<T>> mGraph = new SimpleArrayMap<>();
    private final ArrayList<T> mSortResult = new ArrayList<>();
    private final HashSet<T> mSortTmpMarked = new HashSet<>();

    @NonNull
    private ArrayList<T> f() {
        ArrayList<T> arrayListA = this.mListPool.a();
        return arrayListA == null ? new ArrayList<>() : arrayListA;
    }

    public void a(@NonNull T t5, @NonNull T t10) {
        if (!this.mGraph.containsKey(t5) || !this.mGraph.containsKey(t10)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListF = this.mGraph.get(t5);
        if (arrayListF == null) {
            arrayListF = f();
            this.mGraph.put(t5, arrayListF);
        }
        arrayListF.add(t10);
    }

    public void b(@NonNull T t5) {
        if (this.mGraph.containsKey(t5)) {
            return;
        }
        this.mGraph.put(t5, null);
    }

    public void c() {
        int size = this.mGraph.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> arrayListP = this.mGraph.p(i10);
            if (arrayListP != null) {
                k(arrayListP);
            }
        }
        this.mGraph.clear();
    }

    public boolean d(@NonNull T t5) {
        return this.mGraph.containsKey(t5);
    }

    @Nullable
    public List g(@NonNull T t5) {
        return this.mGraph.get(t5);
    }

    @Nullable
    public List<T> h(@NonNull T t5) {
        int size = this.mGraph.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> arrayListP = this.mGraph.p(i10);
            if (arrayListP != null && arrayListP.contains(t5)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.mGraph.l(i10));
            }
        }
        return arrayList;
    }

    @NonNull
    public ArrayList<T> i() {
        this.mSortResult.clear();
        this.mSortTmpMarked.clear();
        int size = this.mGraph.size();
        for (int i10 = 0; i10 < size; i10++) {
            e(this.mGraph.l(i10), this.mSortResult, this.mSortTmpMarked);
        }
        return this.mSortResult;
    }

    public boolean j(@NonNull T t5) {
        int size = this.mGraph.size();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<T> arrayListP = this.mGraph.p(i10);
            if (arrayListP != null && arrayListP.contains(t5)) {
                return true;
            }
        }
        return false;
    }

    private void e(T t5, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t5)) {
            return;
        }
        if (!hashSet.contains(t5)) {
            hashSet.add(t5);
            ArrayList<T> arrayList2 = this.mGraph.get(t5);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    e(arrayList2.get(i10), arrayList, hashSet);
                }
            }
            hashSet.remove(t5);
            arrayList.add(t5);
            return;
        }
        throw new RuntimeException("This graph contains cyclic dependencies");
    }

    private void k(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.mListPool.b(arrayList);
    }
}
