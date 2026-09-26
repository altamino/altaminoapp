package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class SystemHandlerWrapper implements HandlerWrapper {
    private static final int MAX_POOL_SIZE = 50;

    @GuardedBy
    private static final List<SystemMessage> messagePool = new ArrayList(50);
    private final Handler handler;

    private static final class SystemMessage implements HandlerWrapper.Message {

        @Nullable
        private SystemHandlerWrapper handler;

        @Nullable
        private Message message;

        private SystemMessage() {
        }

        private void b() {
            this.message = null;
            this.handler = null;
            SystemHandlerWrapper.f(this);
        }

        public SystemMessage d(Message message, SystemHandlerWrapper systemHandlerWrapper) {
            this.message = message;
            this.handler = systemHandlerWrapper;
            return this;
        }

        @Override // androidx.media3.common.util.HandlerWrapper.Message
        public void a() {
            ((Message) Assertions.e(this.message)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) Assertions.e(this.message));
            b();
            return zSendMessageAtFrontOfQueue;
        }
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i10) {
        return e().d(this.handler.obtainMessage(i10), this);
    }

    private static SystemMessage e() {
        SystemMessage systemMessage;
        List<SystemMessage> list = messagePool;
        synchronized (list) {
            try {
                systemMessage = list.isEmpty() ? new SystemMessage() : list.remove(list.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return systemMessage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(SystemMessage systemMessage) {
        List<SystemMessage> list = messagePool;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(systemMessage);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public boolean a(int i10) {
        return this.handler.hasMessages(i10);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public boolean b(int i10, int i11) {
        return this.handler.sendEmptyMessageDelayed(i10, i11);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public boolean c(HandlerWrapper.Message message) {
        return ((SystemMessage) message).c(this.handler);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public Looper getLooper() {
        return this.handler.getLooper();
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i10, @Nullable Object obj) {
        return e().d(this.handler.obtainMessage(i10, obj), this);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public boolean post(Runnable runnable) {
        return this.handler.post(runnable);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public void removeCallbacksAndMessages(@Nullable Object obj) {
        this.handler.removeCallbacksAndMessages(obj);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public void removeMessages(int i10) {
        this.handler.removeMessages(i10);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public boolean sendEmptyMessage(int i10) {
        return this.handler.sendEmptyMessage(i10);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public boolean sendEmptyMessageAtTime(int i10, long j6) {
        return this.handler.sendEmptyMessageAtTime(i10, j6);
    }

    public SystemHandlerWrapper(Handler handler) {
        this.handler = handler;
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i10, int i11, int i12) {
        return e().d(this.handler.obtainMessage(i10, i11, i12), this);
    }

    @Override // androidx.media3.common.util.HandlerWrapper
    public HandlerWrapper.Message obtainMessage(int i10, int i11, int i12, @Nullable Object obj) {
        return e().d(this.handler.obtainMessage(i10, i11, i12, obj), this);
    }
}
