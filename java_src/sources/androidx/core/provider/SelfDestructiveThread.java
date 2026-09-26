package androidx.core.provider;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
@Deprecated
public class SelfDestructiveThread {
    private static final int MSG_DESTRUCTION = 0;
    private static final int MSG_INVOKE_RUNNABLE = 1;
    private final int mDestructAfterMillisec;

    @GuardedBy
    private Handler mHandler;
    private final int mPriority;

    @GuardedBy
    private HandlerThread mThread;
    private final String mThreadName;
    private final Object mLock = new Object();
    private Handler.Callback mCallback = new Handler.Callback() { // from class: androidx.core.provider.SelfDestructiveThread.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                SelfDestructiveThread.this.a();
                return true;
            }
            if (i10 != 1) {
                return true;
            }
            SelfDestructiveThread.this.b((Runnable) message.obj);
            return true;
        }
    };

    @GuardedBy
    private int mGeneration = 0;

    /* JADX INFO: renamed from: androidx.core.provider.SelfDestructiveThread$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ SelfDestructiveThread this$0;
        final /* synthetic */ Callable val$callable;
        final /* synthetic */ Handler val$calleeHandler;
        final /* synthetic */ ReplyCallback val$reply;

        @Override // java.lang.Runnable
        public void run() {
            final Object objCall;
            try {
                objCall = this.val$callable.call();
            } catch (Exception unused) {
                objCall = null;
            }
            this.val$calleeHandler.post(new Runnable() { // from class: androidx.core.provider.SelfDestructiveThread.2.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass2.this.val$reply.a(objCall);
                }
            });
        }
    }

    /* JADX INFO: renamed from: androidx.core.provider.SelfDestructiveThread$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes10.dex */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ SelfDestructiveThread this$0;
        final /* synthetic */ Callable val$callable;
        final /* synthetic */ Condition val$cond;
        final /* synthetic */ AtomicReference val$holder;
        final /* synthetic */ ReentrantLock val$lock;
        final /* synthetic */ AtomicBoolean val$running;

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.val$holder.set(this.val$callable.call());
            } catch (Exception unused) {
            }
            this.val$lock.lock();
            try {
                this.val$running.set(false);
                this.val$cond.signal();
            } finally {
                this.val$lock.unlock();
            }
        }
    }

    public interface ReplyCallback<T> {
        void a(T t5);
    }

    void a() {
        synchronized (this.mLock) {
            try {
                if (this.mHandler.hasMessages(1)) {
                    return;
                }
                this.mThread.quit();
                this.mThread = null;
                this.mHandler = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public SelfDestructiveThread(String str, int i10, int i11) {
        this.mThreadName = str;
        this.mPriority = i10;
        this.mDestructAfterMillisec = i11;
    }

    void b(Runnable runnable) {
        runnable.run();
        synchronized (this.mLock) {
            this.mHandler.removeMessages(0);
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(0), this.mDestructAfterMillisec);
        }
    }
}
