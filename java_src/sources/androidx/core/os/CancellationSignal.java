package androidx.core.os;

import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes10.dex */
public final class CancellationSignal {
    private boolean mCancelInProgress;
    private Object mCancellationSignalObj;
    private boolean mIsCanceled;
    private OnCancelListener mOnCancelListener;

    @RequiresApi
    static class Api16Impl {
        @DoNotInline
        static void a(Object obj) {
            ((android.os.CancellationSignal) obj).cancel();
        }

        @DoNotInline
        static android.os.CancellationSignal b() {
            return new android.os.CancellationSignal();
        }

        private Api16Impl() {
        }
    }

    public interface OnCancelListener {
        void onCancel();
    }

    public void a() {
        synchronized (this) {
            try {
                if (this.mIsCanceled) {
                    return;
                }
                this.mIsCanceled = true;
                this.mCancelInProgress = true;
                OnCancelListener onCancelListener = this.mOnCancelListener;
                Object obj = this.mCancellationSignalObj;
                if (onCancelListener != null) {
                    try {
                        onCancelListener.onCancel();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.mCancelInProgress = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (obj != null) {
                    Api16Impl.a(obj);
                }
                synchronized (this) {
                    this.mCancelInProgress = false;
                    notifyAll();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Nullable
    public Object b() {
        Object obj;
        synchronized (this) {
            try {
                if (this.mCancellationSignalObj == null) {
                    android.os.CancellationSignal cancellationSignalB = Api16Impl.b();
                    this.mCancellationSignalObj = cancellationSignalB;
                    if (this.mIsCanceled) {
                        Api16Impl.a(cancellationSignalB);
                    }
                }
                obj = this.mCancellationSignalObj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    public void c(@Nullable OnCancelListener onCancelListener) {
        synchronized (this) {
            try {
                d();
                if (this.mOnCancelListener == onCancelListener) {
                    return;
                }
                this.mOnCancelListener = onCancelListener;
                if (this.mIsCanceled && onCancelListener != null) {
                    onCancelListener.onCancel();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void d() {
        while (this.mCancelInProgress) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }
}
