package com.narvii.chat.video.utils;

import com.narvii.app.NVContext;
import com.narvii.model.ChatThread;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VVChatLogHelper.kt */
/* loaded from: classes2.dex */
public final class VVChatLogHelper {
    private final NVContext ctx;

    public final void logJoinsActiveLiveChannel(int i, String str, ChatThread chatThread) {
    }

    public final void logLeaveLiveChannel(int i, String str, ChatThread chatThread) {
    }

    public final void logMinimizeLiveChannel(int i, String str, ChatThread chatThread) {
    }

    public final void logStartLiveChannel(int i, boolean z, String str, ChatThread chatThread) {
    }

    public final void logStopPresentingLiveChannel(int i, String str, ChatThread chatThread) {
    }

    public final String statChannelType(int i) {
        if (i == 1) {
            return "Voice";
        }
        if (i == 3) {
            return "Avatar";
        }
        if (i == 4) {
            return "Video";
        }
        if (i != 5) {
            return null;
        }
        return "Screening Room";
    }

    public VVChatLogHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }
}
