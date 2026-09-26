package androidx.recyclerview.widget;

import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
class ConcatAdapterController implements NestedAdapterWrapper.Callback {
    private final ConcatAdapter mConcatAdapter;

    @NonNull
    private final ConcatAdapter.Config.StableIdMode mStableIdMode;
    private final StableIdStorage mStableIdStorage;
    private final ViewTypeStorage mViewTypeStorage;
    private List<WeakReference<RecyclerView>> mAttachedRecyclerViews = new ArrayList();
    private final IdentityHashMap<RecyclerView.ViewHolder, NestedAdapterWrapper> mBinderLookup = new IdentityHashMap<>();
    private List<NestedAdapterWrapper> mWrappers = new ArrayList();
    private WrapperAndLocalPosition mReusableHolder = new WrapperAndLocalPosition();

    private void D(WrapperAndLocalPosition wrapperAndLocalPosition) {
        wrapperAndLocalPosition.mInUse = false;
        wrapperAndLocalPosition.mWrapper = null;
        wrapperAndLocalPosition.mLocalPosition = -1;
        this.mReusableHolder = wrapperAndLocalPosition;
    }

    static class WrapperAndLocalPosition {
        boolean mInUse;
        int mLocalPosition;
        NestedAdapterWrapper mWrapper;

        WrapperAndLocalPosition() {
        }
    }

    private RecyclerView.Adapter.StateRestorationPolicy j() {
        for (NestedAdapterWrapper nestedAdapterWrapper : this.mWrappers) {
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy = nestedAdapterWrapper.adapter.getStateRestorationPolicy();
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy2 = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            if (stateRestorationPolicy == stateRestorationPolicy2) {
                return stateRestorationPolicy2;
            }
            if (stateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && nestedAdapterWrapper.a() == 0) {
                return stateRestorationPolicy2;
            }
        }
        return RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
    }

    private int k(NestedAdapterWrapper nestedAdapterWrapper) {
        NestedAdapterWrapper next;
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        int iA = 0;
        while (it.hasNext() && (next = it.next()) != nestedAdapterWrapper) {
            iA += next.a();
        }
        return iA;
    }

    @NonNull
    private WrapperAndLocalPosition l(int i10) {
        WrapperAndLocalPosition wrapperAndLocalPosition = this.mReusableHolder;
        if (wrapperAndLocalPosition.mInUse) {
            wrapperAndLocalPosition = new WrapperAndLocalPosition();
        } else {
            wrapperAndLocalPosition.mInUse = true;
        }
        int iA = i10;
        for (NestedAdapterWrapper nestedAdapterWrapper : this.mWrappers) {
            if (nestedAdapterWrapper.a() > iA) {
                wrapperAndLocalPosition.mWrapper = nestedAdapterWrapper;
                wrapperAndLocalPosition.mLocalPosition = iA;
                break;
            }
            iA -= nestedAdapterWrapper.a();
        }
        if (wrapperAndLocalPosition.mWrapper != null) {
            return wrapperAndLocalPosition;
        }
        throw new IllegalArgumentException("Cannot find wrapper for " + i10);
    }

