package com.narvii.editor.cropping.dynamic.offscreen;

import android.util.Log;

/* compiled from: FrameCallback.kt */
/* loaded from: classes2.dex */
public interface FrameCallback {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final String TAG = "FrameCallback";

    void decodeFrameBegin();

    void decodeFrameEnd();

    void decodeOneFrame(long j);

    /* compiled from: FrameCallback.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String TAG = "FrameCallback";

        private Companion() {
        }
    }

    /* compiled from: FrameCallback.kt */
    public static final class DefaultImpls {
        public static void decodeOneFrame(FrameCallback frameCallback, long j) {
        }

        public static void decodeFrameBegin(FrameCallback frameCallback) {
            Log.d("FrameCallback", "decodeFrameBegin");
        }

        public static void decodeFrameEnd(FrameCallback frameCallback) {
            Log.d("FrameCallback", "decodeFrameEnd");
        }
    }
}
