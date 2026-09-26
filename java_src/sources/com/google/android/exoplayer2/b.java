package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

/* JADX INFO: loaded from: classes9.dex */
final class b {
    private final Context context;
    private final a receiver;
    private boolean receiverRegistered;

    private final class a extends BroadcastReceiver implements Runnable {
        private final Handler eventHandler;
        private final InterfaceC0166b listener;

        public a(Handler handler, InterfaceC0166b interfaceC0166b) {
            this.eventHandler = handler;
            this.listener = interfaceC0166b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.receiverRegistered) {
                this.listener.j();
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.b$b, reason: collision with other inner class name */
    public interface InterfaceC0166b {
        void j();
    }

    public void b(boolean z6) {
        if (z6 && !this.receiverRegistered) {
            com.google.android.exoplayer2.util.o0.E0(this.context, this.receiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.receiverRegistered = true;
        } else {
            if (z6 || !this.receiverRegistered) {
                return;
            }
            this.context.unregisterReceiver(this.receiver);
            this.receiverRegistered = false;
        }
    }

    public b(Context context, Handler handler, InterfaceC0166b interfaceC0166b) {
        this.context = context.getApplicationContext();
        this.receiver = new a(handler, interfaceC0166b);
    }
}
