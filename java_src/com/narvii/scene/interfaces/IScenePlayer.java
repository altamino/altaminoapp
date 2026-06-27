package com.narvii.scene.interfaces;

import android.content.Context;
import android.view.View;
import com.narvii.scene.model.SceneInfo;
import com.narvii.video.model.AVClipInfoPack;
import java.util.List;

/* compiled from: IScenePlayer.kt */
/* loaded from: classes3.dex */
public interface IScenePlayer {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: IScenePlayer.kt */
    public interface BeforePlayingListener {
        void beforePlayingPause();

        void beforePlayingStart();
    }

    /* compiled from: IScenePlayer.kt */
    public interface OnPlayingListener {
        void onPlayingError(Exception exc);

        void onPlayingPause();

        void onPlayingProgress(long j, long j2);

        void onPlayingStart();

        void onPlayingStop();

        void onPrepared();

        void onSceneChanged(String str, int i);

        void onSceneEnd(String str, int i);

        void onSeekingError(String str, Exception exc);
    }

    void fadeBackgroundMusic(boolean z, boolean z2);

    long getCurrentPosition();

    String getCurrentSceneId();

    int getCurrentSceneIndex();

    int getCurrentSceneIndexIgnoreEmpty();

    View getPreviewView();

    int getSceneCount();

    int getSceneCountIgnoreEmpty();

    long getTotalDuration();

    boolean isPlaying();

    void mute();

    void pause();

    void play();

    String playLastScene();

    String playNextScene();

    void release();

    void release(Object... objArr);

    void restoreStatus();

    void seek(int i, long j, boolean z);

    void seek(long j, boolean z);

    void seekScene(String str, boolean z);

    void setBackgroundMusic(Context context, AVClipInfoPack aVClipInfoPack);

    void setLoop(boolean z);

    void setOnPlayingListener(OnPlayingListener onPlayingListener);

    void setPreciseControl(boolean z);

    void setScenes(Context context, List<SceneInfo> list);

    void setStopLocation(int i);

    void setVolume(float f, float f2);

    void setVolumePercent(float f);

    void unMute();

    /* compiled from: IScenePlayer.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int BACK_TO_BEGINNING = 1;
        private static final int BACK_TO_CURRENT_SCENE_BEGINNING = 2;

        private Companion() {
        }

        public final int getBACK_TO_BEGINNING() {
            return BACK_TO_BEGINNING;
        }

        public final int getBACK_TO_CURRENT_SCENE_BEGINNING() {
            return BACK_TO_CURRENT_SCENE_BEGINNING;
        }
    }
}
