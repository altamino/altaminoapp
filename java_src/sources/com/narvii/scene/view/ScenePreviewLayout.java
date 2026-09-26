package com.narvii.scene.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.narvii.app.NVApplication;
import com.narvii.mediaeditor.R;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.text.TextUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.player.NvScenePlayer;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ScenePreviewLayout extends BaseScenePreviewLayout implements IScenePlayer.OnPlayingListener, View.OnClickListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "ScenePreviewLayout";

    @NotNull
    private final AspectFrameLayout aspectFrameLayout;
    private boolean isAutoPlay;
    private boolean isPreciseControl;

    @NotNull
    private final View maskView;

    @NotNull
    private final View previewView;

    @NotNull
    private final IScenePlayer scenePlayer;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScenePreviewLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void release() {
        this.aspectFrameLayout.removeAllViews();
        this.scenePlayer.setOnPlayingListener(null);
        this.scenePlayer.release();
    }

    public final void seekPoint(int i10, long j6) {
        this.scenePlayer.seek(i10, j6, false);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void seekScene(@NotNull String sceneId) {
        t.j(sceneId, "sceneId");
        seekScene(sceneId, false);
    }

    public final void setSceneDraft(@NotNull SceneDraft sceneDraft) {
        t.j(sceneDraft, "sceneDraft");
        setSceneDraft(sceneDraft, 0);
    }

    public final void toResume() {
        toResume(false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ScenePreviewLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    private final View getMaskView() {
        View view = new View(getContext());
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        view.setAlpha(0.1f);
        return view;
    }

    public final void fadeBackgroundMusic(boolean z6, boolean z10) {
        this.scenePlayer.fadeBackgroundMusic(z6, z10);
    }

    public final long getCurrentPosition() {
        return this.scenePlayer.getCurrentPosition();
    }

    @NotNull
    public final String getCurrentSceneId() {
        return this.scenePlayer.getCurrentSceneId();
    }

    public final int getCurrentSceneIndex() {
        return this.scenePlayer.getCurrentSceneIndex();
    }

    public final int getCurrentSceneIndexIgnoreEmpty() {
        return this.scenePlayer.getCurrentSceneIndexIgnoreEmpty();
    }

    public final long getTotalDuration() {
        return this.scenePlayer.getTotalDuration();
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public boolean isPlaying() {
        return this.scenePlayer.isPlaying();
    }

    public final void mute() {
        this.scenePlayer.mute();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        if (this.scenePlayer.isPlaying()) {
            this.scenePlayer.pause();
        } else {
            this.scenePlayer.play();
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingProgress(final long j6, final long j10) {
        post(new Runnable() { // from class: com.narvii.scene.view.e
            @Override // java.lang.Runnable
            public final void run() {
                ScenePreviewLayout.onPlayingProgress$lambda$7(this.f2709a, j6, j10);
            }
        });
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPrepared() {
        post(new Runnable() { // from class: com.narvii.scene.view.h
            @Override // java.lang.Runnable
            public final void run() {
                ScenePreviewLayout.onPrepared$lambda$8(this.f2716a);
            }
        });
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneChanged(@NotNull final String sceneId, final int i10) {
        t.j(sceneId, "sceneId");
        post(new Runnable() { // from class: com.narvii.scene.view.g
            @Override // java.lang.Runnable
            public final void run() {
                ScenePreviewLayout.onSceneChanged$lambda$5(this.f2713a, sceneId, i10);
            }
        });
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneEnd(@NotNull final String sceneId, final int i10) {
        t.j(sceneId, "sceneId");
        post(new Runnable() { // from class: com.narvii.scene.view.i
            @Override // java.lang.Runnable
            public final void run() {
                ScenePreviewLayout.onSceneEnd$lambda$6(this.f2717a, sceneId, i10);
            }
        });
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSeekingError(@NotNull String sceneId, @NotNull Exception exception) {
        t.j(sceneId, "sceneId");
        t.j(exception, "exception");
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onSeekingError(sceneId, exception);
        }
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void pause() {
        this.scenePlayer.pause();
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void play() {
        this.scenePlayer.play();
    }

    public final void playLast() {
        this.scenePlayer.playLastScene();
    }

    public final void playNext() {
        this.scenePlayer.playNextScene();
    }

    public final void seekPoint(long j6) {
        this.scenePlayer.seek(j6, false);
    }

    public final void seekScene(@NotNull String sceneId, boolean z6) {
        t.j(sceneId, "sceneId");
        if (TextUtils.isEmpty(sceneId)) {
            return;
        }
        this.scenePlayer.seekScene(sceneId, z6);
    }

    public final void setBackToBeginningWhenStop(boolean z6) {
        this.scenePlayer.setStopLocation(z6 ? IScenePlayer.Companion.getBACK_TO_BEGINNING() : IScenePlayer.Companion.getBACK_TO_CURRENT_SCENE_BEGINNING());
    }

    public final void setBackgroundMusicClip(@Nullable AVClipInfoPack aVClipInfoPack) {
        IScenePlayer iScenePlayer = this.scenePlayer;
        Context context = getContext();
        t.i(context, "getContext(...)");
        iScenePlayer.setBackgroundMusic(context, aVClipInfoPack);
    }

    public final void setLoop(boolean z6) {
        this.scenePlayer.setLoop(z6);
    }

    public final void setSceneDraft(@NotNull SceneDraft sceneDraft, int i10) {
        t.j(sceneDraft, "sceneDraft");
        List<SceneInfo> sceneInfos = sceneDraft.sceneInfos;
        t.i(sceneInfos, "sceneInfos");
        setSceneList(sceneInfos);
        setBackgroundMusicClip(sceneDraft.bgMusicClip);
        seekPoint(i10);
        if (this.isAutoPlay) {
            post(new Runnable() { // from class: com.narvii.scene.view.f
                @Override // java.lang.Runnable
                public final void run() {
                    ScenePreviewLayout.setSceneDraft$lambda$3(this.f2712a);
                }
            });
        }
        if (sceneDraft.isEmpty()) {
            this.previewView.setVisibility(8);
        } else {
            this.previewView.setVisibility(0);
        }
    }

    public final void setSceneList(@NotNull List<SceneInfo> sceneList) {
        t.j(sceneList, "sceneList");
        IScenePlayer iScenePlayer = this.scenePlayer;
        Context context = getContext();
        t.i(context, "getContext(...)");
        iScenePlayer.setScenes(context, sceneList);
    }

    public final void setVolume(float f, float f6) {
        this.scenePlayer.setVolume(f, f6);
    }

    public final void setVolumePercent(float f) {
        this.scenePlayer.setVolumePercent(f);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toPause() {
        this.scenePlayer.pause();
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toResume(boolean z6) {
        this.scenePlayer.restoreStatus();
        if (z6) {
            this.scenePlayer.play();
        }
    }

    public final void unMute() {
        this.scenePlayer.unMute();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScenePreviewLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVScenePreviewLayout);
        t.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.isAutoPlay = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVScenePreviewLayout_auto_play, false);
        this.isPreciseControl = typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVScenePreviewLayout_precise_control, false);
        typedArrayObtainStyledAttributes.recycle();
        NVApplication nVApplicationInstance = NVApplication.instance();
        t.i(nVApplicationInstance, "instance(...)");
        NvScenePlayer nvScenePlayer = new NvScenePlayer(nVApplicationInstance);
        nvScenePlayer.setPreciseControl(this.isPreciseControl);
        nvScenePlayer.setOnPlayingListener(this);
        this.scenePlayer = nvScenePlayer;
        View previewView = nvScenePlayer.getPreviewView();
        this.previewView = previewView;
        View maskView = getMaskView();
        this.maskView = maskView;
        AspectFrameLayout aspectFrameLayout = new AspectFrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        aspectFrameLayout.setLayoutParams(layoutParams);
        aspectFrameLayout.addView(previewView);
        aspectFrameLayout.addView(maskView);
        this.aspectFrameLayout = aspectFrameLayout;
        addView(aspectFrameLayout);
        setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPlayingProgress$lambda$7(ScenePreviewLayout this$0, long j6, long j10) {
        t.j(this$0, "this$0");
        IScenePlayer.OnPlayingListener onPlayListener = this$0.getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingProgress(j6, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPrepared$lambda$8(ScenePreviewLayout this$0) {
        t.j(this$0, "this$0");
        IScenePlayer.OnPlayingListener onPlayListener = this$0.getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSceneChanged$lambda$5(ScenePreviewLayout this$0, String sceneId, int i10) {
        t.j(this$0, "this$0");
        t.j(sceneId, "$sceneId");
        IScenePlayer.OnPlayingListener onPlayListener = this$0.getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onSceneChanged(sceneId, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSceneEnd$lambda$6(ScenePreviewLayout this$0, String sceneId, int i10) {
        t.j(this$0, "this$0");
        t.j(sceneId, "$sceneId");
        IScenePlayer.OnPlayingListener onPlayListener = this$0.getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onSceneEnd(sceneId, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setSceneDraft$lambda$3(ScenePreviewLayout this$0) {
        t.j(this$0, "this$0");
        this$0.scenePlayer.play();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingError(@Nullable Exception exc) {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingError(exc);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingPause() {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingPause();
        }
        this.maskView.setVisibility(0);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStart() {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingStart();
        }
        this.maskView.setVisibility(8);
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStop() {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingStop();
        }
        this.maskView.setVisibility(0);
    }

    public final void release(@NotNull Object... args) {
        t.j(args, "args");
        this.aspectFrameLayout.removeAllViews();
        this.scenePlayer.setOnPlayingListener(null);
        this.scenePlayer.release(Arrays.copyOf(args, args.length));
    }

    public final void seekScene(@Nullable SceneInfo sceneInfo) {
        seekScene(sceneInfo, false);
    }

    public final void seekScene(@Nullable SceneInfo sceneInfo, boolean z6) {
        if (sceneInfo != null) {
            String id = sceneInfo.id;
            t.i(id, "id");
            seekScene(id, z6);
        }
    }

    public /* synthetic */ ScenePreviewLayout(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
