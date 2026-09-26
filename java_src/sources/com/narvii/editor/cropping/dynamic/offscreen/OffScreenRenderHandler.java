package com.narvii.editor.cropping.dynamic.offscreen;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class OffScreenRenderHandler extends Handler {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MSG_PREPARE_OFFSCREEN_RENDER = 1;
    public static final int MSG_START_OFFSCREEN_RENDER = 0;

    @NotNull
    private WeakReference<OffScreenRenderThread> weakOffScreenRenderThread;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void prepareOffscreenRender() {
        sendMessage(obtainMessage(1));
    }

    public final void startOffscreenRender() {
        sendMessage(obtainMessage(0));
    }

    public OffScreenRenderHandler(@NotNull OffScreenRenderThread offScreenRenderThread) {
        t.j(offScreenRenderThread, "offScreenRenderThread");
        this.weakOffScreenRenderThread = new WeakReference<>(offScreenRenderThread);
    }

    @Override // android.os.Handler
    public void dispatchMessage(@NotNull Message msg) {
        t.j(msg, "msg");
        OffScreenRenderThread offScreenRenderThread = this.weakOffScreenRenderThread.get();
        if (offScreenRenderThread == null) {
            return;
        }
        int i10 = msg.what;
        if (i10 == 0) {
            offScreenRenderThread.renderFrame();
        } else {
            if (i10 != 1) {
                return;
            }
            offScreenRenderThread.prepareGL();
        }
    }
}
