package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
class NestedAdapterWrapper {
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
    private RecyclerView.AdapterDataObserver mAdapterObserver = new RecyclerView.AdapterDataObserver() { // from class: androidx.recyclerview.widget.NestedAdapterWrapper.1
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCallback.a(nestedAdapterWrapper, i10, i11, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            Preconditions.b(i12 == 1, "moving more than 1 item is not supported in RecyclerView");
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCallback.b(nestedAdapterWrapper, i10, i11);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCachedItemCount = nestedAdapterWrapper.adapter.getItemCount();
            NestedAdapterWrapper nestedAdapterWrapper2 = NestedAdapterWrapper.this;
            nestedAdapterWrapper2.mCallback.f(nestedAdapterWrapper2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCallback.a(nestedAdapterWrapper, i10, i11, obj);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCachedItemCount += i11;
            nestedAdapterWrapper.mCallback.e(nestedAdapterWrapper, i10, i11);
            NestedAdapterWrapper nestedAdapterWrapper2 = NestedAdapterWrapper.this;
            if (nestedAdapterWrapper2.mCachedItemCount <= 0 || nestedAdapterWrapper2.adapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            NestedAdapterWrapper nestedAdapterWrapper3 = NestedAdapterWrapper.this;
            nestedAdapterWrapper3.mCallback.c(nestedAdapterWrapper3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCachedItemCount -= i11;
            nestedAdapterWrapper.mCallback.d(nestedAdapterWrapper, i10, i11);
            NestedAdapterWrapper nestedAdapterWrapper2 = NestedAdapterWrapper.this;
            if (nestedAdapterWrapper2.mCachedItemCount >= 1 || nestedAdapterWrapper2.adapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            NestedAdapterWrapper nestedAdapterWrapper3 = NestedAdapterWrapper.this;
            nestedAdapterWrapper3.mCallback.c(nestedAdapterWrapper3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onStateRestorationPolicyChanged() {
            NestedAdapterWrapper nestedAdapterWrapper = NestedAdapterWrapper.this;
            nestedAdapterWrapper.mCallback.c(nestedAdapterWrapper);
        }
    };
    int mCachedItemCount;
    final Callback mCallback;

    @NonNull
    private final StableIdStorage.StableIdLookup mStableIdLookup;

    @NonNull
    private final ViewTypeStorage.ViewTypeLookup mViewTypeLookup;

    interface Callback {
        void a(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11, @Nullable Object obj);

        void b(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11);

        void c(NestedAdapterWrapper nestedAdapterWrapper);

        void d(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11);

        void e(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11);

        void f(@NonNull NestedAdapterWrapper nestedAdapterWrapper);
    }

    int a() {
        return this.mCachedItemCount;
    }

    public long b(int i10) {
        return this.mStableIdLookup.a(this.adapter.getItemId(i10));
    }

    int c(int i10) {
        return this.mViewTypeLookup.a(this.adapter.getItemViewType(i10));
    }

    void d(RecyclerView.ViewHolder viewHolder, int i10) {
        this.adapter.bindViewHolder(viewHolder, i10);
    }

    RecyclerView.ViewHolder e(ViewGroup viewGroup, int i10) {
        return this.adapter.onCreateViewHolder(viewGroup, this.mViewTypeLookup.b(i10));
    }

    NestedAdapterWrapper(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter, Callback callback, ViewTypeStorage viewTypeStorage, StableIdStorage.StableIdLookup stableIdLookup) {
        this.adapter = adapter;
        this.mCallback = callback;
        this.mViewTypeLookup = viewTypeStorage.b(this);
        this.mStableIdLookup = stableIdLookup;
        this.mCachedItemCount = adapter.getItemCount();
        adapter.registerAdapterDataObserver(this.mAdapterObserver);
    }
}
