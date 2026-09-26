package com.narvii.scene.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
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
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.collections.d0;
import kotlin.collections.w;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes8.dex */
public final class EditScenePreviewLayout extends BaseScenePreviewLayout implements IVideoListener, ISurfaceListener, WindowIndexChangeListener, View.OnClickListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "EditScenePreviewLayout";
    private int currentSceneIndex;
    private boolean isPlaying;

    @Nullable
    private View maskView;

    @NotNull
    private final NVContext nvContext;

    @Nullable
    private INVPlayer nvPlayer;

    @NotNull
    private final m sceneList$delegate;

    @Nullable
    private Surface surface;

    @NotNull
    private final m timer$delegate;

    @NotNull
    private final TimerTask timerTask;

    @Nullable
    private NVVideoView videoView;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditScenePreviewLayout(@NotNull NVContext nvContext) {
        this(nvContext, null, 0, 6, null);
        t.j(nvContext, "nvContext");
    }

    private final NVMediaSource getMediaSource(List<? extends Scene> list) {
        this.currentSceneIndex = 0;
        NVMediaSource nVMediaSource = new NVMediaSource();
        List<? extends Scene> list2 = list;
        ArrayList arrayList = new ArrayList(w.x(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((Scene) it.next()).media);
        }
        nVMediaSource.mediaList = arrayList;
        nVMediaSource.setNVContext(this.nvContext);
        nVMediaSource.loop = false;
        return nVMediaSource;
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public boolean isPlaying() {
        return this.isPlaying;
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onCachedBytesRead(long j6, long j10) {
        com.narvii.nvplayer.b.a(this, j6, j10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onErrorDebug(NVVideoException nVVideoException) {
        com.narvii.nvplayer.b.b(this, nVVideoException);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onPreloadStrategyChanged(String str) {
        com.narvii.nvplayer.b.f(this, str);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onRenderFirstFrameInterval(long j6) {
        com.narvii.nvplayer.b.g(this, j6);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
        com.narvii.nvplayer.b.i(this, i10, i11);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i10, int i11) {
        com.narvii.nvplayer.b.j(this, i10, i11);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSupportLowResVideo(boolean z6) {
        com.narvii.nvplayer.b.l(this, z6);
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceDestroyed(@Nullable Surface surface) {
        this.surface = null;
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public /* synthetic */ void surfaceSizeChanged(Surface surface, int i10, int i11) {
        com.narvii.nvplayerview.a.c(this, surface, i10, i11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditScenePreviewLayout(@NotNull NVContext nvContext, @Nullable AttributeSet attributeSet) {
        this(nvContext, attributeSet, 0, 4, null);
        t.j(nvContext, "nvContext");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getCurrentPosition() {
        if (this.currentSceneIndex <= 0 || getSceneList().size() <= this.currentSceneIndex) {
            return getPlayerCurPos();
        }
        Iterator<T> it = getSceneList().subList(0, this.currentSceneIndex).iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Media media = ((Scene) it.next()).media;
            i10 += media != null ? (int) media.duration : 0;
        }
        return ((long) i10) + getPlayerCurPos();
    }

    private final View getMaskView() {
        View view = new View(getContext());
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        view.setAlpha(0.1f);
        return view;
    }

    private final long getPlayerCurPos() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            return iNVPlayer.getCurrentPosition();
        }
        return 0L;
    }

    private final List<Scene> getSceneList() {
        return (List) this.sceneList$delegate.getValue();
    }

    private final Timer getTimer() {
        return (Timer) this.timer$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getTotalDuration() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            return iNVPlayer.getTotalDuration();
        }
        return 0L;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
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

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPlayerError(@Nullable NVVideoException nVVideoException) {
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
    public void onPlayerStateChanged(boolean z6, int i10) {
        Log.d(TAG, "onPlayerStateChanged  >>> isPlaying = " + z6 + "   playbackState = " + i10);
        if (i10 == 1) {
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
        if (i10 != 3) {
            if (i10 != 4) {
                return;
            }
            IScenePlayer.OnPlayingListener onPlayListener3 = getOnPlayListener();
            if (onPlayListener3 != null) {
                onPlayListener3.onPlayingStop();
            }
            View view = this.maskView;
            if (view == null) {
                return;
            }
            view.setVisibility(0);
            return;
        }
        this.isPlaying = z6;
        if (z6) {
            IScenePlayer.OnPlayingListener onPlayListener4 = getOnPlayListener();
            if (onPlayListener4 != null) {
                onPlayListener4.onPlayingStart();
            }
            View view2 = this.maskView;
            if (view2 == null) {
                return;
            }
            view2.setVisibility(8);
            return;
        }
        if (z6) {
            return;
        }
        IScenePlayer.OnPlayingListener onPlayListener5 = getOnPlayListener();
        if (onPlayListener5 != null) {
            onPlayListener5.onPlayingPause();
        }
        View view3 = this.maskView;
        if (view3 == null) {
            return;
        }
        view3.setVisibility(0);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public void onPositionDiscontinuity(int i10) {
        Log.d(TAG, "onPositionDiscontinuity  >>>  reason = " + i10);
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public /* synthetic */ void onVideoSizeChanged(int i10, int i11, int i12, float f) {
        com.narvii.nvplayer.b.k(this, i10, i11, i12, f);
    }

    @Override // com.narvii.nvplayer.WindowIndexChangeListener
    public void onWindowIndexChanged(int i10) {
        IScenePlayer.OnPlayingListener onPlayListener;
        Log.d(TAG, "onWindowIndexChanged  >>>  windowIndex = " + i10);
        this.currentSceneIndex = i10;
        if (getSceneList().size() <= i10 || (onPlayListener = getOnPlayListener()) == null) {
            return;
        }
        String sceneId = getSceneList().get(i10).sceneId;
        t.i(sceneId, "sceneId");
        onPlayListener.onSceneChanged(sceneId, i10);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void pause() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setPlayWhenReady(false);
        }
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void play() {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setPlayWhenReady(true);
        }
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

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void seekScene(@NotNull String sceneId) {
        t.j(sceneId, "sceneId");
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

    public final void setSceneList(@NotNull List<? extends Scene> sceneList) {
        t.j(sceneList, "sceneList");
        getSceneList().clear();
        List<Scene> sceneList2 = getSceneList();
        ArrayList listAs = JacksonUtils.readListAs(JacksonUtils.writeAsString(sceneList), Scene.class);
        t.i(listAs, "readListAs(...)");
        sceneList2.addAll(listAs);
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.quickSetting(getContext(), getMediaSource(getSceneList()), this.surface);
        }
    }

    @Override // com.narvii.nvplayer.IVideoListener
    public boolean shouldPauseForPageAboveVideo(int i10) {
        Log.d(TAG, "onWindowIndexChanged  >>>  windowIndex = " + i10);
        return false;
    }

    @Override // com.narvii.nvplayerview.ISurfaceListener
    public void surfaceCreated(@Nullable Surface surface) {
        this.surface = surface;
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer == null) {
            return;
        }
        iNVPlayer.setVideoSurface(surface);
    }

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toResume(boolean z6) {
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.setVideoListener(this);
            Surface surface = this.surface;
            if (surface != null) {
                iNVPlayer.setVideoSurface(surface);
                iNVPlayer.setVolume(1.0f);
                iNVPlayer.setPlayWhenReady(z6);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public EditScenePreviewLayout(@NotNull NVContext nvContext, @Nullable AttributeSet attributeSet, int i10) {
        t.j(nvContext, "nvContext");
        Context context = nvContext.getContext();
        t.i(context, "getContext(...)");
        super(context, attributeSet, i10);
        this.nvContext = nvContext;
        this.sceneList$delegate = o.a(EditScenePreviewLayout$sceneList$2.INSTANCE);
        this.currentSceneIndex = -1;
        this.timer$delegate = o.a(EditScenePreviewLayout$timer$2.INSTANCE);
        EditScenePreviewLayout$timerTask$1 editScenePreviewLayout$timerTask$1 = new EditScenePreviewLayout$timerTask$1(this);
        this.timerTask = editScenePreviewLayout$timerTask$1;
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
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(getContext());
        this.nvPlayer = nVPlayer;
        if (nVPlayer != null) {
            nVPlayer.reset();
        }
        INVPlayer iNVPlayer = this.nvPlayer;
        if (iNVPlayer != null) {
            iNVPlayer.clearVideoSurface();
        }
        INVPlayer iNVPlayer2 = this.nvPlayer;
        if (iNVPlayer2 != null) {
            iNVPlayer2.setVolume(1.0f);
        }
        INVPlayer iNVPlayer3 = this.nvPlayer;
        if (iNVPlayer3 != null) {
            iNVPlayer3.setVideoListener(this);
        }
        INVPlayer iNVPlayer4 = this.nvPlayer;
        if (iNVPlayer4 != null) {
            iNVPlayer4.addWindowIndexChangeListener(this);
        }
        getTimer().scheduleAtFixedRate(editScenePreviewLayout$timerTask$1, 0L, 20L);
        setOnClickListener(this);
    }

    private final int indexOf(String str) {
        Object next;
        List<Scene> sceneList = getSceneList();
        Iterator<T> it = getSceneList().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (TextUtils.equals(((Scene) next).sceneId, str)) {
                return d0.o0(sceneList, next);
            }
        }
        next = null;
        return d0.o0(sceneList, next);
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

    @Override // com.narvii.scene.view.BaseScenePreviewLayout
    public void toPause() {
        pause();
    }

    public /* synthetic */ EditScenePreviewLayout(NVContext nVContext, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(nVContext, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
