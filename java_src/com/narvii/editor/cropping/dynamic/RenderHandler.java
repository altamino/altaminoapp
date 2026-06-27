package com.narvii.editor.cropping.dynamic;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.Surface;
import java.lang.ref.WeakReference;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RenderHandler.kt */
/* loaded from: classes2.dex */
public final class RenderHandler extends Handler {
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
    private WeakReference<RenderThread> weakRenderThread;

    public RenderHandler(RenderThread renderThread) {
        Intrinsics.checkParameterIsNotNull(renderThread, "renderThread");
        this.weakRenderThread = new WeakReference<>(renderThread);
    }

    /* compiled from: RenderHandler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void sendSurfaceCreated(int i) {
        sendMessage(obtainMessage(0, i, 0));
    }

    public final void sendSurfaceChanged(int i, int i2, int i3) {
        sendMessage(obtainMessage(1, i2, i3));
    }

    public final void sendDoFrame(long j) {
        sendMessage(obtainMessage(2, (int) (j >> 32), (int) j));
    }

    public final void sendShutDown() {
        sendMessage(obtainMessage(3));
    }

    public final void changeFilter(int i) {
        sendMessage(obtainMessage(6, i, 0));
    }

    public final void renderAnotherSurface(Surface surface) {
        sendMessage(obtainMessage(7, surface));
    }

    public final void stopRenderAnotherSurface() {
        sendMessage(obtainMessage(8));
    }

    public final void setVideoEditorRect(Rect rect) {
        Intrinsics.checkParameterIsNotNull(rect, "rect");
        sendMessage(obtainMessage(9, rect));
    }

    public final void setVideoTransform(float[] floatArray) {
        Intrinsics.checkParameterIsNotNull(floatArray, "floatArray");
        sendMessage(obtainMessage(12, floatArray));
    }

    public final void setVideoSizeChanged(int i, int i2) {
        sendMessage(obtainMessage(13, i, i2));
    }

    public final void anotherSurfaceChanged(int i, int i2) {
        sendMessage(obtainMessage(14, i, i2));
    }

    public final void startPlay() {
        sendMessage(obtainMessage(15));
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Integer numValueOf = message != null ? Integer.valueOf(message.what) : null;
        RenderThread renderThread = this.weakRenderThread.get();
        if (renderThread != null) {
            Intrinsics.checkExpressionValueIsNotNull(renderThread, "weakRenderThread.get() ?: return");
            if (numValueOf != null && numValueOf.intValue() == 0) {
                renderThread.surfaceCreated(message.arg1);
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 1) {
                renderThread.surfaceChanged(message.arg1, message.arg2);
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 2) {
                renderThread.doFrame((message.arg1 << 32) | (message.arg2 & 4294967295L));
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 3) {
                renderThread.shutDown();
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 6) {
                renderThread.resetFilter(message.arg1);
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 7) {
                Object obj = message.obj;
                if (obj != null) {
                    renderThread.renderAnotherSurface((Surface) obj);
                    return;
                }
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 8) {
                renderThread.stopRenderAnotherSurface();
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 9) {
                Object obj2 = message.obj;
                if (obj2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.graphics.Rect");
                }
                renderThread.setVideoEditorRect((Rect) obj2);
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 12) {
                Object obj3 = message.obj;
                if (obj3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.FloatArray");
                }
                renderThread.setVideoTransform((float[]) obj3);
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 13) {
                renderThread.setVideoSizeChanged(message.arg1, message.arg2);
                return;
            }
            if (numValueOf != null && numValueOf.intValue() == 14) {
                renderThread.anotherSurfaceChanged(message.arg1, message.arg2);
            } else {
                if (numValueOf != null && numValueOf.intValue() == 15) {
                    renderThread.startPlay();
                    return;
                }
                throw new IllegalArgumentException();
            }
        }
    }
}
