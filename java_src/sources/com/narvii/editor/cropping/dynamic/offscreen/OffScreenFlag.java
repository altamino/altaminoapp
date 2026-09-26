package com.narvii.editor.cropping.dynamic.offscreen;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class OffScreenFlag {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean stopRenderThread;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final boolean getStopRenderThread() {
            return OffScreenFlag.stopRenderThread;
        }

        public final void setStopRenderThread(boolean z6) {
            OffScreenFlag.stopRenderThread = z6;
        }
    }
}
