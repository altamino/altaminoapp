package com.narvii.scene.view;

import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.util.Utils;
import java.util.TimerTask;

/* compiled from: EditScenePreviewLayout.kt */
/* loaded from: classes3.dex */
public final class EditScenePreviewLayout$timerTask$1 extends TimerTask {
    final /* synthetic */ EditScenePreviewLayout this$0;

    EditScenePreviewLayout$timerTask$1(EditScenePreviewLayout editScenePreviewLayout) {
        this.this$0 = editScenePreviewLayout;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (this.this$0.isPlaying) {
            Utils.post(new Runnable() { // from class: com.narvii.scene.view.EditScenePreviewLayout$timerTask$1$run$1
                @Override // java.lang.Runnable
                public final void run() {
                    IScenePlayer.OnPlayingListener onPlayListener = this.this$0.this$0.getOnPlayListener();
                    if (onPlayListener != null) {
                        onPlayListener.onPlayingProgress(this.this$0.this$0.getCurrentPosition(), this.this$0.this$0.getTotalDuration());
                    }
                }
            });
        }
    }
}
