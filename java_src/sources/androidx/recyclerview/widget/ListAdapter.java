package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ListAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    final AsyncListDiffer<T> mDiffer;
    private final AsyncListDiffer.ListListener<T> mListener;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.ListAdapter$1, reason: invalid class name */
    class AnonymousClass1 implements AsyncListDiffer.ListListener<T> {
        final /* synthetic */ ListAdapter this$0;

        @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
        public void a(@NonNull List<T> list, @NonNull List<T> list2) {
            this.this$0.g(list, list2);
        }
    }

    public void g(@NonNull List<T> list, @NonNull List<T> list2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDiffer.a().size();
    }
}
