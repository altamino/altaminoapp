package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;

/* JADX INFO: loaded from: classes6.dex */
public class ListChangeRegistry extends CallbackRegistry<ObservableList.OnListChangedCallback, ObservableList, ListChanges> {
    private static final int ALL = 0;
    private static final int CHANGED = 1;
    private static final int INSERTED = 2;
    private static final int MOVED = 3;
    private static final int REMOVED = 4;
    private static final Pools.SynchronizedPool<ListChanges> sListChanges = new Pools.SynchronizedPool<>(10);
    private static final CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges> NOTIFIER_CALLBACK = new CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges>() { // from class: androidx.databinding.ListChangeRegistry.1
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ObservableList.OnListChangedCallback onListChangedCallback, ObservableList observableList, int i10, ListChanges listChanges) {
            if (i10 == 1) {
                onListChangedCallback.e(observableList, listChanges.start, listChanges.count);
                return;
            }
            if (i10 == 2) {
                onListChangedCallback.f(observableList, listChanges.start, listChanges.count);
                return;
            }
            if (i10 == 3) {
                onListChangedCallback.g(observableList, listChanges.start, listChanges.to, listChanges.count);
            } else if (i10 != 4) {
                onListChangedCallback.a(observableList);
            } else {
                onListChangedCallback.h(observableList, listChanges.start, listChanges.count);
            }
        }
    };

    @Override // androidx.databinding.CallbackRegistry
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public synchronized void e(@NonNull ObservableList observableList, int i10, ListChanges listChanges) {
        super.e(observableList, i10, listChanges);
        if (listChanges != null) {
            sListChanges.b(listChanges);
        }
    }

    public void o(@NonNull ObservableList observableList, int i10, int i11) {
        e(observableList, 1, m(i10, 0, i11));
    }

    public void p(@NonNull ObservableList observableList, int i10, int i11) {
        e(observableList, 2, m(i10, 0, i11));
    }

    public void q(@NonNull ObservableList observableList, int i10, int i11) {
        e(observableList, 4, m(i10, 0, i11));
    }

    static class ListChanges {
        public int count;
        public int start;
        public int to;

        ListChanges() {
        }
    }

    public ListChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }

    private static ListChanges m(int i10, int i11, int i12) {
        ListChanges listChangesA = sListChanges.a();
        if (listChangesA == null) {
            listChangesA = new ListChanges();
        }
        listChangesA.start = i10;
        listChangesA.to = i11;
        listChangesA.count = i12;
        return listChangesA;
    }
}
