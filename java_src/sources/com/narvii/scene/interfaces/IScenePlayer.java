package com.narvii.scene.interfaces;

import android.content.Context;
import android.view.View;
import com.narvii.scene.model.SceneInfo;
import com.narvii.video.model.AVClipInfoPack;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface IScenePlayer {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    public interface BeforePlayingListener {
        void beforePlayingPause();

        void beforePlayingStart();
    }

    public interface OnPlayingListener {
        void onPlayingError(@Nullable Exception exc);

        void onPlayingPause();

        void onPlayingProgress(long j6, long j10);

        void onPlayingStart();

        void onPlayingStop();

        void onPrepared();

        void onSceneChanged(@NotNull String str, int i10);

        void onSceneEnd(@NotNull String str, int i10);

        void onSeekingError(@NotNull String str, @NotNull Exception exc);
    }

    void fadeBackgroundMusic(boolean z6, boolean z10);

    long getCurrentPosition();

    @NotNull
    String getCurrentSceneId();

    int getCurrentSceneIndex();

    int getCurrentSceneIndexIgnoreEmpty();

    @NotNull
    View getPreviewView();

    int getSceneCount();

    int getSceneCountIgnoreEmpty();

    long getTotalDuration();

    boolean isPlaying();

    void mute();

    void pause();

    void play();

    @NotNull
    String playLastScene();

    @NotNull
    String playNextScene();

    void release();

    void release(@NotNull Object... objArr);

    void restoreStatus();

    void seek(int i10, long j6, boolean z6);

    void seek(long j6, boolean z6);

    void seekScene(@NotNull String str, boolean z6);

    void setBackgroundMusic(@NotNull Context context, @Nullable AVClipInfoPack aVClipInfoPack);

    void setLoop(boolean z6);

    void setOnPlayingListener(@Nullable OnPlayingListener onPlayingListener);

    void setPreciseControl(boolean z6);

    void setScenes(@NotNull Context context, @NotNull List<SceneInfo> list);

    void setStopLocation(int i10);

    void setVolume(float f, float f6);

    void setVolumePercent(float f);

    void unMute();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int BACK_TO_BEGINNING = 1;
        private static final int BACK_TO_CURRENT_SCENE_BEGINNING = 2;

        public final int getBACK_TO_BEGINNING() {
            return BACK_TO_BEGINNING;
        }

        public final int getBACK_TO_CURRENT_SCENE_BEGINNING() {
            return BACK_TO_CURRENT_SCENE_BEGINNING;
        }

        private Companion() {
        }
    }
}
