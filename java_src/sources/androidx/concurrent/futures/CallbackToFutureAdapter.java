package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.k;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes7.dex */
public final class CallbackToFutureAdapter {

    public static final class Completer<T> {
        private boolean attemptedSetting;
        private ResolvableFuture<Void> cancellationFuture = ResolvableFuture.u();
        SafeFuture<T> future;
        Object tag;

        private void d() {
            this.tag = null;
            this.future = null;
            this.cancellationFuture = null;
        }

        void a() {
            this.tag = null;
            this.future = null;
            this.cancellationFuture.q(null);
        }

        public boolean b(T t5) {
            this.attemptedSetting = true;
            SafeFuture<T> safeFuture = this.future;
            boolean z6 = safeFuture != null && safeFuture.b(t5);
            if (z6) {
                d();
            }
            return z6;
        }

        public boolean c() {
            this.attemptedSetting = true;
            SafeFuture<T> safeFuture = this.future;
            boolean z6 = safeFuture != null && safeFuture.a(true);
            if (z6) {
                d();
            }
            return z6;
        }

        public boolean e(@NonNull Throwable th) {
            this.attemptedSetting = true;
            SafeFuture<T> safeFuture = this.future;
            boolean z6 = safeFuture != null && safeFuture.c(th);
            if (z6) {
                d();
            }
            return z6;
        }

        protected void finalize() {
            ResolvableFuture<Void> resolvableFuture;
            SafeFuture<T> safeFuture = this.future;
            if (safeFuture != null && !safeFuture.isDone()) {
                safeFuture.c(new FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.tag));
            }
            if (this.attemptedSetting || (resolvableFuture = this.cancellationFuture) == null) {
                return;
            }
            resolvableFuture.q(null);
        }

        Completer() {
        }
    }

    public interface Resolver<T> {
        @Nullable
        Object a(@NonNull Completer<T> completer) throws Exception;
    }

    private static final class SafeFuture<T> implements k<T> {
        final WeakReference<Completer<T>> completerWeakReference;
        private final AbstractResolvableFuture<T> delegate = new AbstractResolvableFuture<T>() { // from class: androidx.concurrent.futures.CallbackToFutureAdapter.SafeFuture.1
            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            protected String n() {
                Completer<T> completer = SafeFuture.this.completerWeakReference.get();
                if (completer == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + completer.tag + "]";
            }
        };

        @Override // java.util.concurrent.Future
        public T get() throws ExecutionException, InterruptedException {
            return this.delegate.get();
        }

        boolean a(boolean z6) {
            return this.delegate.cancel(z6);
        }

        @Override // com.google.common.util.concurrent.k
        public void addListener(@NonNull Runnable runnable, @NonNull Executor executor) {
            this.delegate.addListener(runnable, executor);
        }

        boolean b(T t5) {
            return this.delegate.q(t5);
        }

        boolean c(Throwable th) {
            return this.delegate.r(th);
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z6) {
            Completer<T> completer = this.completerWeakReference.get();
            boolean zCancel = this.delegate.cancel(z6);
            if (zCancel && completer != null) {
                completer.a();
            }
            return zCancel;
        }

        @Override // java.util.concurrent.Future
        public T get(long j6, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return this.delegate.get(j6, timeUnit);
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.delegate.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.delegate.isDone();
        }

        public String toString() {
            return this.delegate.toString();
        }

        SafeFuture(Completer<T> completer) {
            this.completerWeakReference = new WeakReference<>(completer);
        }
    }

    static final class FutureGarbageCollectedException extends Throwable {
        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }

        FutureGarbageCollectedException(String str) {
            super(str);
        }
    }

    @NonNull
    public static <T> k<T> a(@NonNull Resolver<T> resolver) {
        Completer<T> completer = new Completer<>();
        SafeFuture<T> safeFuture = new SafeFuture<>(completer);
        completer.future = safeFuture;
        completer.tag = resolver.getClass();
        try {
            Object objA = resolver.a(completer);
            if (objA != null) {
                completer.tag = objA;
            }
        } catch (Exception e) {
            safeFuture.c(e);
        }
        return safeFuture;
    }

    private CallbackToFutureAdapter() {
    }
}
