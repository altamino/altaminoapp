package defpackage;

import android.util.Log;
import androidx.annotation.MainThread;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import e8.l;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.g;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class a<T> extends MutableLiveData<T> {

    @NotNull
    private final AtomicBoolean mPending = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a$a, reason: collision with other inner class name */
    static final class C0000a extends v implements l<T, l0> {
        final /* synthetic */ Observer<? super T> $observer;
        final /* synthetic */ a<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0000a(a<T> aVar, Observer<? super T> observer) {
            super(1);
            this.this$0 = aVar;
            this.$observer = observer;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
            invoke2(obj);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(T t5) {
            if (((a) this.this$0).mPending.compareAndSet(true, false)) {
                this.$observer.onChanged(t5);
            }
        }
    }

    static final class b implements Observer, n {
        private final /* synthetic */ l function;

        b(l function) {
            t.j(function, "function");
            this.function = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if ((obj instanceof Observer) && (obj instanceof n)) {
                return t.e(getFunctionDelegate(), ((n) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // kotlin.jvm.internal.n
        @NotNull
        public final g<?> getFunctionDelegate() {
            return this.function;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.function.invoke(obj);
        }
    }

    @Override // androidx.lifecycle.LiveData
    @MainThread
    public void i(@NotNull LifecycleOwner owner, @NotNull Observer<? super T> observer) {
        t.j(owner, "owner");
        t.j(observer, "observer");
        if (h()) {
            Log.w("SingleLiveEvent", "Multiple observers registered but only one will be notified of changes.");
        }
        super.i(owner, new b(new C0000a(this, observer)));
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    public void m(@Nullable T t5) {
        this.mPending.set(true);
        super.m(t5);
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    @MainThread
    public void p(@Nullable T t5) {
        this.mPending.set(true);
        super.p(t5);
    }
}
