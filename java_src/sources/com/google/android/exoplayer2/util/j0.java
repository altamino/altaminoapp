package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
final class j0 implements p {
    private static final int MAX_POOL_SIZE = 50;

    @GuardedBy
    private static final List<b> messagePool = new ArrayList(50);
    private final Handler handler;

    private static final class b implements p.a {

        @Nullable
        private j0 handler;

        @Nullable
        private Message message;

        private b() {
        }

        private void b() {
            this.message = null;
            this.handler = null;
            j0.e(this);
        }

        public b d(Message message, j0 j0Var) {
            this.message = message;
            this.handler = j0Var;
            return this;
        }

        @Override // com.google.android.exoplayer2.util.p.a
        public void a() {
            ((Message) com.google.android.exoplayer2.util.a.e(this.message)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean zSendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) com.google.android.exoplayer2.util.a.e(this.message));
            b();
            return zSendMessageAtFrontOfQueue;
        }
    }

    @Override // com.google.android.exoplayer2.util.p
    public p.a obtainMessage(int i10) {
        return d().d(this.handler.obtainMessage(i10), this);
    }

    private static b d() {
        b bVar;
        List<b> list = messagePool;
        synchronized (list) {
            try {
                bVar = list.isEmpty() ? new b() : list.remove(list.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(b bVar) {
        List<b> list = messagePool;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(bVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.p
    public boolean a(int i10) {
        return this.handler.hasMessages(i10);
    }

    @Override // com.google.android.exoplayer2.util.p
    public boolean b(p.a aVar) {
        return ((b) aVar).c(this.handler);
    }

    @Override // com.google.android.exoplayer2.util.p
    public p.a obtainMessage(int i10, @Nullable Object obj) {
        return d().d(this.handler.obtainMessage(i10, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.p
    public boolean post(Runnable runnable) {
        return this.handler.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.p
    public void removeCallbacksAndMessages(@Nullable Object obj) {
        this.handler.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.p
    public void removeMessages(int i10) {
        this.handler.removeMessages(i10);
    }

    @Override // com.google.android.exoplayer2.util.p
    public boolean sendEmptyMessage(int i10) {
        return this.handler.sendEmptyMessage(i10);
    }

    @Override // com.google.android.exoplayer2.util.p
    public boolean sendEmptyMessageAtTime(int i10, long j6) {
        return this.handler.sendEmptyMessageAtTime(i10, j6);
    }

    public j0(Handler handler) {
        this.handler = handler;
    }

    @Override // com.google.android.exoplayer2.util.p
    public p.a obtainMessage(int i10, int i11, int i12) {
        return d().d(this.handler.obtainMessage(i10, i11, i12), this);
    }

    @Override // com.google.android.exoplayer2.util.p
    public p.a obtainMessage(int i10, int i11, int i12, @Nullable Object obj) {
        return d().d(this.handler.obtainMessage(i10, i11, i12, obj), this);
    }
}
