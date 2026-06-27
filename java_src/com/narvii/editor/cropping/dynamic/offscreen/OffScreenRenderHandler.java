package com.narvii.editor.cropping.dynamic.offscreen;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OffScreenRenderHandler.kt */
/* loaded from: classes2.dex */
public final class OffScreenRenderHandler extends Handler {
    public static final Companion Companion = new Companion(null);
    public static final int MSG_PREPARE_OFFSCREEN_RENDER = 1;
    public static final int MSG_START_OFFSCREEN_RENDER = 0;
    private WeakReference<OffScreenRenderThread> weakOffScreenRenderThread;

    public OffScreenRenderHandler(OffScreenRenderThread offScreenRenderThread) {
        Intrinsics.checkParameterIsNotNull(offScreenRenderThread, "offScreenRenderThread");
        this.weakOffScreenRenderThread = new WeakReference<>(offScreenRenderThread);
    }

    /* compiled from: OffScreenRenderHandler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void startOffscreenRender() {
        sendMessage(obtainMessage(0));
    }

    public final void prepareOffscreenRender() {
        sendMessage(obtainMessage(1));
    }

    @Override // android.os.Handler
    public void dispatchMessage(Message message) {
        OffScreenRenderThread offScreenRenderThread = this.weakOffScreenRenderThread.get();
        if (offScreenRenderThread != null) {
            Intrinsics.checkExpressionValueIsNotNull(offScreenRenderThread, "weakOffScreenRenderThread.get() ?: return");
            Integer numValueOf = message != null ? Integer.valueOf(message.what) : null;
            if (numValueOf != null && numValueOf.intValue() == 0) {
                offScreenRenderThread.renderFrame();
            } else if (numValueOf != null && numValueOf.intValue() == 1) {
                offScreenRenderThread.prepareGL();
            }
        }
    }
}
