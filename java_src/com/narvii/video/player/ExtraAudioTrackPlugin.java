package com.narvii.video.player;

import android.content.Context;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.interfaces.IExtraAudioTrackPlugin;
import com.narvii.video.model.AVClipInfoPack;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExtraAudioTrackPlugin.kt */
/* loaded from: classes3.dex */
public final class ExtraAudioTrackPlugin implements IExtraAudioTrackPlugin {
    private final Context context;
    private IEditorAudioPlayer singleAudioTrackPlayer;

    public ExtraAudioTrackPlugin(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // com.narvii.video.interfaces.IExtraAudioTrackPlugin
    public IEditorAudioPlayer openSingleAudio(AVClipInfoPack audioClip, boolean z) {
        Intrinsics.checkParameterIsNotNull(audioClip, "audioClip");
        if (this.singleAudioTrackPlayer == null) {
            this.singleAudioTrackPlayer = new ExoEditorAudioPlayer(this.context);
        }
        IEditorAudioPlayer iEditorAudioPlayer = this.singleAudioTrackPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.stop();
        }
        IEditorAudioPlayer iEditorAudioPlayer2 = this.singleAudioTrackPlayer;
        if (iEditorAudioPlayer2 != null) {
            iEditorAudioPlayer2.setDataSource(audioClip, z);
        }
        IEditorAudioPlayer iEditorAudioPlayer3 = this.singleAudioTrackPlayer;
        if (iEditorAudioPlayer3 != null) {
            iEditorAudioPlayer3.setVolume(audioClip.trackVolume);
        }
        return this.singleAudioTrackPlayer;
    }
}
