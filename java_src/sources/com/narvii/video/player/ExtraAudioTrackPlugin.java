package com.narvii.video.player;

import android.content.Context;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.interfaces.IExtraAudioTrackPlugin;
import com.narvii.video.model.AVClipInfoPack;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ExtraAudioTrackPlugin implements IExtraAudioTrackPlugin {

    @NotNull
    private final Context context;

    @Nullable
    private IEditorAudioPlayer singleAudioTrackPlayer;

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    public ExtraAudioTrackPlugin(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
    }

    @Override // com.narvii.video.interfaces.IExtraAudioTrackPlugin
    @Nullable
    public IEditorAudioPlayer openSingleAudio(@NotNull AVClipInfoPack audioClip, boolean z6) {
        t.j(audioClip, "audioClip");
        if (this.singleAudioTrackPlayer == null) {
            this.singleAudioTrackPlayer = new ExoEditorAudioPlayer(this.context);
        }
        IEditorAudioPlayer iEditorAudioPlayer = this.singleAudioTrackPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.stop();
        }
        IEditorAudioPlayer iEditorAudioPlayer2 = this.singleAudioTrackPlayer;
        if (iEditorAudioPlayer2 != null) {
            iEditorAudioPlayer2.setDataSource(audioClip, z6);
        }
        IEditorAudioPlayer iEditorAudioPlayer3 = this.singleAudioTrackPlayer;
        if (iEditorAudioPlayer3 != null) {
            iEditorAudioPlayer3.setVolume(audioClip.trackVolume);
        }
        return this.singleAudioTrackPlayer;
    }
}
