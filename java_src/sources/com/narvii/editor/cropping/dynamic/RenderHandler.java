package com.narvii.editor.cropping.dynamic;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.Surface;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class RenderHandler extends Handler {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MSG_ANOTHER_SURFACE_CHANGED = 14;
    public static final int MSG_CHANGE_FILTER = 6;
    public static final int MSG_CUSTOM_WATER_MARK_BITMAP = 10;
    public static final int MSG_CUSTOM_WATER_MARK_RECT = 11;
    public static final int MSG_DO_FRAME = 2;
    public static final int MSG_RENDER_ANOTHER_SURFACE = 7;
    public static final int MSG_SHUTDOWN = 3;
    public static final int MSG_START_PLAY = 15;
    public static final int MSG_START_RECORD = 4;
    public static final int MSG_STOP_RECORD = 5;
    public static final int MSG_STOP_RENDER_ANOTHER_SURFACE = 8;
    public static final int MSG_SURFACE_CHANGED = 1;
    public static final int MSG_SURFACE_CREATED = 0;
    public static final int MSG_VIDEO_EDITOR_RECT = 9;
    public static final int MSG_VIDEO_SIZE_CHANGED = 13;
    public static final int MSG_VIDEO_TRANSFORM = 12;

    @NotNull
    private WeakReference<RenderThread> weakRenderThread;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void changeFilter(int i10) {
        sendMessage(obtainMessage(6, i10, 0));
    }

    public final void renderAnotherSurface(@Nullable Surface surface) {
        sendMessage(obtainMessage(7, surface));
    }

    public final void sendShutDown() {
        sendMessage(obtainMessage(3));
    }

    public final void sendSurfaceChanged(int i10, int i11, int i12) {
        sendMessage(obtainMessage(1, i11, i12));
    }

    public final void sendSurfaceCreated(int i10) {
        sendMessage(obtainMessage(0, i10, 0));
    }

    public RenderHandler(@NotNull RenderThread renderThread) {
        t.j(renderThread, "renderThread");
        this.weakRenderThread = new WeakReference<>(renderThread);
    }

    public final void anotherSurfaceChanged(int i10, int i11) {
        sendMessage(obtainMessage(14, i10, i11));
    }

    @Override // android.os.Handler
    public void handleMessage(@NotNull Message msg) {
        t.j(msg, "msg");
        int i10 = msg.what;
        RenderThread renderThread = this.weakRenderThread.get();
        if (renderThread == null) {
            return;
        }
        switch (i10) {
            case 0:
                renderThread.surfaceCreated(msg.arg1);
                return;
            case 1:
                renderThread.surfaceChanged(msg.arg1, msg.arg2);
                return;
            case 2:
                renderThread.doFrame((((long) msg.arg1) << 32) | (((long) msg.arg2) & 4294967295L));
                return;
            case 3:
                renderThread.shutDown();
                return;
            case 4:
            case 5:
            case 10:
            case 11:
            default:
                throw new IllegalArgumentException();
            case 6:
                renderThread.resetFilter(msg.arg1);
                return;
            case 7:
                Object obj = msg.obj;
                if (obj != null) {
                    renderThread.renderAnotherSurface((Surface) obj);
                    return;
                }
                return;
            case 8:
                renderThread.stopRenderAnotherSurface();
                return;
            case 9:
                Object obj2 = msg.obj;
                t.h(obj2, "null cannot be cast to non-null type android.graphics.Rect");
                renderThread.setVideoEditorRect((Rect) obj2);
                return;
            case 12:
                Object obj3 = msg.obj;
                t.h(obj3, "null cannot be cast to non-null type kotlin.FloatArray");
                renderThread.setVideoTransform((float[]) obj3);
                return;
            case 13:
                renderThread.setVideoSizeChanged(msg.arg1, msg.arg2);
                return;
            case 14:
                renderThread.anotherSurfaceChanged(msg.arg1, msg.arg2);
                return;
            case 15:
                renderThread.startPlay();
                return;
        }
    }

    public final void sendDoFrame(long j6) {
        sendMessage(obtainMessage(2, (int) (j6 >> 32), (int) j6));
    }

    public final void setVideoEditorRect(@NotNull Rect rect) {
        t.j(rect, "rect");
        sendMessage(obtainMessage(9, rect));
    }

    public final void setVideoSizeChanged(int i10, int i11) {
        sendMessage(obtainMessage(13, i10, i11));
    }

    public final void setVideoTransform(@NotNull float[] floatArray) {
        t.j(floatArray, "floatArray");
        sendMessage(obtainMessage(12, floatArray));
    }

    public final void startPlay() {
        sendMessage(obtainMessage(15));
    }

    public final void stopRenderAnotherSurface() {
        sendMessage(obtainMessage(8));
    }
}
