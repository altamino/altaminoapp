package com.narvii.editor.cropping.dynamic.offscreen;

import android.os.Handler;
import android.os.Message;
import com.narvii.editor.cropping.dynamic.DynamicCroppingActivity;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class OffScreenActivityHandler extends Handler {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MSG_OFF_SCREEN_END = 0;
    public static final int MSG_OFF_SCRREN_PROGRESS = 1;

    @NotNull
    private final DynamicCroppingActivity offScreenActivity;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void sendOffscreenEnd() {
        sendMessage(obtainMessage(0));
    }

    public final void sendOffscreenProgress(int i10) {
        sendMessage(obtainMessage(1, i10, i10));
    }

    public OffScreenActivityHandler(@NotNull DynamicCroppingActivity offScreenActivity) {
        t.j(offScreenActivity, "offScreenActivity");
        this.offScreenActivity = offScreenActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(@NotNull Message msg) {
        t.j(msg, "msg");
        int i10 = msg.what;
        if (i10 == 0) {
            this.offScreenActivity.setDuration();
        } else {
            if (i10 != 1) {
                return;
            }
            this.offScreenActivity.setOffscreenProgress(msg.arg1);
        }
    }
}
