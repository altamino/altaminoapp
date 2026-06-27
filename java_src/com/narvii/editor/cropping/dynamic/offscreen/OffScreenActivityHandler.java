package com.narvii.editor.cropping.dynamic.offscreen;

import android.os.Handler;
import android.os.Message;
import com.narvii.editor.cropping.dynamic.DynamicCroppingActivity;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OffScreenActivityHandler.kt */
/* loaded from: classes2.dex */
public final class OffScreenActivityHandler extends Handler {
    public static final Companion Companion = new Companion(null);
    public static final int MSG_OFF_SCREEN_END = 0;
    public static final int MSG_OFF_SCRREN_PROGRESS = 1;
    private final DynamicCroppingActivity offScreenActivity;

    public OffScreenActivityHandler(DynamicCroppingActivity offScreenActivity) {
        Intrinsics.checkParameterIsNotNull(offScreenActivity, "offScreenActivity");
        this.offScreenActivity = offScreenActivity;
    }

    /* compiled from: OffScreenActivityHandler.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void sendOffscreenEnd() {
        sendMessage(obtainMessage(0));
    }

    public final void sendOffscreenProgress(int i) {
        sendMessage(obtainMessage(1, i, i));
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message == null) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            this.offScreenActivity.setDuration();
        } else {
            if (i != 1) {
                return;
            }
            this.offScreenActivity.setOffscreenProgress(message.arg1);
        }
    }
}
