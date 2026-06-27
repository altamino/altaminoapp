package com.narvii.scene.view;

import android.content.Context;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import com.narvii.model.Scene;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.IVideoListener;
import com.narvii.nvplayer.NVMediaSource;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayer.WindowIndexChangeListener;
import com.narvii.nvplayerview.ISurfaceListener;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.scene.interfaces.IScenePlayer;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: EditScenePreviewLayout.kt */
/* loaded from: classes3.dex */
public final class EditScenePreviewLayout extends BaseScenePreviewLayout implements IVideoListener, ISurfaceListener, WindowIndexChangeListener, View.OnClickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditScenePreviewLayout.class), "sceneList", "getSceneList()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(EditScenePreviewLayout.class), "timer", "getTimer()Ljava/util/Timer;"))};
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "EditScenePreviewLayout";
    private HashMap _$_findViewCache;
    private int currentSceneIndex;
    private boolean isPlaying;
    private View maskView;
    private final NVContext nvContext;
    private INVPlayer nvPlayer;
    private final Lazy sceneList$delegate;
    private Surface surface;
    private final Lazy timer$delegate;
    private final TimerTask timerTask;
    private NVVideoView videoView;

    public EditScenePreviewLayout(NVContext nVContext) {
        this(nVContext, null, 0, 6, null);
    }

    public EditScenePreviewLayout(NVContext nVContext, AttributeSet attributeSet) {
        this(nVContext, attributeSet, 0, 4, null);
    }

    private final List<Scene> getSceneList() {
        Lazy lazy = this.sceneList$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (List) lazy.getValue();
    }

    private final Timer getTimer() {
        Lazy lazy = this.timer$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (Timer) lazy.getValue();
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

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onCachedBytesRead(long j, long j2) {
        IVideoListener.CC.$default$onCachedBytesRead(this, j, j2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        IVideoListener.CC.$default$onErrorDebug(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPreloadStrategyChanged(String str) {
        IVideoListener.CC.$default$onPreloadStrategyChanged(this, str);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onRenderFirstFrameInterval(long j) {
        IVideoListener.CC.$default$onRenderFirstFrameInterval(this, j);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        IVideoListener.CC.$default$onSurfaceSizeChanged(this, i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2) {
        IVideoListener.CC.$default$onVideoSizeChanged(this, i, i2);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i, int i2, int i3, float f) {
        IVideoListener.CC.$default$onVideoSizeChanged(this, i, i2, i3, f);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSupportLowResVideo(boolean z) {
        IVideoListener.CC.$default$onVideoSupportLowResVideo(this, z);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public /* synthetic */ void surfaceSizeChanged(Surface surface, int i, int i2) {
        ISurfaceListener.CC.$default$surfaceSizeChanged(this, surface, i, i2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public EditScenePreviewLayout(NVContext nvContext, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
        Context context = nvContext.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "nvContext.context");
        super(context, attributeSet, i);
        this.nvContext = nvContext;
        this.sceneList$delegate = LazyKt__LazyJVMKt.lazy(new Function0<List<Scene>>() { // from class: com.narvii.scene.view.EditScenePreviewLayout$sceneList$2
            @Override // kotlin.jvm.functions.Function0
            public final List<Scene> invoke() {
                return new ArrayList();
            }
        });
        this.currentSceneIndex = -1;
        this.timer$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Timer>() { // from class: com.narvii.scene.view.EditScenePreviewLayout$timer$2
            @Override // kotlin.jvm.functions.Function0
            public final Timer invoke() {
                return new Timer();
            }
        });
        this.timerTask = new EditScenePreviewLayout$timerTask$1(this);
        NVVideoView nVVideoView = new NVVideoView(getContext());
        nVVideoView.setScaleType(0);
        nVVideoView.setPredictedRatio(0.5625f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nVVideoView.setLayoutParams(layoutParams);
        this.videoView = nVVideoView;
        this.maskView = getMaskView();
        addView(this.videoView);
        addView(this.maskView);
        NVVideoView nVVideoView2 = this.videoView;
        if (nVVideoView2 != null) {
            nVVideoView2.init(this);
        }
        this.nvPlayer = NVPlayerManager.getNVPlayer(getContext());
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.reset();
        }
        INVPlayer iNVPlayer2 = this.nvPlayer;
        if (iNVPlayer2 != null) {
            iNVPlayer2.clearVideoSurface();
        }
        INVPlayer iNVPlayer3 = this.nvPlayer;
        if (iNVPlayer3 != null) {
            iNVPlayer3.setVolume(1.0f);
        }
        INVPlayer iNVPlayer4 = this.nvPlayer;
        if (iNVPlayer4 != null) {
            iNVPlayer4.setVideoListener(this);
        }
        INVPlayer iNVPlayer5 = this.nvPlayer;
        if (iNVPlayer5 != null) {
            iNVPlayer5.addWindowIndexChangeListener(this);
        }
        getTimer().scheduleAtFixedRate(this.timerTask, 0L, 20L);
        setOnClickListener(this);
    }

    public /* synthetic */ EditScenePreviewLayout(NVContext nVContext, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVContext, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* compiled from: EditScenePreviewLayout.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final void setSceneList(List<? extends Scene> sceneList) {
        Intrinsics.checkParameterIsNotNull(sceneList, "sceneList");
        getSceneList().clear();
        List<Scene> sceneList2 = getSceneList();
        ArrayList listAs = JacksonUtils.readListAs(JacksonUtils.writeAsString(sceneList), Scene.class);
        Intrinsics.checkExpressionValueIsNotNull(listAs, "JacksonUtils.readListAs(…List), Scene::class.java)");
        sceneList2.addAll(listAs);
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.quickSetting(getContext(), getMediaSource(getSceneList()), this.surface);
        }
    }

    private final NVMediaSource getMediaSource(List<? extends Scene> list) {
        this.currentSceneIndex = 0;
        NVMediaSource nVMediaSource = new NVMediaSource();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Scene) it.next()).media);
        }
        nVMediaSource.mediaList = arrayList;
        nVMediaSource.setNVContext(this.nvContext);
        nVMediaSource.loop = false;
        return nVMediaSource;
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(Surface surface) {
        this.surface = surface;
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setVideoSurface(surface);
        }
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceDestroyed(Surface surface) {
        this.surface = null;
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void play() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setPlayWhenReady(true);
        }
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void pause() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setPlayWhenReady(false);
        }
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public boolean isPlaying() {
        return this.isPlaying;
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void seekScene(String sceneId) {
        Intrinsics.checkParameterIsNotNull(sceneId, "sceneId");
        int iIndexOf = indexOf(sceneId);
        if (iIndexOf != -1) {
            INVPlayer iNVPlayer = this.nvPlayer;
            if (iNVPlayer != null) {
                iNVPlayer.seekToWindow(iIndexOf);
            }
            this.currentSceneIndex = iIndexOf;
            IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
            if (onPlayListener != null) {
                onPlayListener.onPlayingProgress(getCurrentPosition(), getTotalDuration());
            }
        }
    }

    private final int indexOf(String str) {
        Object next;
        List<Scene> sceneList = getSceneList();
        Iterator<T> it = getSceneList().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (TextUtils.equals(((Scene) next).sceneId, str)) {
                break;
            }
        }
        return CollectionsKt___CollectionsKt.indexOf((List<? extends Object>) ((List) sceneList), (Object) next);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toResume(boolean z) {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setVideoListener(this);
            Surface surface = this.surface;
            if (surface != null) {
                iNVPlayer.setVideoSurface(surface);
                iNVPlayer.setVolume(1.0f);
                iNVPlayer.setPlayWhenReady(z);
            }
        }
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toPause() {
        pause();
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void release() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.clearVideoListener(this);
        }
        INVPlayer iNVPlayer2 = this.nvPlayer;
        if (iNVPlayer2 != null) {
            iNVPlayer2.removeWindowIndexChangeListener(this);
        }
        this.timerTask.cancel();
        getTimer().cancel();
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onRenderedFirstFrame() {
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPrepared();
        }
        IScenePlayer.OnPlayingListener onPlayListener2 = getOnPlayListener();
        if (onPlayListener2 != null) {
            onPlayListener2.onPlayingProgress(getCurrentPosition(), getTotalDuration());
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerStateChanged(boolean z, int i) {
        Log.d(TAG, "onPlayerStateChanged  >>> isPlaying = " + z + "   playbackState = " + i);
        if (i == 1) {
            IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
            if (onPlayListener != null) {
                onPlayListener.onPlayingPause();
            }
            IScenePlayer.OnPlayingListener onPlayListener2 = getOnPlayListener();
            if (onPlayListener2 != null) {
                onPlayListener2.onPlayingError(new Exception("Unexpected Error"));
                return;
            }
            return;
        }
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return;
                }
                IScenePlayer.OnPlayingListener onPlayListener3 = getOnPlayListener();
                if (onPlayListener3 != null) {
                    onPlayListener3.onPlayingStop();
                }
                View view = this.maskView;
                if (view != null) {
                    view.setVisibility(0);
                    return;
                }
                return;
            }
            this.isPlaying = z;
            boolean z2 = this.isPlaying;
            if (z2) {
                IScenePlayer.OnPlayingListener onPlayListener4 = getOnPlayListener();
                if (onPlayListener4 != null) {
                    onPlayListener4.onPlayingStart();
                }
                View view2 = this.maskView;
                if (view2 != null) {
                    view2.setVisibility(8);
                    return;
                }
                return;
            }
            if (z2) {
                return;
            }
            IScenePlayer.OnPlayingListener onPlayListener5 = getOnPlayListener();
            if (onPlayListener5 != null) {
                onPlayListener5.onPlayingPause();
            }
            View view3 = this.maskView;
            if (view3 != null) {
                view3.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getTotalDuration() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            return iNVPlayer.getTotalDuration();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getCurrentPosition() {
        if (this.currentSceneIndex <= 0 || getSceneList().size() <= this.currentSceneIndex) {
            return getPlayerCurPos();
        }
        Iterator<T> it = getSceneList().subList(0, this.currentSceneIndex).iterator();
        int i = 0;
        while (it.hasNext()) {
            Media media = ((Scene) it.next()).media;
            i += media != null ? (int) media.duration : 0;
        }
        return i + getPlayerCurPos();
    }

    private final long getPlayerCurPos() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            return iNVPlayer.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerError(NVVideoException nVVideoException) {
        StringBuilder sb = new StringBuilder();
        sb.append("onPlayerError  >>>  error = ");
        sb.append(nVVideoException != null ? nVVideoException.getMessage() : null);
        Log.d(TAG, sb.toString());
        IScenePlayer.OnPlayingListener onPlayListener = getOnPlayListener();
        if (onPlayListener != null) {
            onPlayListener.onPlayingPause();
        }
        IScenePlayer.OnPlayingListener onPlayListener2 = getOnPlayListener();
        if (onPlayListener2 != null) {
            onPlayListener2.onPlayingError(nVVideoException);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPositionDiscontinuity(int i) {
        Log.d(TAG, "onPositionDiscontinuity  >>>  reason = " + i);
    }

    @Override // com.narvii.nvplayer.WindowIndexChangeListener
    public void onWindowIndexChanged(int i) {
        IScenePlayer.OnPlayingListener onPlayListener;
        Log.d(TAG, "onWindowIndexChanged  >>>  windowIndex = " + i);
        this.currentSceneIndex = i;
        if (getSceneList().size() <= i || (onPlayListener = getOnPlayListener()) == null) {
            return;
        }
        String str = getSceneList().get(i).sceneId;
        Intrinsics.checkExpressionValueIsNotNull(str, "sceneList[windowIndex].sceneId");
        onPlayListener.onSceneChanged(str, i);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public boolean shouldPauseForPageAboveVideo(int i) {
        Log.d(TAG, "onWindowIndexChanged  >>>  windowIndex = " + i);
        return false;
    }

    private final View getMaskView() {
        View view = new View(getContext());
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        view.setAlpha(0.1f);
        return view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.isPlaying) {
            IScenePlayer.BeforePlayingListener beforePlayListener = getBeforePlayListener();
            if (beforePlayListener != null) {
                beforePlayListener.beforePlayingPause();
            }
            pause();
            return;
        }
        IScenePlayer.BeforePlayingListener beforePlayListener2 = getBeforePlayListener();
        if (beforePlayListener2 != null) {
            beforePlayListener2.beforePlayingStart();
        }
        play();
    }
}
