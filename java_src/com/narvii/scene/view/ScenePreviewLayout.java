package com.narvii.scene.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.app.NVApplication;
import com.narvii.mediaeditor.R;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.util.text.TextUtils;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.player.NvScenePlayer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ScenePreviewLayout.kt */
/* loaded from: classes3.dex */
public final class ScenePreviewLayout extends BaseScenePreviewLayout implements IScenePlayer.OnPlayingListener, View.OnClickListener {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "ScenePreviewLayout";
    private HashMap _$_findViewCache;
    private final AspectFrameLayout aspectFrameLayout;
    private boolean isAutoPlay;
    private boolean isPreciseControl;
    private final View maskView;
    private final View previewView;
    private final IScenePlayer scenePlayer;

    public ScenePreviewLayout(Context context) {
        this(context, null, 0, 6, null);
    }

    public ScenePreviewLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScenePreviewLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVScenePreviewLayout);
        this.isAutoPlay = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVScenePreviewLayout_auto_play, false) : false;
        this.isPreciseControl = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getBoolean(R.styleable.NVScenePreviewLayout_precise_control, false) : false;
        typedArrayObtainStyledAttributes.recycle();
        NVApplication nVApplicationInstance = NVApplication.instance();
        Intrinsics.checkExpressionValueIsNotNull(nVApplicationInstance, "NVApplication.instance()");
        NvScenePlayer nvScenePlayer = new NvScenePlayer(nVApplicationInstance);
        nvScenePlayer.setPreciseControl(this.isPreciseControl);
        nvScenePlayer.setOnPlayingListener(this);
        this.scenePlayer = nvScenePlayer;
        this.previewView = this.scenePlayer.getPreviewView();
        this.maskView = getMaskView();
        AspectFrameLayout aspectFrameLayout = new AspectFrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        aspectFrameLayout.setLayoutParams(layoutParams);
        aspectFrameLayout.addView(this.previewView);
        aspectFrameLayout.addView(this.maskView);
        this.aspectFrameLayout = aspectFrameLayout;
        addView(this.aspectFrameLayout);
        setOnClickListener(this);
    }

    public /* synthetic */ ScenePreviewLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* compiled from: ScenePreviewLayout.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void toResume() {
        toResume(false);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toResume(boolean z) {
        this.scenePlayer.restoreStatus();
        if (z) {
            this.scenePlayer.play();
        }
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toPause() {
        this.scenePlayer.pause();
    }

    public final void setSceneDraft(SceneDraft sceneDraft) {
        Intrinsics.checkParameterIsNotNull(sceneDraft, "sceneDraft");
        setSceneDraft(sceneDraft, 0);
    }

    public final void setSceneDraft(SceneDraft sceneDraft, int i) {
        Intrinsics.checkParameterIsNotNull(sceneDraft, "sceneDraft");
        List<SceneInfo> list = sceneDraft.sceneInfos;
        Intrinsics.checkExpressionValueIsNotNull(list, "sceneDraft.sceneInfos");
        setSceneList(list);
        setBackgroundMusicClip(sceneDraft.bgMusicClip);
        seekPoint(i);
        if (this.isAutoPlay) {
            post(new Runnable() { // from class: com.narvii.scene.view.ScenePreviewLayout.setSceneDraft.1
                @Override // java.lang.Runnable
                public final void run() {
                    ScenePreviewLayout.this.scenePlayer.play();
                }
            });
        }
        if (sceneDraft.isEmpty()) {
            this.previewView.setVisibility(8);
        } else {
            this.previewView.setVisibility(0);
        }
    }

    public final void setSceneList(List<SceneInfo> sceneList) {
        Intrinsics.checkParameterIsNotNull(sceneList, "sceneList");
        IScenePlayer iScenePlayer = this.scenePlayer;
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        iScenePlayer.setScenes(context, sceneList);
    }

    public final void setBackgroundMusicClip(AVClipInfoPack aVClipInfoPack) {
        IScenePlayer iScenePlayer = this.scenePlayer;
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        iScenePlayer.setBackgroundMusic(context, aVClipInfoPack);
    }

    public final void setLoop(boolean z) {
        this.scenePlayer.setLoop(z);
    }

    public final void setVolume(float f, float f2) {
        this.scenePlayer.setVolume(f, f2);
    }

    public final void setBackToBeginningWhenStop(boolean z) {
        this.scenePlayer.setStopLocation(z ? IScenePlayer.Companion.getBACK_TO_BEGINNING() : IScenePlayer.Companion.getBACK_TO_CURRENT_SCENE_BEGINNING());
    }

    public final void fadeBackgroundMusic(boolean z, boolean z2) {
        this.scenePlayer.fadeBackgroundMusic(z, z2);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void seekScene(String sceneId) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        seekScene(sceneId, false);
    }

    public final void seekScene(String sceneId, boolean z) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        if (TextUtils.isEmpty(sceneId)) {
            return;
        }
        this.scenePlayer.seekScene(sceneId, z);
    }

    public final void seekScene(SceneInfo sceneInfo) {
        seekScene(sceneInfo, false);
    }

    public final void seekScene(SceneInfo sceneInfo, boolean z) {
        if (sceneInfo != null) {
            String str = sceneInfo.id;
            Intrinsics.checkExpressionValueIsNotNull(str, "it.id");
            seekScene(str, z);
        }
    }

    public final void seekPoint(int i, long j) {
        this.scenePlayer.seek(i, j, false);
    }

    public final void seekPoint(long j) {
        this.scenePlayer.seek(j, false);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void play() {
        this.scenePlayer.play();
    }

    public final void playNext() {
        this.scenePlayer.playNextScene();
    }

    public final void playLast() {
        this.scenePlayer.playLastScene();
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void pause() {
        this.scenePlayer.pause();
    }

    public final void mute() {
        this.scenePlayer.mute();
    }

    public final void unMute() {
        this.scenePlayer.unMute();
    }

    public final void setVolumePercent(float f) {
        this.scenePlayer.setVolumePercent(f);
    }

    public final String getCurrentSceneId() {
        return this.scenePlayer.getCurrentSceneId();
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void release() {
        this.aspectFrameLayout.removeAllViews();
        this.scenePlayer.setOnPlayingListener(null);
        this.scenePlayer.release();
    }

    public final void release(Object... args) {
        Intrinsics.checkParameterIsNotNull(args, "args");
        this.aspectFrameLayout.removeAllViews();
        this.scenePlayer.setOnPlayingListener(null);
        this.scenePlayer.release(Arrays.copyOf(args, args.length));
    }

    public final long getTotalDuration() {
        return this.scenePlayer.getTotalDuration();
    }

    public final long getCurrentPosition() {
        return this.scenePlayer.getCurrentPosition();
    }

    public final int getCurrentSceneIndex() {
        return this.scenePlayer.getCurrentSceneIndex();
    }

    public final int getCurrentSceneIndexIgnoreEmpty() {
        return this.scenePlayer.getCurrentSceneIndexIgnoreEmpty();
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public boolean isPlaying() {
        return this.scenePlayer.isPlaying();
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingStop() {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingStop();
        }
        this.maskView.setVisibility(0);
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
    public void onPlayingError(Exception exc) {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingError(exc);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSeekingError(String sceneId, Exception exception) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onSeekingError(sceneId, exception);
        }
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneChanged(final String sceneId, final int i) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        post(new Runnable() { // from class: com.narvii.scene.view.ScenePreviewLayout.onSceneChanged.1
            @Override // java.lang.Runnable
            public final void run() {
                IScenePlayer.OnPlayingListener onPlayListener = ScenePreviewLayout.this.getOnPlayListener();
                if (onPlayListener != null) {
                    onPlayListener.onSceneChanged(sceneId, i);
                }
            }
        });
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onSceneEnd(final String sceneId, final int i) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        post(new Runnable() { // from class: com.narvii.scene.view.ScenePreviewLayout.onSceneEnd.1
            @Override // java.lang.Runnable
            public final void run() {
                IScenePlayer.OnPlayingListener onPlayListener = ScenePreviewLayout.this.getOnPlayListener();
                if (onPlayListener != null) {
                    onPlayListener.onSceneEnd(sceneId, i);
                }
            }
        });
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPlayingProgress(final long j, final long j2) {
        post(new Runnable() { // from class: com.narvii.scene.view.ScenePreviewLayout.onPlayingProgress.1
            @Override // java.lang.Runnable
            public final void run() {
                IScenePlayer.OnPlayingListener onPlayListener = ScenePreviewLayout.this.getOnPlayListener();
                if (onPlayListener != null) {
                    onPlayListener.onPlayingProgress(j, j2);
                }
            }
        });
    }

    @Override // com.narvii.scene.interfaces.IScenePlayer.OnPlayingListener
    public void onPrepared() {
        post(new Runnable() { // from class: com.narvii.scene.view.ScenePreviewLayout.onPrepared.1
            @Override // java.lang.Runnable
            public final void run() {
                IScenePlayer.OnPlayingListener onPlayListener = ScenePreviewLayout.this.getOnPlayListener();
                if (onPlayListener != null) {
                    onPlayListener.onPrepared();
                }
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.scenePlayer.isPlaying()) {
            this.scenePlayer.pause();
        } else {
            this.scenePlayer.play();
        }
    }

    private final View getMaskView() {
        View view = new View(getContext());
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        view.setAlpha(0.1f);
        return view;
    }
}
