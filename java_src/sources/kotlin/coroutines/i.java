package kotlin.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.v;

/* JADX INFO: loaded from: classes8.dex */
public final class i<T> implements d<T>, kotlin.coroutines.jvm.internal.e {

    @NotNull
    private static final a Companion = new a(null);
    private static final AtomicReferenceFieldUpdater<i<?>, Object> RESULT = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "result");

    @NotNull
    private final d<T> delegate;

    @Nullable
    private volatile Object result;

    private static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(@NotNull d<? super T> delegate, @Nullable Object obj) {
        t.j(delegate, "delegate");
        this.delegate = delegate;
        this.result = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(@NotNull d<? super T> delegate) {
        this(delegate, kotlin.coroutines.intrinsics.a.UNDECIDED);
        t.j(delegate, "delegate");
    }

    @Nullable
    public final Object a() throws Throwable {
        Object obj = this.result;
        kotlin.coroutines.intrinsics.a aVar = kotlin.coroutines.intrinsics.a.UNDECIDED;
        if (obj == aVar) {
            if (androidx.concurrent.futures.a.a(RESULT, this, aVar, kotlin.coroutines.intrinsics.d.e())) {
                return kotlin.coroutines.intrinsics.d.e();
            }
            obj = this.result;
        }
        if (obj == kotlin.coroutines.intrinsics.a.RESUMED) {
            return kotlin.coroutines.intrinsics.d.e();
        }
        if (obj instanceof v.b) {
            throw ((v.b) obj).exception;
        }
        return obj;
    }

    @Override // kotlin.coroutines.jvm.internal.e
    @Nullable
    public kotlin.coroutines.jvm.internal.e getCallerFrame() {
        d<T> dVar = this.delegate;
        if (dVar instanceof kotlin.coroutines.jvm.internal.e) {
            return (kotlin.coroutines.jvm.internal.e) dVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.d
    @NotNull
    public g getContext() {
        return this.delegate.getContext();
    }

    @Override // kotlin.coroutines.d
    public void resumeWith(@NotNull Object obj) {
        while (true) {
            Object obj2 = this.result;
            kotlin.coroutines.intrinsics.a aVar = kotlin.coroutines.intrinsics.a.UNDECIDED;
            if (obj2 == aVar) {
                if (androidx.concurrent.futures.a.a(RESULT, this, aVar, obj)) {
                    return;
                }
            } else {
                if (obj2 != kotlin.coroutines.intrinsics.d.e()) {
                    throw new IllegalStateException("Already resumed");
                }
                if (androidx.concurrent.futures.a.a(RESULT, this, kotlin.coroutines.intrinsics.d.e(), kotlin.coroutines.intrinsics.a.RESUMED)) {
                    this.delegate.resumeWith(obj);
                    return;
                }
            }
        }
    }

    @NotNull
    public String toString() {
        return "SafeContinuation for " + this.delegate;
    }
}
