package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes6.dex */
class y {
    private final Handler handler = new Handler(Looper.getMainLooper(), new a());
    private boolean isRecycling;

    private static final class a implements Handler.Callback {
        static final int RECYCLE_RESOURCE = 1;

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((v) message.obj).a();
            return true;
        }

        a() {
        }
    }

    synchronized void a(v<?> vVar, boolean z6) {
        try {
            if (this.isRecycling || z6) {
                this.handler.obtainMessage(1, vVar).sendToTarget();
            } else {
                this.isRecycling = true;
                vVar.a();
                this.isRecycling = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    y() {
    }
}
