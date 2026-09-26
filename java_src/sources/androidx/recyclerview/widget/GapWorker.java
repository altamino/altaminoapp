package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import androidx.core.os.TraceCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<Task> sTaskComparator = new Comparator<Task>() { // from class: androidx.recyclerview.widget.GapWorker.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Task task, Task task2) {
            RecyclerView recyclerView = task.view;
            if ((recyclerView == null) != (task2.view == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z6 = task.immediate;
            if (z6 != task2.immediate) {
                return z6 ? -1 : 1;
            }
            int i10 = task2.viewVelocity - task.viewVelocity;
            if (i10 != 0) {
                return i10;
            }
            int i11 = task.distanceToItem - task2.distanceToItem;
            if (i11 != 0) {
                return i11;
            }
            return 0;
        }
    };
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private ArrayList<Task> mTasks = new ArrayList<>();

    @SuppressLint({"VisibleForTests"})
    static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {
        int mCount;
        int[] mPrefetchArray;
        int mPrefetchDx;
        int mPrefetchDy;

        void c(RecyclerView recyclerView, boolean z6) {
            this.mCount = 0;
            int[] iArr = this.mPrefetchArray;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.isItemPrefetchEnabled()) {
                return;
            }
            if (z6) {
                if (!recyclerView.mAdapterHelper.p()) {
                    layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                layoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, recyclerView.mState, this);
            }
            int i10 = this.mCount;
            if (i10 > layoutManager.mPrefetchMaxCountObserved) {
                layoutManager.mPrefetchMaxCountObserved = i10;
                layoutManager.mPrefetchMaxObservedInInitialPrefetch = z6;
                recyclerView.mRecycler.P();
            }
        }

        void e(int i10, int i11) {
            this.mPrefetchDx = i10;
            this.mPrefetchDy = i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void a(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i12 = this.mCount;
            int i13 = i12 * 2;
            int[] iArr = this.mPrefetchArray;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.mPrefetchArray = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i13 >= iArr.length) {
                int[] iArr3 = new int[i12 * 4];
                this.mPrefetchArray = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.mPrefetchArray;
            iArr4[i13] = i10;
            iArr4[i13 + 1] = i11;
            this.mCount++;
        }

        void b() {
            int[] iArr = this.mPrefetchArray;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.mCount = 0;
        }

        boolean d(int i10) {
            if (this.mPrefetchArray != null) {
                int i11 = this.mCount * 2;
                for (int i12 = 0; i12 < i11; i12 += 2) {
                    if (this.mPrefetchArray[i12] == i10) {
                        return true;
                    }
                }
            }
            return false;
        }

        LayoutPrefetchRegistryImpl() {
        }
    }

    private void d(long j6) {
        for (int i10 = 0; i10 < this.mTasks.size(); i10++) {
            Task task = this.mTasks.get(i10);
            if (task.view == null) {
                return;
            }
            c(task, j6);
            task.a();
        }
    }

    static class Task {
        public int distanceToItem;
        public boolean immediate;
        public int position;
        public RecyclerView view;
        public int viewVelocity;

        public void a() {
            this.immediate = false;
            this.viewVelocity = 0;
            this.distanceToItem = 0;
            this.view = null;
            this.position = 0;
        }

        Task() {
        }
    }

    private void b() {
        Task task;
        int size = this.mRecyclerViews.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(i11);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.c(recyclerView, false);
                i10 += recyclerView.mPrefetchRegistry.mCount;
            }
        }
        this.mTasks.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(i13);
            if (recyclerView2.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(layoutPrefetchRegistryImpl.mPrefetchDx) + Math.abs(layoutPrefetchRegistryImpl.mPrefetchDy);
                for (int i14 = 0; i14 < layoutPrefetchRegistryImpl.mCount * 2; i14 += 2) {
                    if (i12 >= this.mTasks.size()) {
                        task = new Task();
                        this.mTasks.add(task);
                    } else {
                        task = this.mTasks.get(i12);
                    }
                    int[] iArr = layoutPrefetchRegistryImpl.mPrefetchArray;
                    int i15 = iArr[i14 + 1];
                    task.immediate = i15 <= iAbs;
                    task.viewVelocity = iAbs;
                    task.distanceToItem = i15;
                    task.view = recyclerView2;
                    task.position = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    private void c(Task task, long j6) {
        RecyclerView.ViewHolder viewHolderI = i(task.view, task.position, task.immediate ? Long.MAX_VALUE : j6);
        if (viewHolderI == null || viewHolderI.mNestedRecyclerView == null || !viewHolderI.isBound() || viewHolderI.isInvalid()) {
            return;
        }
        h(viewHolderI.mNestedRecyclerView.get(), j6);
    }

    static boolean e(RecyclerView recyclerView, int i10) {
        int iJ = recyclerView.mChildHelper.j();
        for (int i11 = 0; i11 < iJ; i11++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.i(i11));
            if (childViewHolderInt.mPosition == i10 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void h(@Nullable RecyclerView recyclerView, long j6) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.j() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        layoutPrefetchRegistryImpl.c(recyclerView, true);
        if (layoutPrefetchRegistryImpl.mCount != 0) {
            try {
                TraceCompat.a("RV Nested Prefetch");
                recyclerView.mState.f(recyclerView.mAdapter);
                for (int i10 = 0; i10 < layoutPrefetchRegistryImpl.mCount * 2; i10 += 2) {
                    i(recyclerView, layoutPrefetchRegistryImpl.mPrefetchArray[i10], j6);
                }
                TraceCompat.b();
            } catch (Throwable th) {
                TraceCompat.b();
                throw th;
            }
        }
    }

    public void a(RecyclerView recyclerView) {
        this.mRecyclerViews.add(recyclerView);
    }

    public void j(RecyclerView recyclerView) {
        this.mRecyclerViews.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.a("RV Prefetch");
            if (!this.mRecyclerViews.isEmpty()) {
                int size = this.mRecyclerViews.size();
                long jMax = 0;
                for (int i10 = 0; i10 < size; i10++) {
                    RecyclerView recyclerView = this.mRecyclerViews.get(i10);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    g(TimeUnit.MILLISECONDS.toNanos(jMax) + this.mFrameIntervalNs);
                }
            }
        } finally {
            this.mPostTimeNs = 0L;
            TraceCompat.b();
        }
    }

    GapWorker() {
    }

    private RecyclerView.ViewHolder i(RecyclerView recyclerView, int i10, long j6) {
        if (e(recyclerView, i10)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder viewHolderN = recycler.N(i10, false, j6);
            if (viewHolderN != null) {
                if (viewHolderN.isBound() && !viewHolderN.isInvalid()) {
                    recycler.G(viewHolderN.itemView);
                } else {
                    recycler.a(viewHolderN, false);
                }
            }
            return viewHolderN;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    void f(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow() && this.mPostTimeNs == 0) {
            this.mPostTimeNs = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.e(i10, i11);
    }

    void g(long j6) {
        b();
        d(j6);
    }
}
