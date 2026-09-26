package com.narvii.scene.view;

import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.util.Utils;
import java.util.TimerTask;
import kotlin.jvm.internal.t;

/* JADX INFO: loaded from: classes8.dex */
public final class EditScenePreviewLayout$timerTask$1 extends TimerTask {
    final /* synthetic */ EditScenePreviewLayout this$0;

    EditScenePreviewLayout$timerTask$1(EditScenePreviewLayout editScenePreviewLayout) {
        this.this$0 = editScenePreviewLayout;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (this.this$0.isPlaying) {
            final EditScenePreviewLayout editScenePreviewLayout = this.this$0;
            Utils.post(new Runnable() { // from class: com.narvii.scene.view.d
                @Override // java.lang.Runnable
                public final void run() {
                    EditScenePreviewLayout$timerTask$1.run$lambda$0(editScenePreviewLayout);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void run$lambda$0(EditScenePreviewLayout this$0) {
        t.j(this$0, "this$0");
        IScenePlayer.OnPlayingListener onPlayListener = this$0.getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(this$0.getCurrentPosition(), this$0.getTotalDuration());
        }
    }
}