    @NonNull
    private NestedAdapterWrapper r(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper != null) {
            return nestedAdapterWrapper;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    private int t(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int size = this.mWrappers.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.mWrappers.get(i10).adapter == adapter) {
                return i10;
            }
        }
        return -1;
    }

    private boolean u(RecyclerView recyclerView) {
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            if (it.next().get() == recyclerView) {
                return true;
            }
        }
        return false;
    }

    public void C(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper != null) {
            nestedAdapterWrapper.adapter.onViewRecycled(viewHolder);
            this.mBinderLookup.remove(viewHolder);
            return;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void f(@NonNull NestedAdapterWrapper nestedAdapterWrapper) {
        this.mConcatAdapter.notifyDataSetChanged();
        i();
    }

    boolean g(int i10, RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        if (i10 < 0 || i10 > this.mWrappers.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + this.mWrappers.size() + ". Given:" + i10);
        }
        if (s()) {
            Preconditions.b(adapter.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
        } else if (adapter.hasStableIds()) {
            Log.w("ConcatAdapter", "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids");
        }
        if (m(adapter) != null) {
            return false;
        }
        NestedAdapterWrapper nestedAdapterWrapper = new NestedAdapterWrapper(adapter, this, this.mViewTypeStorage, this.mStableIdStorage.a());
        this.mWrappers.add(i10, nestedAdapterWrapper);
        Iterator<WeakReference<RecyclerView>> it = this.mAttachedRecyclerViews.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = it.next().get();
            if (recyclerView != null) {
                adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (nestedAdapterWrapper.a() > 0) {
            this.mConcatAdapter.notifyItemRangeInserted(k(nestedAdapterWrapper), nestedAdapterWrapper.a());
        }
        i();
        return true;
    }

    boolean h(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        return g(this.mWrappers.size(), adapter);
    }

    public int p(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i10) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper == null) {
            return -1;
        }
        int iK = i10 - k(nestedAdapterWrapper);
        int itemCount = nestedAdapterWrapper.adapter.getItemCount();
        if (iK >= 0 && iK < itemCount) {
            return nestedAdapterWrapper.adapter.findRelativeAdapterPositionIn(adapter, viewHolder, iK);
        }
        throw new IllegalStateException("Detected inconsistent adapter updates. The local position of the view holder maps to " + iK + " which is out of bounds for the adapter with size " + itemCount + ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:" + viewHolder + "adapter:" + adapter);
    }

    public int q() {
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        int iA = 0;
        while (it.hasNext()) {
            iA += it.next().a();
        }
        return iA;
    }

    public boolean s() {
        return this.mStableIdMode != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS;
    }

    public RecyclerView.ViewHolder x(ViewGroup viewGroup, int i10) {
        return this.mViewTypeStorage.a(i10).e(viewGroup, i10);
    }

    public void y(RecyclerView recyclerView) {
        for (int size = this.mAttachedRecyclerViews.size() - 1; size >= 0; size--) {
            WeakReference<RecyclerView> weakReference = this.mAttachedRecyclerViews.get(size);
            if (weakReference.get() != null) {
                if (weakReference.get() == recyclerView) {
                    this.mAttachedRecyclerViews.remove(size);
                    break;
                }
            } else {
                this.mAttachedRecyclerViews.remove(size);
            }
        }
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            it.next().adapter.onDetachedFromRecyclerView(recyclerView);
        }
    }

    public boolean z(RecyclerView.ViewHolder viewHolder) {
        NestedAdapterWrapper nestedAdapterWrapper = this.mBinderLookup.get(viewHolder);
        if (nestedAdapterWrapper != null) {
            boolean zOnFailedToRecycleView = nestedAdapterWrapper.adapter.onFailedToRecycleView(viewHolder);
            this.mBinderLookup.remove(viewHolder);
            return zOnFailedToRecycleView;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    ConcatAdapterController(ConcatAdapter concatAdapter, ConcatAdapter.Config config) {
        this.mConcatAdapter = concatAdapter;
        if (config.isolateViewTypes) {
            this.mViewTypeStorage = new ViewTypeStorage.IsolatedViewTypeStorage();
        } else {
            this.mViewTypeStorage = new ViewTypeStorage.SharedIdRangeViewTypeStorage();
        }
        ConcatAdapter.Config.StableIdMode stableIdMode = config.stableIdMode;
        this.mStableIdMode = stableIdMode;
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.mStableIdStorage = new StableIdStorage.NoStableIdStorage();
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            this.mStableIdStorage = new StableIdStorage.IsolatedStableIdStorage();
        } else {
            if (stableIdMode == ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
                this.mStableIdStorage = new StableIdStorage.SharedPoolStableIdStorage();
                return;
            }
            throw new IllegalArgumentException("unknown stable id mode");
        }
    }

    private void i() {
        RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicyJ = j();
        if (stateRestorationPolicyJ != this.mConcatAdapter.getStateRestorationPolicy()) {
            this.mConcatAdapter.h(stateRestorationPolicyJ);
        }
    }

    @Nullable
    private NestedAdapterWrapper m(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        int iT = t(adapter);
        if (iT == -1) {
            return null;
        }
        return this.mWrappers.get(iT);
    }

    public void A(RecyclerView.ViewHolder viewHolder) {
        r(viewHolder).adapter.onViewAttachedToWindow(viewHolder);
    }

    public void B(RecyclerView.ViewHolder viewHolder) {
        r(viewHolder).adapter.onViewDetachedFromWindow(viewHolder);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void a(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11, @Nullable Object obj) {
        this.mConcatAdapter.notifyItemRangeChanged(i10 + k(nestedAdapterWrapper), i11, obj);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void b(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11) {
        int iK = k(nestedAdapterWrapper);
        this.mConcatAdapter.notifyItemMoved(i10 + iK, i11 + iK);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void c(NestedAdapterWrapper nestedAdapterWrapper) {
        i();
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void d(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11) {
        this.mConcatAdapter.notifyItemRangeRemoved(i10 + k(nestedAdapterWrapper), i11);
    }

    @Override // androidx.recyclerview.widget.NestedAdapterWrapper.Callback
    public void e(@NonNull NestedAdapterWrapper nestedAdapterWrapper, int i10, int i11) {
        this.mConcatAdapter.notifyItemRangeInserted(i10 + k(nestedAdapterWrapper), i11);
    }

    public long n(int i10) {
        WrapperAndLocalPosition wrapperAndLocalPositionL = l(i10);
        long jB = wrapperAndLocalPositionL.mWrapper.b(wrapperAndLocalPositionL.mLocalPosition);
        D(wrapperAndLocalPositionL);
        return jB;
    }

    public int o(int i10) {
        WrapperAndLocalPosition wrapperAndLocalPositionL = l(i10);
        int iC = wrapperAndLocalPositionL.mWrapper.c(wrapperAndLocalPositionL.mLocalPosition);
        D(wrapperAndLocalPositionL);
        return iC;
    }

    public void v(RecyclerView recyclerView) {
        if (u(recyclerView)) {
            return;
        }
        this.mAttachedRecyclerViews.add(new WeakReference<>(recyclerView));
        Iterator<NestedAdapterWrapper> it = this.mWrappers.iterator();
        while (it.hasNext()) {
            it.next().adapter.onAttachedToRecyclerView(recyclerView);
        }
    }

    public void w(RecyclerView.ViewHolder viewHolder, int i10) {
        WrapperAndLocalPosition wrapperAndLocalPositionL = l(i10);
        this.mBinderLookup.put(viewHolder, wrapperAndLocalPositionL.mWrapper);
        wrapperAndLocalPositionL.mWrapper.d(viewHolder, wrapperAndLocalPositionL.mLocalPosition);
        D(wrapperAndLocalPositionL);
    }
}
