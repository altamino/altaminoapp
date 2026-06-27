package com.narvii.chat.video.utils;

import android.media.MediaPlayer;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LiveChannelMusicHelper.kt */
/* loaded from: classes2.dex */
public final class LiveChannelMusicHelper {
    private final NVContext ctx;
    private boolean isPlayingMusic;

    public LiveChannelMusicHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean isPlayingMusic() {
        return this.isPlayingMusic;
    }

    public final void setPlayingMusic(boolean z) {
        this.isPlayingMusic = z;
    }

    public final void playHintMusic(int i) throws IllegalStateException {
        if (this.isPlayingMusic) {
            return;
        }
        this.isPlayingMusic = true;
        int i2 = i != 1 ? i != 2 ? i != 3 ? 0 : R.raw.rtc_badnetwork : R.raw.rtc_leave : R.raw.rtc_join;
        if (i2 == 0) {
            this.isPlayingMusic = false;
            return;
        }
        try {
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(this.ctx.getContext(), i2);
            mediaPlayerCreate.setAudioStreamType(3);
            mediaPlayerCreate.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.narvii.chat.video.utils.LiveChannelMusicHelper.playHintMusic.1
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    LiveChannelMusicHelper.this.setPlayingMusic(false);
                }
            });
            mediaPlayerCreate.start();
        } catch (Exception e) {
            Log.e(e.getMessage());
            this.isPlayingMusic = false;
        }
    }
}
