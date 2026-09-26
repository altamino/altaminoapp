package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public final class AdapterListUpdateCallback implements ListUpdateCallback {

    @NonNull
    private final RecyclerView.Adapter mAdapter;

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    @SuppressLint({"UnknownNullness"})
    public void a(int i10, int i11, Object obj) {
        this.mAdapter.notifyItemRangeChanged(i10, i11, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void b(int i10, int i11) {
        this.mAdapter.notifyItemRangeInserted(i10, i11);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void c(int i10, int i11) {
        this.mAdapter.notifyItemRangeRemoved(i10, i11);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void d(int i10, int i11) {
        this.mAdapter.notifyItemMoved(i10, i11);
    }

    public AdapterListUpdateCallback(@NonNull RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }
}
