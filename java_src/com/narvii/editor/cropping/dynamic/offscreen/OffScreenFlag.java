package com.narvii.editor.cropping.dynamic.offscreen;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: OffScreenFlag.kt */
/* loaded from: classes2.dex */
public final class OffScreenFlag {
    public static final Companion Companion = new Companion(null);
    private static boolean stopRenderThread;

    /* compiled from: OffScreenFlag.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getStopRenderThread() {
            return OffScreenFlag.stopRenderThread;
        }

        public final void setStopRenderThread(boolean z) {
            OffScreenFlag.stopRenderThread = z;
        }
    }
}
