package com.narvii.editor.cropping.dynamic.offscreen;

import android.util.Log;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface FrameCallback {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    public static final String TAG = "FrameCallback";

    public static final class DefaultImpls {
        public static void decodeOneFrame(@NotNull FrameCallback frameCallback, long j6) {
        }

        public static void decodeFrameBegin(@NotNull FrameCallback frameCallback) {
            Log.d("FrameCallback", "decodeFrameBegin");
        }

        public static void decodeFrameEnd(@NotNull FrameCallback frameCallback) {
            Log.d("FrameCallback", "decodeFrameEnd");
        }
    }

    void decodeFrameBegin();

    void decodeFrameEnd();

    void decodeOneFrame(long j6);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        public static final String TAG = "FrameCallback";

        private Companion() {
        }
    }
}
