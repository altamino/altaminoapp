package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = "f#";
    private static final String KEY_PREFIX_STATE = "s#";
    FragmentEventDispatcher mFragmentEventDispatcher;
    final FragmentManager mFragmentManager;
    private FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final LongSparseArray<Fragment> mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final LongSparseArray<Integer> mItemIdToViewHolder;
    final Lifecycle mLifecycle;
    private final LongSparseArray<Fragment.SavedState> mSavedStates;

    private static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i10, int i11) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i10, int i11, int i12) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i10, int i11) {
            onChanged();
        }
    }

    static class FragmentEventDispatcher {
        private List<FragmentTransactionCallback> mCallbacks = new CopyOnWriteArrayList();

        public List<FragmentTransactionCallback.OnPostEventListener> a(Fragment fragment, Lifecycle.State state) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().a(fragment, state));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> c(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().b(fragment));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> d(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator<FragmentTransactionCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().c(fragment));
            }
            return arrayList;
        }

        FragmentEventDispatcher() {
        }

        public void b(List<FragmentTransactionCallback.OnPostEventListener> list) {
            Iterator<FragmentTransactionCallback.OnPostEventListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    class FragmentMaxLifecycleEnforcer {
        private RecyclerView.AdapterDataObserver mDataObserver;
        private LifecycleEventObserver mLifecycleObserver;
        private ViewPager2.OnPageChangeCallback mPageChangeCallback;
        private long mPrimaryItemId = -1;
        private ViewPager2 mViewPager;

        FragmentMaxLifecycleEnforcer() {
        }

        void d(boolean z6) {
            int currentItem;
            Fragment fragmentH;
            if (FragmentStateAdapter.this.z() || this.mViewPager.getScrollState() != 0 || FragmentStateAdapter.this.mFragments.k() || FragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= FragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = FragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.mPrimaryItemId || z6) && (fragmentH = FragmentStateAdapter.this.mFragments.h(itemId)) != null && fragmentH.isAdded()) {
                this.mPrimaryItemId = itemId;
                FragmentTransaction fragmentTransactionQ = FragmentStateAdapter.this.mFragmentManager.q();
                ArrayList arrayList = new ArrayList();
                Fragment fragment = null;
                for (int i10 = 0; i10 < FragmentStateAdapter.this.mFragments.p(); i10++) {
                    long jL = FragmentStateAdapter.this.mFragments.l(i10);
                    Fragment fragmentQ = FragmentStateAdapter.this.mFragments.q(i10);
                    if (fragmentQ.isAdded()) {
                        if (jL != this.mPrimaryItemId) {
                            Lifecycle.State state = Lifecycle.State.STARTED;
                            fragmentTransactionQ.A(fragmentQ, state);
                            arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.a(fragmentQ, state));
                        } else {
                            fragment = fragmentQ;
                        }
                        fragmentQ.setMenuVisibility(jL == this.mPrimaryItemId);
                    }
                }
                if (fragment != null) {
                    Lifecycle.State state2 = Lifecycle.State.RESUMED;
                    fragmentTransactionQ.A(fragment, state2);
                    arrayList.add(FragmentStateAdapter.this.mFragmentEventDispatcher.a(fragment, state2));
                }
                if (fragmentTransactionQ.s()) {
                    return;
                }
                fragmentTransactionQ.l();
                Collections.reverse(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    FragmentStateAdapter.this.mFragmentEventDispatcher.b((List) it.next());
                }
            }
        }

        @NonNull
        private ViewPager2 a(@NonNull RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        void b(@NonNull RecyclerView recyclerView) {
            this.mViewPager = a(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void a(int i10) {
                    FragmentMaxLifecycleEnforcer.this.d(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void c(int i10) {
                    FragmentMaxLifecycleEnforcer.this.d(false);
                }
            };
            this.mPageChangeCallback = onPageChangeCallback;
            this.mViewPager.h(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                @Override // androidx.viewpager2.adapter.FragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    FragmentMaxLifecycleEnforcer.this.d(true);
                }
            };
            this.mDataObserver = dataSetChangeObserver;
            FragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.d(false);
                }
            };
            this.mLifecycleObserver = lifecycleEventObserver;
            FragmentStateAdapter.this.mLifecycle.a(lifecycleEventObserver);
        }

        void c(@NonNull RecyclerView recyclerView) {
            a(recyclerView).o(this.mPageChangeCallback);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.mDataObserver);
            FragmentStateAdapter.this.mLifecycle.d(this.mLifecycleObserver);
            this.mViewPager = null;
        }
    }

    public static abstract class FragmentTransactionCallback {

        @NonNull
        private static final OnPostEventListener NO_OP = new OnPostEventListener() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.1
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.OnPostEventListener
            public void a() {
            }
        };

        public interface OnPostEventListener {
            void a();
        }

        @NonNull
        public OnPostEventListener a(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener b(@NonNull Fragment fragment) {
            return NO_OP;
        }

        @NonNull
        public OnPostEventListener c(@NonNull Fragment fragment) {
            return NO_OP;
        }
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    private Long o(int i10) {
        Long lValueOf = null;
        for (int i11 = 0; i11 < this.mItemIdToViewHolder.p(); i11++) {
            if (this.mItemIdToViewHolder.q(i11).intValue() == i10) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(this.mItemIdToViewHolder.l(i11));
            }
        }
        return lValueOf;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @NonNull
    public abstract Fragment i(int i10);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    @NonNull
    private static String j(@NonNull String str, long j6) {
        return str + j6;
    }

    private boolean m(long j6) {
        View view;
        if (this.mItemIdToViewHolder.f(j6)) {
            return true;
        }
        Fragment fragmentH = this.mFragments.h(j6);
        return (fragmentH == null || (view = fragmentH.getView()) == null || view.getParent() == null) ? false : true;
    }

    private void w(long j6) {
        ViewParent parent;
        Fragment fragmentH = this.mFragments.h(j6);
        if (fragmentH == null) {
            return;
        }
        if (fragmentH.getView() != null && (parent = fragmentH.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!h(j6)) {
            this.mSavedStates.n(j6);
        }
        if (!fragmentH.isAdded()) {
            this.mFragments.n(j6);
            return;
        }
        if (z()) {
            this.mHasStaleFragments = true;
            return;
        }
        if (fragmentH.isAdded() && h(j6)) {
            this.mSavedStates.m(j6, this.mFragmentManager.D1(fragmentH));
        }
        List<FragmentTransactionCallback.OnPostEventListener> listD = this.mFragmentEventDispatcher.d(fragmentH);
        try {
            this.mFragmentManager.q().t(fragmentH).l();
            this.mFragments.n(j6);
        } finally {
            this.mFragmentEventDispatcher.b(listD);
        }
    }

    private void x() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
                fragmentStateAdapter.mIsInGracePeriod = false;
                fragmentStateAdapter.l();
            }
        };
        this.mLifecycle.a(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.5
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    lifecycleOwner.getLifecycle().d(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    private void y(final Fragment fragment, @NonNull final FrameLayout frameLayout) {
        this.mFragmentManager.r1(new FragmentManager.FragmentLifecycleCallbacks() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.3
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2, @NonNull View view, @Nullable Bundle bundle) {
                if (fragment2 == fragment) {
                    fragmentManager.M1(this);
                    FragmentStateAdapter.this.g(view, frameLayout);
                }
            }
        }, false);
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    public final Parcelable a() {
        Bundle bundle = new Bundle(this.mFragments.p() + this.mSavedStates.p());
        for (int i10 = 0; i10 < this.mFragments.p(); i10++) {
            long jL = this.mFragments.l(i10);
            Fragment fragmentH = this.mFragments.h(jL);
            if (fragmentH != null && fragmentH.isAdded()) {
                this.mFragmentManager.q1(bundle, j(KEY_PREFIX_FRAGMENT, jL), fragmentH);
            }
        }
        for (int i11 = 0; i11 < this.mSavedStates.p(); i11++) {
            long jL2 = this.mSavedStates.l(i11);
            if (h(jL2)) {
                bundle.putParcelable(j(KEY_PREFIX_STATE, jL2), this.mSavedStates.h(jL2));
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void f(@NonNull Parcelable parcelable) {
        if (!this.mSavedStates.k() || !this.mFragments.k()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (n(str, KEY_PREFIX_FRAGMENT)) {
                this.mFragments.m(u(str, KEY_PREFIX_FRAGMENT), this.mFragmentManager.x0(bundle, str));
            } else {
                if (!n(str, KEY_PREFIX_STATE)) {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
                long jU = u(str, KEY_PREFIX_STATE);
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (h(jU)) {
                    this.mSavedStates.m(jU, savedState);
                }
            }
        }
        if (this.mFragments.k()) {
            return;
        }
        this.mHasStaleFragments = true;
        this.mIsInGracePeriod = true;
        l();
        x();
    }

    public boolean h(long j6) {
        return j6 >= 0 && j6 < ((long) getItemCount());
    }

    void l() {
        if (!this.mHasStaleFragments || z()) {
            return;
        }
        ArraySet arraySet = new ArraySet();
        for (int i10 = 0; i10 < this.mFragments.p(); i10++) {
            long jL = this.mFragments.l(i10);
            if (!h(jL)) {
                arraySet.add(Long.valueOf(jL));
                this.mItemIdToViewHolder.n(jL);
            }
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i11 = 0; i11 < this.mFragments.p(); i11++) {
                long jL2 = this.mFragments.l(i11);
                if (!m(jL2)) {
                    arraySet.add(Long.valueOf(jL2));
                }
            }
        }
        Iterator<E> it = arraySet.iterator();
        while (it.hasNext()) {
            w(((Long) it.next()).longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        Preconditions.a(this.mFragmentMaxLifecycleEnforcer == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.b(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.c(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z6) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    void v(@NonNull final FragmentViewHolder fragmentViewHolder) {
        Fragment fragmentH = this.mFragments.h(fragmentViewHolder.getItemId());
        if (fragmentH == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = fragmentH.getView();
        if (!fragmentH.isAdded() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (fragmentH.isAdded() && view == null) {
            y(fragmentH, container);
            return;
        }
        if (fragmentH.isAdded() && view.getParent() != null) {
            if (view.getParent() != container) {
                g(view, container);
                return;
            }
            return;
        }
        if (fragmentH.isAdded()) {
            g(view, container);
            return;
        }
        if (z()) {
            if (this.mFragmentManager.O0()) {
                return;
            }
            this.mLifecycle.a(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    if (FragmentStateAdapter.this.z()) {
                        return;
                    }
                    lifecycleOwner.getLifecycle().d(this);
                    if (ViewCompat.W(fragmentViewHolder.getContainer())) {
                        FragmentStateAdapter.this.v(fragmentViewHolder);
                    }
                }
            });
            return;
        }
        y(fragmentH, container);
        List<FragmentTransactionCallback.OnPostEventListener> listC = this.mFragmentEventDispatcher.c(fragmentH);
        try {
            fragmentH.setMenuVisibility(false);
            this.mFragmentManager.q().e(fragmentH, "f" + fragmentViewHolder.getItemId()).A(fragmentH, Lifecycle.State.STARTED).l();
            this.mFragmentMaxLifecycleEnforcer.d(false);
        } finally {
            this.mFragmentEventDispatcher.b(listC);
        }
    }

    boolean z() {
        return this.mFragmentManager.V0();
    }

    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.mFragments = new LongSparseArray<>();
        this.mSavedStates = new LongSparseArray<>();
        this.mItemIdToViewHolder = new LongSparseArray<>();
        this.mFragmentEventDispatcher = new FragmentEventDispatcher();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManager;
        this.mLifecycle = lifecycle;
        super.setHasStableIds(true);
    }

    private void k(int i10) {
        long itemId = getItemId(i10);
        if (!this.mFragments.f(itemId)) {
            Fragment fragmentI = i(i10);
            fragmentI.setInitialSavedState(this.mSavedStates.h(itemId));
            this.mFragments.m(itemId, fragmentI);
        }
    }

    private static boolean n(@NonNull String str, @NonNull String str2) {
        if (str.startsWith(str2) && str.length() > str2.length()) {
            return true;
        }
        return false;
    }

    private static long u(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    void g(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() <= 1) {
            if (view.getParent() == frameLayout) {
                return;
            }
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            frameLayout.addView(view);
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final void onBindViewHolder(@NonNull final FragmentViewHolder fragmentViewHolder, int i10) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.getContainer().getId();
        Long lO = o(id);
        if (lO != null && lO.longValue() != itemId) {
            w(lO.longValue());
            this.mItemIdToViewHolder.n(lO.longValue());
        }
        this.mItemIdToViewHolder.m(itemId, Integer.valueOf(id));
        k(i10);
        final FrameLayout container = fragmentViewHolder.getContainer();
        if (ViewCompat.W(container)) {
            if (container.getParent() == null) {
                container.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                        if (container.getParent() != null) {
                            container.removeOnLayoutChangeListener(this);
                            FragmentStateAdapter.this.v(fragmentViewHolder);
                        }
                    }
                });
            } else {
                throw new IllegalStateException("Design assumption violated.");
            }
        }
        l();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
        return FragmentViewHolder.a(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        v(fragmentViewHolder);
        l();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long lO = o(fragmentViewHolder.getContainer().getId());
        if (lO != null) {
            w(lO.longValue());
            this.mItemIdToViewHolder.n(lO.longValue());
        }
    }
}
