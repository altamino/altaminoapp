package com.narvii.video;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.pip.PipInfoPack;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.video.interfaces.IEditorRecycler;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.interfaces.OnSeekingPositionListener;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.IEditorPackFactory;
import com.narvii.video.services.SceneMediaProcessor;
import com.narvii.video.services.VideoManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.MediaEventListenerImpl;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseMediaEditorFragment extends NVFragment implements MediaTimeLineComponent.TimeLineCallback, FragmentOnBackListener {

    @Nullable
    private AVClipInfoPack activeVideoClip;
    private boolean controllerActive;
    private boolean dragging;
    private boolean hasAudioPrepared;
    private boolean hasVideoPrepared;
    private boolean inPlay;
    private boolean initSuccess;
    private boolean isMute;
    private int lastSeekPreviewTime;

    @Nullable
    private File outputFileDir;

    @Nullable
    private View pauseShadow;

    @Nullable
    private Runnable pendingSeekAction;

    @Nullable
    private ImageView playerButton;
    protected IPreviewPlayer previewPlayer;

    @Nullable
    private NVEditorPreviewVideoVIew previewVideoView;
    private boolean seeking;
    private boolean skipPauseVideo;
    protected VideoManager videoManager;

    @NotNull
    private final LinkedList<Integer> seekRequestQueue = new LinkedList<>();
    private boolean autoPlaying = true;
    private boolean needRealOutput = true;
    private final boolean rtl = Utils.isRtl();

    /* JADX INFO: renamed from: com.narvii.video.BaseMediaEditorFragment$initMediaPlayer$2, reason: invalid class name */
    public static final class AnonymousClass2 extends MediaEventListenerImpl {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onDoNextVideoSeek$lambda$0(BaseMediaEditorFragment this$0) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            if (!this$0.getSeekRequestQueue().isEmpty()) {
                Integer numRemoveFirst = this$0.getSeekRequestQueue().removeFirst();
                int currentVideoPositionInTimeline = this$0.getPreviewPlayer().getCurrentVideoPositionInTimeline();
                if (numRemoveFirst != null && numRemoveFirst.intValue() == currentVideoPositionInTimeline) {
                    this$0.changeSeekStatus(false);
                    if (this$0.getAutoPlaying() && !this$0.getDragging()) {
                        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, false, false, 2, null);
                        return;
                    }
                    return;
                }
                kotlin.jvm.internal.t.g(numRemoveFirst);
                BaseMediaEditorFragment.seekTo$default(this$0, 0, numRemoveFirst.intValue(), 1, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onDoNextVideoSeek$lambda$1(BaseMediaEditorFragment this$0) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            this$0.changeSeekStatus(false);
            if (this$0.getAutoPlaying() && !this$0.getDragging()) {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, false, false, 2, null);
            }
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onAudioTrackAllPrepared() {
            super.onAudioTrackAllPrepared();
            if (!BaseMediaEditorFragment.this.isSeeking()) {
                BaseMediaEditorFragment.this.hasAudioPrepared = true;
                if (BaseMediaEditorFragment.this.getAutoPlaying() && BaseMediaEditorFragment.this.hasVideoPrepared) {
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, false, false, 2, null);
                } else {
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, true, false, 2, null);
                }
            }
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onDoNextVideoSeek() {
            MediaTimeLineComponent mediaTimeLineComponent;
            super.onDoNextVideoSeek();
            if ((BaseMediaEditorFragment.this.controllerActive || BaseMediaEditorFragment.this.isSeeking()) && (!BaseMediaEditorFragment.this.getSeekRequestQueue().isEmpty())) {
                BaseMediaEditorFragment.this.changeSeekStatus(true);
                final BaseMediaEditorFragment baseMediaEditorFragment = BaseMediaEditorFragment.this;
                Utils.post(new Runnable() { // from class: com.narvii.video.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseMediaEditorFragment.AnonymousClass2.onDoNextVideoSeek$lambda$0(baseMediaEditorFragment);
                    }
                });
            } else {
                final BaseMediaEditorFragment baseMediaEditorFragment2 = BaseMediaEditorFragment.this;
                Utils.post(new Runnable() { // from class: com.narvii.video.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseMediaEditorFragment.AnonymousClass2.onDoNextVideoSeek$lambda$1(baseMediaEditorFragment2);
                    }
                });
            }
            View view = BaseMediaEditorFragment.this.getView();
            if (view != null) {
                mediaTimeLineComponent = (MediaTimeLineComponent) view.findViewById(com.narvii.mediaeditor.R.id.video_time_line_component);
            } else {
                mediaTimeLineComponent = null;
            }
            if (mediaTimeLineComponent != null) {
                BaseMediaEditorFragment baseMediaEditorFragment3 = BaseMediaEditorFragment.this;
                if (!baseMediaEditorFragment3.controllerActive && !baseMediaEditorFragment3.isSeeking() && baseMediaEditorFragment3.getAutoPlaying() && mediaTimeLineComponent.getCurRecyclerViewState() != 1) {
                    baseMediaEditorFragment3.getPreviewPlayer().unMute();
                    baseMediaEditorFragment3.isMute = false;
                } else if (baseMediaEditorFragment3.getPreviewPlayer().pauseWhenNextSeek()) {
                    baseMediaEditorFragment3.getPreviewPlayer().pause();
                }
            }
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onVideoError(@Nullable Exception exc) {
            super.onVideoError(exc);
            BaseMediaEditorFragment.showInvalidDialog$default(BaseMediaEditorFragment.this, false, 1, null);
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onVideoPrepared() {
            super.onVideoPrepared();
            BaseMediaEditorFragment.this.hasVideoPrepared = true;
            if (BaseMediaEditorFragment.this.isSeeking()) {
                return;
            }
            BaseMediaEditorFragment.this.innerOnVideoPrepared();
            if (BaseMediaEditorFragment.this.isSeeking()) {
                return;
            }
            if (BaseMediaEditorFragment.this.getAutoPlaying() && BaseMediaEditorFragment.this.hasAudioPrepared) {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, false, false, 2, null);
            } else {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, true, false, 2, null);
            }
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onVideoWindowIndexChanged(int i10, boolean z6) {
            super.onVideoWindowIndexChanged(i10, z6);
            BaseMediaEditorFragment.this.onActiveVideoChanged(i10, z6);
        }
    }

    private final void initMediaPlayer() {
        this.hasVideoPrepared = false;
        this.hasAudioPrepared = getPreviewPlayer().getAudioClipInfoList().isEmpty();
        getPreviewPlayer().addSeekingPositionChangeListener(new OnSeekingPositionListener() { // from class: com.narvii.video.q
            @Override // com.narvii.video.interfaces.OnSeekingPositionListener
            public final void onSeekingPositionChanged(long j6) {
                BaseMediaEditorFragment.initMediaPlayer$lambda$8(this.f2914a, j6);
            }
        });
        getPreviewPlayer().addMediaEventListener(new AnonymousClass2());
        this.autoPlaying = false;
        changeVideoPlaybackStatus$default(this, true, false, 2, null);
        onVideoPlaybackStatusChanged(false);
        View view = getView();
        FrameLayout frameLayout = view != null ? (FrameLayout) view.findViewById(com.narvii.mediaeditor.R.id.video_container) : null;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BaseMediaEditorFragment.initMediaPlayer$lambda$10$lambda$9(this.f2921a, view2);
                }
            });
        }
    }

    private final void seekTo(int i10, int i11) {
        changeSeekStatus(true);
        if (i10 == -1) {
            getPreviewPlayer().seekTimeLineTo(i11);
        } else {
            getPreviewPlayer().seekTimeLineTo(i10, i11);
        }
    }

    protected void changeVideoPlaybackStatus(boolean z6, boolean z10) {
        if (z6) {
            if (showPauseButton()) {
                ImageView imageView = this.playerButton;
                if (imageView != null) {
                    kotlin.jvm.internal.t.g(imageView);
                    imageView.setImageResource(com.narvii.mediaeditor.R.drawable.ic_sr_media_play);
                }
            } else {
                ImageView imageView2 = this.playerButton;
                if (imageView2 != null) {
                    imageView2.setVisibility(z10 ? 0 : 8);
                }
            }
            View view = this.pauseShadow;
            if (view != null) {
                view.setVisibility(z10 ? 0 : 8);
            }
            getPreviewPlayer().mute();
            this.isMute = true;
            this.inPlay = false;
            getPreviewPlayer().pause();
            onVideoPlaybackStatusChanged(false);
            return;
        }
        if (showPauseButton()) {
            ImageView imageView3 = this.playerButton;
            if (imageView3 != null) {
                kotlin.jvm.internal.t.g(imageView3);
                imageView3.setImageResource(com.narvii.mediaeditor.R.drawable.ic_action_pause);
            }
        } else {
            ImageView imageView4 = this.playerButton;
            if (imageView4 != null) {
                imageView4.setVisibility(8);
            }
        }
        View view2 = this.pauseShadow;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        this.inPlay = true;
        getPreviewPlayer().unMute();
        this.isMute = false;
        if (this.seeking) {
            return;
        }
        getPreviewPlayer().start();
        onVideoPlaybackStatusChanged(true);
    }

    @Nullable
    protected final AVClipInfoPack getActiveVideoClip() {
        return this.activeVideoClip;
    }

    @NotNull
    protected abstract ArrayList<AVClipInfoPack> getAudioInputClipList();

    protected final boolean getAutoPlaying() {
        return this.autoPlaying;
    }

    @NotNull
    protected abstract ArrayList<Caption> getCaptionList();

    protected final boolean getDragging() {
        return this.dragging;
    }

    protected final boolean getInPlay() {
        return this.inPlay;
    }

    protected final boolean getInitSuccess() {
        return this.initSuccess;
    }

    protected final boolean getNeedRealOutput() {
        return this.needRealOutput;
    }

    @Nullable
    protected final File getOutputFileDir() {
        return this.outputFileDir;
    }

    @Nullable
    protected final View getPauseShadow() {
        return this.pauseShadow;
    }

    @NotNull
    protected abstract ArrayList<PipInfoPack> getPipClipList();

    @Nullable
    protected final ImageView getPlayerButton() {
        return this.playerButton;
    }

    @Nullable
    protected final NVEditorPreviewVideoVIew getPreviewVideoView() {
        return this.previewVideoView;
    }

    protected final boolean getRtl() {
        return this.rtl;
    }

    @NotNull
    protected final LinkedList<Integer> getSeekRequestQueue() {
        return this.seekRequestQueue;
    }

    protected final boolean getSkipPauseVideo() {
        return this.skipPauseVideo;
    }

    @NotNull
    protected abstract ArrayList<StickerInfoPack> getStickerList();

    @NotNull
    protected abstract ArrayList<AVClipInfoPack> getVideoInputClipList();

    protected boolean ignoreMainTrackCompletionInBase() {
        return false;
    }

    public abstract void initComponent();

    protected abstract void innerOnVideoPrepared();

    protected final boolean isAudioClipIndexValid(int i10) {
        return i10 >= 0 && i10 < getPreviewPlayer().getAudioClipInfoList().size();
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        setResult(0);
        return false;
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onControllerActive() {
        this.controllerActive = true;
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(final int i10, int i11, int i12) {
        if (i12 == 2 || i12 == 3) {
            this.dragging = false;
        }
        if ((this.controllerActive || this.seeking) && (i12 == 1 || i12 == 4)) {
            return;
        }
        this.controllerActive = false;
        if (ignoreMainTrackCompletionInBase() && i12 == 1) {
            return;
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.m
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.onReplayTriggered$lambda$1(this.f2899a, i10);
            }
        });
    }

    protected abstract void onSeekingStatusChanged(boolean z6);

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineScrolledOffsetChanged(int i10) {
    }

    protected abstract void onVideoPlaybackStatusChanged(boolean z6);

    protected void onVideoSeekingPositionChanged(long j6) {
    }

    protected final void setActiveVideoClip(@Nullable AVClipInfoPack aVClipInfoPack) {
        this.activeVideoClip = aVClipInfoPack;
    }

    protected final void setAutoPlaying(boolean z6) {
        this.autoPlaying = z6;
    }

    protected final void setDragging(boolean z6) {
        this.dragging = z6;
    }

    protected final void setInPlay(boolean z6) {
        this.inPlay = z6;
    }

    protected final void setInitSuccess(boolean z6) {
        this.initSuccess = z6;
    }

    protected final void setNeedRealOutput(boolean z6) {
        this.needRealOutput = z6;
    }

    protected final void setOutputFileDir(@Nullable File file) {
        this.outputFileDir = file;
    }

    protected final void setPauseShadow(@Nullable View view) {
        this.pauseShadow = view;
    }

    protected final void setPlayerButton(@Nullable ImageView imageView) {
        this.playerButton = imageView;
    }

    protected final void setPreviewPlayer(@NotNull IPreviewPlayer iPreviewPlayer) {
        kotlin.jvm.internal.t.j(iPreviewPlayer, "<set-?>");
        this.previewPlayer = iPreviewPlayer;
    }

    protected final void setPreviewVideoView(@Nullable NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew) {
        this.previewVideoView = nVEditorPreviewVideoVIew;
    }

    protected final void setSkipPauseVideo(boolean z6) {
        this.skipPauseVideo = z6;
    }

    protected final void setVideoManager(@NotNull VideoManager videoManager) {
        kotlin.jvm.internal.t.j(videoManager, "<set-?>");
        this.videoManager = videoManager;
    }

    protected boolean showPauseButton() {
        return false;
    }

    public static /* synthetic */ void changeVideoPlaybackStatus$default(BaseMediaEditorFragment baseMediaEditorFragment, boolean z6, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: changeVideoPlaybackStatus");
        }
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        baseMediaEditorFragment.changeVideoPlaybackStatus(z6, z10);
    }

    private final boolean init() {
        this.needRealOutput = getBooleanParam("realOutput", false);
        return initInputClips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initInputClips$lambda$4(ArrayList videoClipList, final BaseMediaEditorFragment this$0, ArrayList audioClipList, final ArrayList captionList, final ArrayList stickerList) {
        kotlin.jvm.internal.t.j(videoClipList, "$videoClipList");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(audioClipList, "$audioClipList");
        kotlin.jvm.internal.t.j(captionList, "$captionList");
        kotlin.jvm.internal.t.j(stickerList, "$stickerList");
        final ArrayList arrayList = new ArrayList();
        Iterator it = videoClipList.iterator();
        while (it.hasNext()) {
            AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) it.next();
            kotlin.jvm.internal.t.g(aVClipInfoPack);
            if (this$0.prepareAVClipSync(aVClipInfoPack)) {
                arrayList.add(aVClipInfoPack);
            }
        }
        final ArrayList arrayList2 = new ArrayList();
        Iterator it2 = audioClipList.iterator();
        while (it2.hasNext()) {
            AVClipInfoPack aVClipInfoPack2 = (AVClipInfoPack) it2.next();
            kotlin.jvm.internal.t.g(aVClipInfoPack2);
            if (this$0.prepareAVClipSync(aVClipInfoPack2)) {
                arrayList2.add(aVClipInfoPack2);
            }
        }
        final ArrayList arrayList3 = new ArrayList();
        for (PipInfoPack pipInfoPack : this$0.getPipClipList()) {
            kotlin.jvm.internal.t.g(pipInfoPack);
            if (this$0.preparePipClipSync(pipInfoPack)) {
                arrayList3.add(pipInfoPack);
            }
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.j
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.initInputClips$lambda$4$lambda$3(this.f2883a, arrayList, arrayList2, captionList, stickerList, arrayList3);
            }
        });
    }

    public static /* synthetic */ void prepareAVClipList$default(BaseMediaEditorFragment baseMediaEditorFragment, ArrayList arrayList, boolean z6, Callback callback, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: prepareAVClipList");
        }
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        baseMediaEditorFragment.prepareAVClipList(arrayList, z6, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareAVClipList$lambda$6(ArrayList clipList, final BaseMediaEditorFragment this$0, final boolean z6, final Callback callback) {
        kotlin.jvm.internal.t.j(clipList, "$clipList");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(callback, "$callback");
        final kotlin.jvm.internal.k0 k0Var = new kotlin.jvm.internal.k0();
        ArrayList arrayList = new ArrayList();
        Iterator it = clipList.iterator();
        while (it.hasNext()) {
            AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) it.next();
            kotlin.jvm.internal.t.g(aVClipInfoPack);
            if (!this$0.prepareAVClipSync(aVClipInfoPack)) {
                k0Var.element = true;
                arrayList.add(aVClipInfoPack);
            }
        }
        if (k0Var.element) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                clipList.remove((AVClipInfoPack) it2.next());
            }
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.k
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.prepareAVClipList$lambda$6$lambda$5(k0Var, this$0, z6, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareAVClipList$lambda$6$lambda$5(kotlin.jvm.internal.k0 hasInvalidClip, BaseMediaEditorFragment this$0, boolean z6, Callback callback) {
        kotlin.jvm.internal.t.j(hasInvalidClip, "$hasInvalidClip");
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(callback, "$callback");
        if (hasInvalidClip.element) {
            this$0.showInvalidDialog(z6);
        }
        callback.call(Boolean.valueOf(!hasInvalidClip.element));
    }

    public static /* synthetic */ void safeSeekTo$default(BaseMediaEditorFragment baseMediaEditorFragment, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: safeSeekTo");
        }
        if ((i12 & 1) != 0) {
            i10 = -1;
        }
        baseMediaEditorFragment.safeSeekTo(i10, i11);
    }

    static /* synthetic */ void seekTo$default(BaseMediaEditorFragment baseMediaEditorFragment, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: seekTo");
        }
        if ((i12 & 1) != 0) {
            i10 = -1;
        }
        baseMediaEditorFragment.seekTo(i10, i11);
    }

    public static /* synthetic */ void showInvalidDialog$default(BaseMediaEditorFragment baseMediaEditorFragment, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showInvalidDialog");
        }
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        baseMediaEditorFragment.showInvalidDialog(z6);
    }

    protected final void changeSeekStatus(boolean z6) {
        if (z6 == this.seeking) {
            return;
        }
        this.seeking = z6;
        onSeekingStatusChanged(z6);
    }

    @NotNull
    protected final IPreviewPlayer getPreviewPlayer() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            return iPreviewPlayer;
        }
        kotlin.jvm.internal.t.B("previewPlayer");
        return null;
    }

    @NotNull
    protected final w7.u<Integer, ArrayList<Integer>> getTotalVisibleVideoDurationInMs() {
        ArrayList arrayList = new ArrayList();
        Iterator<AVClipInfoPack> it = getPreviewPlayer().getVideoClipInfoList().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int iClipLength = it.next().clipLength();
            i10 += iClipLength;
            arrayList.add(Integer.valueOf(iClipLength));
        }
        return new w7.u<>(Integer.valueOf(i10), arrayList);
    }

    @NotNull
    protected final VideoManager getVideoManager() {
        VideoManager videoManager = this.videoManager;
        if (videoManager != null) {
            return videoManager;
        }
        kotlin.jvm.internal.t.B("videoManager");
        return null;
    }

    protected final boolean isInputCodecSupported(@NotNull StreamInfo info) {
        kotlin.jvm.internal.t.j(info, "info");
        if (info.vCodecType == null && info.aCodecType == null) {
            return false;
        }
        List<String> listC0 = kotlin.text.u.C0("h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp", new String[]{","}, false, 0, 6, null);
        if (listC0.isEmpty()) {
            return false;
        }
        boolean z6 = info.vCodecType == null;
        boolean z10 = info.aCodecType == null;
        for (String str : listC0) {
            if (kotlin.text.t.w(str, info.vCodecType, true)) {
                z6 = true;
            } else if (kotlin.text.t.w(str, info.aCodecType, true)) {
                z10 = true;
            }
            if (z6 && z10) {
                return true;
            }
        }
        return false;
    }

    protected final boolean isSeeking() {
        return this.seeking || getPreviewPlayer().isSeeking();
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(final int i10, int i11) {
        if (this.lastSeekPreviewTime == i10) {
            return;
        }
        if (!this.isMute) {
            getPreviewPlayer().mute();
            this.isMute = true;
        }
        this.lastSeekPreviewTime = i10;
        Utils.post(new Runnable() { // from class: com.narvii.video.p
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.onFrameLocatedDuringMove$lambda$0(this.f2908a, i10);
            }
        });
        this.dragging = true;
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j6, long j10) {
        if (j6 > 0 && !this.hasVideoPrepared) {
            this.hasVideoPrepared = true;
        }
        getPreviewPlayer().start();
    }

    protected final void prepareAVClipList(@NotNull final ArrayList<AVClipInfoPack> clipList, final boolean z6, @NotNull final Callback<Boolean> callback) {
        kotlin.jvm.internal.t.j(clipList, "clipList");
        kotlin.jvm.internal.t.j(callback, "callback");
        Utils.createThreadPoolExecutor(1, "prepare AV clip list").execute(new Runnable() { // from class: com.narvii.video.t
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.prepareAVClipList$lambda$6(clipList, this, z6, callback);
            }
        });
    }

    protected final boolean prepareAVClipSync(@NotNull AVClipInfoPack clip) {
        String str;
        String str2;
        int i10;
        kotlin.jvm.internal.t.j(clip, "clip");
        File inputFile = clip.getInputFile();
        if ((inputFile != null && !inputFile.exists()) || (((str = clip.inputPath) != null && kotlin.text.u.P(str, ";", false, 2, null)) || ((str2 = clip.inputPath) != null && kotlin.text.u.P(str2, ",", false, 2, null)))) {
            return false;
        }
        String inputPath = clip.inputPath;
        kotlin.jvm.internal.t.i(inputPath, "inputPath");
        if (isImageInput(inputPath)) {
            SceneMediaProcessor.INSTANCE.fillVideoMetadata(clip, true, null);
            i10 = 5000;
        } else {
            VideoManager videoManager = getVideoManager();
            kotlin.jvm.internal.t.g(inputFile);
            String absolutePath = inputFile.getAbsolutePath();
            kotlin.jvm.internal.t.i(absolutePath, "getAbsolutePath(...)");
            StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(absolutePath);
            clip.streamInfo = streamInfoFetchStreamInfoSync;
            if (streamInfoFetchStreamInfoSync.hasError || !isInputCodecSupported(streamInfoFetchStreamInfoSync)) {
                return false;
            }
            int i11 = streamInfoFetchStreamInfoSync.durationInMs;
            SceneMediaProcessor.INSTANCE.fillVideoMetadata(clip, false, streamInfoFetchStreamInfoSync);
            i10 = i11;
        }
        updateAVClipDurations(clip, i10);
        return true;
    }

    protected final boolean preparePipClipSync(@NotNull PipInfoPack clip) {
        String str;
        String str2;
        int i10;
        kotlin.jvm.internal.t.j(clip, "clip");
        String str3 = clip.inputPath;
        File file = str3 != null ? new File(str3) : null;
        if ((file != null && !file.exists()) || (((str = clip.inputPath) != null && kotlin.text.u.P(str, ";", false, 2, null)) || ((str2 = clip.inputPath) != null && kotlin.text.u.P(str2, ",", false, 2, null)))) {
            return false;
        }
        String inputPath = clip.inputPath;
        kotlin.jvm.internal.t.i(inputPath, "inputPath");
        if (isImageInput(inputPath)) {
            i10 = 5000;
        } else {
            VideoManager videoManager = getVideoManager();
            kotlin.jvm.internal.t.g(file);
            String absolutePath = file.getAbsolutePath();
            kotlin.jvm.internal.t.i(absolutePath, "getAbsolutePath(...)");
            StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(absolutePath);
            clip.streamInfo = streamInfoFetchStreamInfoSync;
            if (streamInfoFetchStreamInfoSync.hasError || !isInputCodecSupported(streamInfoFetchStreamInfoSync)) {
                return false;
            }
            i10 = streamInfoFetchStreamInfoSync.durationInMs;
        }
        if (!clip.isTrimSectionValid()) {
            clip.trimEndInMs = clip.trimStartInMs + i10;
        }
        clip.visibleDurationInMs = clip.isTrimSectionValid() ? clip.trimmedDurationInMs() : i10;
        clip.orgDurationInMs = i10;
        return true;
    }

    protected void updateAVClipDurations(@NotNull AVClipInfoPack clip, int i10) {
        kotlin.jvm.internal.t.j(clip, "clip");
        clip.visibleDurationInMs = clip.isTrimSectionValid() ? clip.trimmedDurationInMs() : i10;
        clip.orgDurationInMs = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initInputClips$lambda$4$lambda$3(BaseMediaEditorFragment this$0, ArrayList validVideoClipList, ArrayList validAudioClipList, ArrayList captionList, ArrayList stickerList, ArrayList validPipClipList) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(validVideoClipList, "$validVideoClipList");
        kotlin.jvm.internal.t.j(validAudioClipList, "$validAudioClipList");
        kotlin.jvm.internal.t.j(captionList, "$captionList");
        kotlin.jvm.internal.t.j(stickerList, "$stickerList");
        kotlin.jvm.internal.t.j(validPipClipList, "$validPipClipList");
        if (this$0.requireActivity() != null && !this$0.requireActivity().isFinishing()) {
            if (validVideoClipList.isEmpty()) {
                this$0.showInvalidDialog(false);
            }
            this$0.activeVideoClip = IPreviewPlayer.DefaultImpls.resetVideoClipList$default(this$0.getPreviewPlayer(), validVideoClipList, 0, 0, 6, null);
            this$0.getPreviewPlayer().resetAudioClipList(validAudioClipList);
            this$0.getPreviewPlayer().resetCaptionList(captionList);
            this$0.getPreviewPlayer().resetStickerList(stickerList);
            this$0.getPreviewPlayer().resetPipVideoList(validPipClipList);
            this$0.onAVClipsPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMediaPlayer$lambda$10$lambda$9(BaseMediaEditorFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (!this$0.isSeeking()) {
            changeVideoPlaybackStatus$default(this$0, this$0.autoPlaying, false, 2, null);
            this$0.autoPlaying = !this$0.autoPlaying;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initMediaPlayer$lambda$8(BaseMediaEditorFragment this$0, long j6) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.onVideoSeekingPositionChanged(j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFrameLocatedDuringMove$lambda$0(BaseMediaEditorFragment this$0, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        safeSeekTo$default(this$0, 0, i10, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReplayTriggered$lambda$1(BaseMediaEditorFragment this$0, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        safeSeekTo$default(this$0, 0, i10, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2(BaseMediaEditorFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        changeVideoPlaybackStatus$default(this$0, this$0.autoPlaying, false, 2, null);
        this$0.autoPlaying = !this$0.autoPlaying;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInvalidDialog$lambda$11(boolean z6, BaseMediaEditorFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (z6) {
            this$0.setResult(0);
            this$0.finish();
        }
    }

    protected boolean initInputClips() {
        boolean z6;
        final ArrayList<AVClipInfoPack> videoInputClipList = getVideoInputClipList();
        final ArrayList<AVClipInfoPack> audioInputClipList = getAudioInputClipList();
        final ArrayList<Caption> captionList = getCaptionList();
        final ArrayList<StickerInfoPack> stickerList = getStickerList();
        String stringParam = getStringParam("outputFileDir");
        if (!videoInputClipList.isEmpty() && (!(z6 = this.needRealOutput) || stringParam != null)) {
            if (z6) {
                File file = new File(stringParam);
                this.outputFileDir = file;
                kotlin.jvm.internal.t.g(file);
                if (!file.exists()) {
                    File file2 = this.outputFileDir;
                    kotlin.jvm.internal.t.g(file2);
                    file2.mkdirs();
                }
            }
            Utils.createThreadPoolExecutor(1, "prepare AV clip list").execute(new Runnable() { // from class: com.narvii.video.l
                @Override // java.lang.Runnable
                public final void run() {
                    BaseMediaEditorFragment.initInputClips$lambda$4(videoInputClipList, this, audioInputClipList, captionList, stickerList);
                }
            });
            return true;
        }
        showInvalidDialog$default(this, false, 1, null);
        return false;
    }

    protected final boolean isImageInput(@NotNull String url) {
        kotlin.jvm.internal.t.j(url, "url");
        if (!Utils.isJPG(url) && !Utils.isPNG(url) && !Utils.isBMP(url)) {
            return false;
        }
        return true;
    }

    protected void onAVClipsPrepared() {
        initMediaPlayer();
    }

    protected void onActiveVideoChanged(int i10, boolean z6) {
        if (getPreviewPlayer().getVideoClipInfoList().isEmpty()) {
            this.activeVideoClip = null;
        } else if (i10 >= 0 && i10 < getPreviewPlayer().getVideoClipInfoList().size()) {
            this.activeVideoClip = getPreviewPlayer().getVideoClipInfoList().get(i10);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Object service = getService("videoManager");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        setVideoManager((VideoManager) service);
        this.initSuccess = init();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getPreviewPlayer().release();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        IEditorRecycler videoRecycler;
        super.onPause();
        this.seeking = false;
        this.seekRequestQueue.clear();
        if (!this.skipPauseVideo) {
            changeVideoPlaybackStatus$default(this, true, false, 2, null);
        } else {
            this.skipPauseVideo = false;
        }
        this.autoPlaying = false;
        IEditorPackFactory iEditorPackFactory = (IEditorPackFactory) getService("editorPackFactory");
        if (iEditorPackFactory != null && (videoRecycler = iEditorPackFactory.getVideoRecycler()) != null) {
            videoRecycler.clearCacheResources();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        getPreviewPlayer().restoreStates();
        super.onResume();
        if (this.autoPlaying) {
            changeVideoPlaybackStatus(false, false);
        }
    }

    public void onTimeLineClicked(@NotNull ITimelineClip iTimelineClip) {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineClicked(this, iTimelineClip);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineLayout(this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        initComponent();
        if (this.previewVideoView != null) {
            ImageView imageView = this.playerButton;
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.n
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        BaseMediaEditorFragment.onViewCreated$lambda$2(this.f2903a, view2);
                    }
                });
            }
            NVEditorPreviewVideoVIew.Companion companion = NVEditorPreviewVideoVIew.Companion;
            NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = this.previewVideoView;
            kotlin.jvm.internal.t.g(nVEditorPreviewVideoVIew);
            setPreviewPlayer(companion.initPlayer(nVEditorPreviewVideoVIew, this));
            return;
        }
        throw new IllegalStateException("Failed to find a NVEditorPreviewVideoView instance");
    }

    protected final void safeSeekTo(int i10, int i11) {
        if (!isSeeking()) {
            seekTo(i10, i11);
            return;
        }
        if (i10 > 0) {
            for (int i12 = 0; i12 < i10; i12++) {
                i11 += getPreviewPlayer().getVideoClipInfoList().get(i12).trimmedDurationInMsWithSpeed();
            }
        }
        if (this.seekRequestQueue.size() >= 2) {
            this.seekRequestQueue.removeFirst();
        }
        this.seekRequestQueue.addLast(Integer.valueOf(i11));
    }

    protected final void showInvalidDialog(final boolean z6) {
        if (getActivity() != null && !requireActivity().isFinishing()) {
            AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setMessage(com.narvii.mediaeditor.R.string.invalid_input);
            alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.video.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseMediaEditorFragment.showInvalidDialog$lambda$11(z6, this, view);
                }
            });
            alertDialog.setCancelable(false);
            alertDialog.show();
        }
    }
}
