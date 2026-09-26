package androidx.databinding;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleOwner;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
class WeakListener<T> extends WeakReference<ViewDataBinding> {
    protected final int mLocalFieldId;
    private final ObservableReference<T> mObservable;
    private T mTarget;

    public T b() {
        return this.mTarget;
    }

    public void c(LifecycleOwner lifecycleOwner) {
        this.mObservable.b(lifecycleOwner);
    }

    public boolean e() {
        boolean z6;
        T t5 = this.mTarget;
        if (t5 != null) {
            this.mObservable.c(t5);
            z6 = true;
        } else {
            z6 = false;
        }
        this.mTarget = null;
        return z6;
    }

    public WeakListener(ViewDataBinding viewDataBinding, int i10, ObservableReference<T> observableReference, ReferenceQueue<ViewDataBinding> referenceQueue) {
        super(viewDataBinding, referenceQueue);
        this.mLocalFieldId = i10;
        this.mObservable = observableReference;
    }

    @Nullable
    protected ViewDataBinding a() {
        ViewDataBinding viewDataBinding = (ViewDataBinding) get();
        if (viewDataBinding == null) {
            e();
        }
        return viewDataBinding;
    }

    public void d(T t5) {
        e();
        this.mTarget = t5;
        if (t5 != null) {
            this.mObservable.d(t5);
        }
    }
}
