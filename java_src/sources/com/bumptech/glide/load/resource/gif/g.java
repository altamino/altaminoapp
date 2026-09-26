package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.m;
import com.bumptech.glide.util.k;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
class g {
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private final List<b> callbacks;
    private a current;
    private Bitmap firstFrame;
    private int firstFrameSize;
    private final com.bumptech.glide.gifdecoder.a gifDecoder;
    private final Handler handler;
    private int height;
    private boolean isCleared;
    private boolean isLoadPending;
    private boolean isRunning;
    private a next;

    @Nullable
    private d onEveryFrameListener;
    private a pendingTarget;
    private com.bumptech.glide.i<Bitmap> requestBuilder;
    final com.bumptech.glide.j requestManager;
    private boolean startFromFirstFrame;
    private m<Bitmap> transformation;
    private int width;

    @VisibleForTesting
    static class a extends com.bumptech.glide.request.target.a<Bitmap> {
        private final Handler handler;
        final int index;
        private Bitmap resource;
        private final long targetTime;

        @Override // com.bumptech.glide.request.target.e
        public void d(@Nullable Drawable drawable) {
            this.resource = null;
        }

        Bitmap i() {
            return this.resource;
        }

        @Override // com.bumptech.glide.request.target.e
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(@NonNull Bitmap bitmap, @Nullable com.bumptech.glide.request.transition.b<? super Bitmap> bVar) {
            this.resource = bitmap;
            this.handler.sendMessageAtTime(this.handler.obtainMessage(1, this), this.targetTime);
        }

        a(Handler handler, int i10, long j6) {
            this.handler = handler;
            this.index = i10;
            this.targetTime = j6;
        }
    }

    public interface b {
        void a();
    }

    private class c implements Handler.Callback {
        static final int MSG_CLEAR = 2;
        static final int MSG_DELAY = 1;

        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                g.this.m((a) message.obj);
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            g.this.requestManager.l((a) message.obj);
            return false;
        }
    }

    @VisibleForTesting
    interface d {
    }

    g(com.bumptech.glide.b bVar, com.bumptech.glide.gifdecoder.a aVar, int i10, int i11, m<Bitmap> mVar, Bitmap bitmap) {
        this(bVar.f(), com.bumptech.glide.b.t(bVar.h()), aVar, null, i(com.bumptech.glide.b.t(bVar.h()), i10, i11), mVar, bitmap);
    }

    private void q() {
        this.isRunning = false;
    }

    Bitmap e() {
        return this.firstFrame;
    }

    int h() {
        return this.height;
    }

    int k() {
        return this.width;
    }

    @VisibleForTesting
    void m(a aVar) {
        this.isLoadPending = false;
        if (this.isCleared) {
            this.handler.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.isRunning) {
            this.pendingTarget = aVar;
            return;
        }
        if (aVar.i() != null) {
            n();
            a aVar2 = this.current;
            this.current = aVar;
            for (int size = this.callbacks.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).a();
            }
            if (aVar2 != null) {
                this.handler.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        l();
    }

    private static com.bumptech.glide.load.g g() {
        return new z0.b(Double.valueOf(Math.random()));
    }

    private void l() {
        if (!this.isRunning || this.isLoadPending) {
            return;
        }
        if (this.startFromFirstFrame) {
            com.bumptech.glide.util.j.a(this.pendingTarget == null, "Pending target must be null when starting from the first frame");
            this.gifDecoder.b();
            this.startFromFirstFrame = false;
        }
        a aVar = this.pendingTarget;
        if (aVar != null) {
            this.pendingTarget = null;
            m(aVar);
            return;
        }
        this.isLoadPending = true;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) this.gifDecoder.h());
        this.gifDecoder.f();
        this.next = new a(this.handler, this.gifDecoder.c(), jUptimeMillis);
        this.requestBuilder.b(y0.f.d0(g())).n0(this.gifDecoder).j0(this.next);
    }

    private void n() {
        Bitmap bitmap = this.firstFrame;
        if (bitmap != null) {
            this.bitmapPool.c(bitmap);
            this.firstFrame = null;
        }
    }

    private void p() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        this.isCleared = false;
        l();
    }

    void a() {
        this.callbacks.clear();
        n();
        q();
        a aVar = this.current;
        if (aVar != null) {
            this.requestManager.l(aVar);
            this.current = null;
        }
        a aVar2 = this.next;
        if (aVar2 != null) {
            this.requestManager.l(aVar2);
            this.next = null;
        }
        a aVar3 = this.pendingTarget;
        if (aVar3 != null) {
            this.requestManager.l(aVar3);
            this.pendingTarget = null;
        }
        this.gifDecoder.clear();
        this.isCleared = true;
    }

    ByteBuffer b() {
        return this.gifDecoder.getData().asReadOnlyBuffer();
    }

    Bitmap c() {
        a aVar = this.current;
        return aVar != null ? aVar.i() : this.firstFrame;
    }

    int d() {
        a aVar = this.current;
        if (aVar != null) {
            return aVar.index;
        }
        return -1;
    }

    int f() {
        return this.gifDecoder.g();
    }

    int j() {
        return this.gifDecoder.d() + this.firstFrameSize;
    }

    void r(b bVar) {
        if (this.isCleared) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.callbacks.contains(bVar)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = this.callbacks.isEmpty();
        this.callbacks.add(bVar);
        if (zIsEmpty) {
            p();
        }
    }

    void s(b bVar) {
        this.callbacks.remove(bVar);
        if (this.callbacks.isEmpty()) {
            q();
        }
    }

    private static com.bumptech.glide.i<Bitmap> i(com.bumptech.glide.j jVar, int i10, int i11) {
        return jVar.j().b(y0.f.c0(com.bumptech.glide.load.engine.j.NONE).a0(true).V(true).L(i10, i11));
    }

    void o(m<Bitmap> mVar, Bitmap bitmap) {
        this.transformation = (m) com.bumptech.glide.util.j.d(mVar);
        this.firstFrame = (Bitmap) com.bumptech.glide.util.j.d(bitmap);
        this.requestBuilder = this.requestBuilder.b(new y0.f().W(mVar));
        this.firstFrameSize = k.g(bitmap);
        this.width = bitmap.getWidth();
        this.height = bitmap.getHeight();
    }

    g(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, com.bumptech.glide.j jVar, com.bumptech.glide.gifdecoder.a aVar, Handler handler, com.bumptech.glide.i<Bitmap> iVar, m<Bitmap> mVar, Bitmap bitmap) {
        this.callbacks = new ArrayList();
        this.requestManager = jVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.bitmapPool = dVar;
        this.handler = handler;
        this.requestBuilder = iVar;
        this.gifDecoder = aVar;
        o(mVar, bitmap);
    }
}
