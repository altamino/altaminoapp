package com.narvii.chat.video.utils;

import android.media.MediaPlayer;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class LiveChannelMusicHelper {

    @NotNull
    private final NVContext ctx;
    private boolean isPlayingMusic;

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public final boolean isPlayingMusic() {
        return this.isPlayingMusic;
    }

    public final void setPlayingMusic(boolean z6) {
        this.isPlayingMusic = z6;
    }

    public LiveChannelMusicHelper(@NotNull NVContext ctx) {
        kotlin.jvm.internal.t.j(ctx, "ctx");
        this.ctx = ctx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void playHintMusic$lambda$0(LiveChannelMusicHelper this$0, MediaPlayer mediaPlayer) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.isPlayingMusic = false;
    }

    public final void playHintMusic(int i10) {
        int i11;
        if (this.isPlayingMusic) {
            return;
        }
        this.isPlayingMusic = true;
        if (i10 == 1) {
            i11 = R.raw.rtc_join;
        } else if (i10 != 2) {
            i11 = i10 != 3 ? 0 : R.raw.rtc_badnetwork;
        } else {
            i11 = R.raw.rtc_leave;
        }
        if (i11 == 0) {
            this.isPlayingMusic = false;
            return;
        }
        try {
            MediaPlayer mediaPlayerCreate = MediaPlayer.create(this.ctx.getContext(), i11);
            mediaPlayerCreate.setAudioStreamType(3);
            mediaPlayerCreate.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.narvii.chat.video.utils.a
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    LiveChannelMusicHelper.playHintMusic$lambda$0(this.f2144a, mediaPlayer);
                }
            });
            mediaPlayerCreate.start();
        } catch (Exception e) {
            Log.e(e.getMessage());
            this.isPlayingMusic = false;
        }
    }
}
