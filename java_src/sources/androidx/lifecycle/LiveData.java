package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LiveData<T> {
    static final Object NOT_SET = new Object();
    static final int START_VERSION = -1;
    int mActiveCount;
    private boolean mChangingActiveState;
    private volatile Object mData;
    final Object mDataLock;
    private boolean mDispatchInvalidated;
    private boolean mDispatchingValue;
    private SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper> mObservers;
    volatile Object mPendingData;
    private final Runnable mPostValueRunnable;
    private int mVersion;

    private class AlwaysActiveObserver extends LiveData<T>.ObserverWrapper {
        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean d() {
            return true;
        }

        AlwaysActiveObserver(Observer<? super T> observer) {
            super(observer);
        }
    }

    class LifecycleBoundObserver extends LiveData<T>.ObserverWrapper implements LifecycleEventObserver {

        @NonNull
        final LifecycleOwner mOwner;

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean c(LifecycleOwner lifecycleOwner) {
            return this.mOwner == lifecycleOwner;
        }

        LifecycleBoundObserver(LifecycleOwner lifecycleOwner, Observer<? super T> observer) {
            super(observer);
            this.mOwner = lifecycleOwner;
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        void b() {
            this.mOwner.getLifecycle().d(this);
        }

        @Override // androidx.lifecycle.LiveData.ObserverWrapper
        boolean d() {
            return this.mOwner.getLifecycle().b().b(Lifecycle.State.STARTED);
        }

        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            Lifecycle.State stateB = this.mOwner.getLifecycle().b();
            if (stateB == Lifecycle.State.DESTROYED) {
                LiveData.this.n(this.mObserver);
                return;
            }
            Lifecycle.State state = null;
            while (state != stateB) {
                a(d());
                state = stateB;
                stateB = this.mOwner.getLifecycle().b();
            }
        }
    }

    private abstract class ObserverWrapper {
        boolean mActive;
        int mLastVersion = -1;
        final Observer<? super T> mObserver;

        void b() {
        }

        boolean c(LifecycleOwner lifecycleOwner) {
            return false;
        }

        abstract boolean d();

        ObserverWrapper(Observer<? super T> observer) {
            this.mObserver = observer;
        }

        void a(boolean z6) {
            if (z6 == this.mActive) {
                return;
            }
            this.mActive = z6;
            LiveData.this.c(z6 ? 1 : -1);
            if (this.mActive) {
                LiveData.this.e(this);
            }
        }
    }

    public LiveData(T t5) {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        this.mPendingData = NOT_SET;
        this.mPostValueRunnable = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj;
                synchronized (LiveData.this.mDataLock) {
                    obj = LiveData.this.mPendingData;
                    LiveData.this.mPendingData = LiveData.NOT_SET;
                }
                LiveData.this.p(obj);
            }
        };
        this.mData = t5;
        this.mVersion = 0;
    }

    @Nullable
    public T f() {
        T t5 = (T) this.mData;
        if (t5 != NOT_SET) {
            return t5;
        }
        return null;
    }

    int g() {
        return this.mVersion;
    }

    public boolean h() {
        return this.mActiveCount > 0;
    }

    protected void k() {
    }

    protected void l() {
    }

    private void d(LiveData<T>.ObserverWrapper observerWrapper) {
        if (observerWrapper.mActive) {
            if (!observerWrapper.d()) {
                observerWrapper.a(false);
                return;
            }
            int i10 = observerWrapper.mLastVersion;
            int i11 = this.mVersion;
            if (i10 >= i11) {
                return;
            }
            observerWrapper.mLastVersion = i11;
            observerWrapper.mObserver.onChanged((Object) this.mData);
        }
    }

    @MainThread
    void c(int i10) {
        int i11 = this.mActiveCount;
        this.mActiveCount = i10 + i11;
        if (this.mChangingActiveState) {
            return;
        }
        this.mChangingActiveState = true;
        while (true) {
            try {
                int i12 = this.mActiveCount;
                if (i11 == i12) {
                    this.mChangingActiveState = false;
                    return;
                }
                boolean z6 = i11 == 0 && i12 > 0;
                boolean z10 = i11 > 0 && i12 == 0;
                if (z6) {
                    k();
                } else if (z10) {
                    l();
                }
                i11 = i12;
            } catch (Throwable th) {
                this.mChangingActiveState = false;
                throw th;
            }
        }
    }

    void e(@Nullable LiveData<T>.ObserverWrapper observerWrapper) {
        if (this.mDispatchingValue) {
            this.mDispatchInvalidated = true;
            return;
        }
        this.mDispatchingValue = true;
        do {
            this.mDispatchInvalidated = false;
            if (observerWrapper != null) {
                d(observerWrapper);
                observerWrapper = null;
            } else {
                SafeIterableMap<Observer<? super T>, LiveData<T>.ObserverWrapper>.IteratorWithAdditions iteratorWithAdditionsE = this.mObservers.e();
                while (iteratorWithAdditionsE.hasNext()) {
                    d((ObserverWrapper) iteratorWithAdditionsE.next().getValue());
                    if (this.mDispatchInvalidated) {
                        break;
                    }
                }
            }
        } while (this.mDispatchInvalidated);
        this.mDispatchingValue = false;
    }

    @MainThread
    public void i(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        b("observe");
        if (lifecycleOwner.getLifecycle().b() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(lifecycleOwner, observer);
        LiveData<T>.ObserverWrapper observerWrapperJ = this.mObservers.j(observer, lifecycleBoundObserver);
        if (observerWrapperJ != null && !observerWrapperJ.c(lifecycleOwner)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (observerWrapperJ != null) {
            return;
        }
        lifecycleOwner.getLifecycle().a(lifecycleBoundObserver);
    }

    @MainThread
    public void j(@NonNull Observer<? super T> observer) {
        b("observeForever");
        AlwaysActiveObserver alwaysActiveObserver = new AlwaysActiveObserver(observer);
        LiveData<T>.ObserverWrapper observerWrapperJ = this.mObservers.j(observer, alwaysActiveObserver);
        if (observerWrapperJ instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (observerWrapperJ != null) {
            return;
        }
        alwaysActiveObserver.a(true);
    }

    protected void m(T t5) {
        boolean z6;
        synchronized (this.mDataLock) {
            z6 = this.mPendingData == NOT_SET;
            this.mPendingData = t5;
        }
        if (z6) {
            ArchTaskExecutor.h().d(this.mPostValueRunnable);
        }
    }

    @MainThread
    public void n(@NonNull Observer<? super T> observer) {
        b("removeObserver");
        LiveData<T>.ObserverWrapper observerWrapperM = this.mObservers.m(observer);
        if (observerWrapperM == null) {
            return;
        }
        observerWrapperM.b();
        observerWrapperM.a(false);
    }

    @MainThread
    public void o(@NonNull LifecycleOwner lifecycleOwner) {
        b("removeObservers");
        for (Map.Entry<Observer<? super T>, LiveData<T>.ObserverWrapper> entry : this.mObservers) {
            if (entry.getValue().c(lifecycleOwner)) {
                n(entry.getKey());
            }
        }
    }

    @MainThread
    protected void p(T t5) {
        b("setValue");
        this.mVersion++;
        this.mData = t5;
        e(null);
    }

    static void b(String str) {
        if (ArchTaskExecutor.h().c()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    public LiveData() {
        this.mDataLock = new Object();
        this.mObservers = new SafeIterableMap<>();
        this.mActiveCount = 0;
        Object obj = NOT_SET;
        this.mPendingData = obj;
        this.mPostValueRunnable = new Runnable() { // from class: androidx.lifecycle.LiveData.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Object obj2;
                synchronized (LiveData.this.mDataLock) {
                    obj2 = LiveData.this.mPendingData;
                    LiveData.this.mPendingData = LiveData.NOT_SET;
                }
                LiveData.this.p(obj2);
            }
        };
        this.mData = obj;
        this.mVersion = -1;
    }
}
