package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class u3 {
    private static final String TAG = "StreamVolumeManager";
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private static final int VOLUME_FLAGS = 1;
    private final Context applicationContext;
    private final AudioManager audioManager;
    private final Handler eventHandler;
    private final b listener;
    private boolean muted;

    @Nullable
    private c receiver;
    private int streamType;
    private int volume;

    public interface b {
        void p(int i10);

        void s(int i10, boolean z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = u3.this.eventHandler;
            final u3 u3Var = u3.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.v3
                @Override // java.lang.Runnable
                public final void run() {
                    u3.b(u3Var);
                }
            });
        }
    }

    private static boolean e(AudioManager audioManager, int i10) {
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 23) {
            return audioManager.isStreamMute(i10);
        }
        return f(audioManager, i10) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int iF = f(this.audioManager, this.streamType);
        boolean zE = e(this.audioManager, this.streamType);
        if (this.volume == iF && this.muted == zE) {
            return;
        }
        this.volume = iF;
        this.muted = zE;
        this.listener.s(iF, zE);
    }

    public int c() {
        return this.audioManager.getStreamMaxVolume(this.streamType);
    }

    public int d() {
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 28) {
            return this.audioManager.getStreamMinVolume(this.streamType);
        }
        return 0;
    }

    public void g() {
        c cVar = this.receiver;
        if (cVar != null) {
            try {
                this.applicationContext.unregisterReceiver(cVar);
            } catch (RuntimeException e) {
                com.google.android.exoplayer2.util.t.j(TAG, "Error unregistering stream volume receiver", e);
            }
            this.receiver = null;
        }
    }

    public void h(int i10) {
        if (this.streamType == i10) {
            return;
        }
        this.streamType = i10;
        i();
        this.listener.p(i10);
    }

    public u3(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.applicationContext = applicationContext;
        this.eventHandler = handler;
        this.listener = bVar;
        AudioManager audioManager = (AudioManager) com.google.android.exoplayer2.util.a.i((AudioManager) applicationContext.getSystemService("audio"));
        this.audioManager = audioManager;
        this.streamType = 3;
        this.volume = f(audioManager, 3);
        this.muted = e(audioManager, this.streamType);
        c cVar = new c();
        try {
            com.google.android.exoplayer2.util.o0.E0(applicationContext, cVar, new IntentFilter(VOLUME_CHANGED_ACTION));
            this.receiver = cVar;
        } catch (RuntimeException e) {
            com.google.android.exoplayer2.util.t.j(TAG, "Error registering stream volume receiver", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(u3 u3Var) {
        u3Var.i();
    }

    private static int f(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e) {
            com.google.android.exoplayer2.util.t.j(TAG, "Could not retrieve stream volume for stream type " + i10, e);
            return audioManager.getStreamMaxVolume(i10);
        }
    }
}
