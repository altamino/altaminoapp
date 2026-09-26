package androidx.lifecycle;

import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {
    private SafeIterableMap<LiveData<?>, Source<?>> mSources;

    private static class Source<V> implements Observer<V> {
        final LiveData<V> mLiveData;
        final Observer<? super V> mObserver;
        int mVersion = -1;

        void a() {
            this.mLiveData.j(this);
        }

        void b() {
            this.mLiveData.n(this);
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable V v5) {
            if (this.mVersion != this.mLiveData.g()) {
                this.mVersion = this.mLiveData.g();
                this.mObserver.onChanged(v5);
            }
        }

        Source(LiveData<V> liveData, Observer<? super V> observer) {
            this.mLiveData = liveData;
            this.mObserver = observer;
        }
    }

    public MediatorLiveData() {
        this.mSources = new SafeIterableMap<>();
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    protected void k() {
        Iterator<Map.Entry<LiveData<?>, Source<?>>> it = this.mSources.iterator();
        while (it.hasNext()) {
            it.next().getValue().a();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    protected void l() {
        Iterator<Map.Entry<LiveData<?>, Source<?>>> it = this.mSources.iterator();
        while (it.hasNext()) {
            it.next().getValue().b();
        }
    }

    @MainThread
    public <S> void q(@NonNull LiveData<S> liveData, @NonNull Observer<? super S> observer) {
        if (liveData == null) {
            throw new NullPointerException("source cannot be null");
        }
        Source<?> source = new Source<>(liveData, observer);
        Source<?> sourceJ = this.mSources.j(liveData, source);
        if (sourceJ != null && sourceJ.mObserver != observer) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (sourceJ == null && h()) {
            source.a();
        }
    }

    @MainThread
    public <S> void r(@NonNull LiveData<S> liveData) {
        Source<?> sourceM = this.mSources.m(liveData);
        if (sourceM != null) {
            sourceM.b();
        }
    }

    public MediatorLiveData(T t5) {
        super(t5);
        this.mSources = new SafeIterableMap<>();
    }
}
