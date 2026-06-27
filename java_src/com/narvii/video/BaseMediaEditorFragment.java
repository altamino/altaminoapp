package com.narvii.video;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: BaseMediaEditorFragment.kt */
/* loaded from: classes3.dex */
public abstract class BaseMediaEditorFragment extends NVFragment implements MediaTimeLineComponent.TimeLineCallback, FragmentOnBackListener {
    private HashMap _$_findViewCache;
    private AVClipInfoPack activeVideoClip;
    private boolean controllerActive;
    private boolean dragging;
    private boolean hasAudioPrepared;
    private boolean hasVideoPrepared;
    private boolean inPlay;
    private boolean initSuccess;
    private boolean isMute;
    private int lastSeekPreviewTime;
    private File outputFileDir;
    private View pauseShadow;
    private Runnable pendingSeekAction;
    private ImageView playerButton;
    protected IPreviewPlayer previewPlayer;
    private NVEditorPreviewVideoVIew previewVideoView;
    private boolean seeking;
    private boolean skipPauseVideo;
    protected VideoManager videoManager;
    private final LinkedList<Integer> seekRequestQueue = new LinkedList<>();
    private boolean autoPlaying = true;
    private boolean needRealOutput = true;
    private final boolean rtl = Utils.isRtl();

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    protected abstract ArrayList<AVClipInfoPack> getAudioInputClipList();

    protected abstract ArrayList<Caption> getCaptionList();

    protected abstract ArrayList<PipInfoPack> getPipClipList();

    protected abstract ArrayList<StickerInfoPack> getStickerList();

    protected abstract ArrayList<AVClipInfoPack> getVideoInputClipList();

    protected boolean ignoreMainTrackCompletionInBase() {
        return false;
    }

    public abstract void initComponent();

    protected abstract void innerOnVideoPrepared();

    protected abstract void onSeekingStatusChanged(boolean z);

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineScrolledOffsetChanged(int i) {
    }

    protected abstract void onVideoPlaybackStatusChanged(boolean z);

    protected void onVideoSeekingPositionChanged(long j) {
    }

    protected boolean showPauseButton() {
        return false;
    }

    public void onTimeLineClicked(ITimelineClip clipInfo) {
        Intrinsics.checkParameterIsNotNull(clipInfo, "clipInfo");
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineClicked(this, clipInfo);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineLayout(this);
    }

    protected final VideoManager getVideoManager() {
        VideoManager videoManager = this.videoManager;
        if (videoManager != null) {
            return videoManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("videoManager");
        throw null;
    }

    protected final void setVideoManager(VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(videoManager, "<set-?>");
        this.videoManager = videoManager;
    }

    protected final LinkedList<Integer> getSeekRequestQueue() {
        return this.seekRequestQueue;
    }

    protected final NVEditorPreviewVideoVIew getPreviewVideoView() {
        return this.previewVideoView;
    }

    protected final void setPreviewVideoView(NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew) {
        this.previewVideoView = nVEditorPreviewVideoVIew;
    }

    protected final IPreviewPlayer getPreviewPlayer() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            return iPreviewPlayer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
        throw null;
    }

    protected final void setPreviewPlayer(IPreviewPlayer iPreviewPlayer) {
        Intrinsics.checkParameterIsNotNull(iPreviewPlayer, "<set-?>");
        this.previewPlayer = iPreviewPlayer;
    }

    protected final AVClipInfoPack getActiveVideoClip() {
        return this.activeVideoClip;
    }

    protected final void setActiveVideoClip(AVClipInfoPack aVClipInfoPack) {
        this.activeVideoClip = aVClipInfoPack;
    }

    protected final File getOutputFileDir() {
        return this.outputFileDir;
    }

    protected final void setOutputFileDir(File file) {
        this.outputFileDir = file;
    }

    protected final boolean getAutoPlaying() {
        return this.autoPlaying;
    }

    protected final void setAutoPlaying(boolean z) {
        this.autoPlaying = z;
    }

    protected final boolean getDragging() {
        return this.dragging;
    }

    protected final void setDragging(boolean z) {
        this.dragging = z;
    }

    protected final boolean getNeedRealOutput() {
        return this.needRealOutput;
    }

    protected final void setNeedRealOutput(boolean z) {
        this.needRealOutput = z;
    }

    protected final boolean getInitSuccess() {
        return this.initSuccess;
    }

    protected final void setInitSuccess(boolean z) {
        this.initSuccess = z;
    }

    protected final boolean getRtl() {
        return this.rtl;
    }

    protected final ImageView getPlayerButton() {
        return this.playerButton;
    }

    protected final void setPlayerButton(ImageView imageView) {
        this.playerButton = imageView;
    }

    protected final View getPauseShadow() {
        return this.pauseShadow;
    }

    protected final void setPauseShadow(View view) {
        this.pauseShadow = view;
    }

    protected final boolean getInPlay() {
        return this.inPlay;
    }

    protected final void setInPlay(boolean z) {
        this.inPlay = z;
    }

    protected final boolean getSkipPauseVideo() {
        return this.skipPauseVideo;
    }

    protected final void setSkipPauseVideo(boolean z) {
        this.skipPauseVideo = z;
    }

    protected void onActiveVideoChanged(int i, boolean z) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        if (iPreviewPlayer.getVideoClipInfoList().isEmpty()) {
            this.activeVideoClip = null;
            return;
        }
        IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
        if (iPreviewPlayer2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        int size = iPreviewPlayer2.getVideoClipInfoList().size();
        if (i >= 0 && size > i) {
            IPreviewPlayer iPreviewPlayer3 = this.previewPlayer;
            if (iPreviewPlayer3 != null) {
                this.activeVideoClip = iPreviewPlayer3.getVideoClipInfoList().get(i);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
                throw null;
            }
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onControllerActive() {
        this.controllerActive = true;
    }

    public void onFrameLocatedDuringMove(final int i, int i2) {
        if (this.lastSeekPreviewTime == i) {
            return;
        }
        if (!this.isMute) {
            IPreviewPlayer iPreviewPlayer = this.previewPlayer;
            if (iPreviewPlayer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
                throw null;
            }
            iPreviewPlayer.mute();
            this.isMute = true;
        }
        this.lastSeekPreviewTime = i;
        Utils.post(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment.onFrameLocatedDuringMove.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.safeSeekTo$default(BaseMediaEditorFragment.this, 0, i, 1, null);
            }
        });
        this.dragging = true;
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(final int i, int i2, int i3) {
        if (i3 == 3 || i3 == 2) {
            this.dragging = false;
        }
        if ((this.controllerActive || this.seeking) && (i3 == 1 || i3 == 4)) {
            return;
        }
        this.controllerActive = false;
        if (ignoreMainTrackCompletionInBase() && i3 == 1) {
            return;
        }
        Utils.post(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment.onReplayTriggered.1
            @Override // java.lang.Runnable
            public final void run() {
                BaseMediaEditorFragment.safeSeekTo$default(BaseMediaEditorFragment.this, 0, i, 1, null);
            }
        });
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j, long j2) {
        if (j > 0 && !this.hasVideoPrepared) {
            this.hasVideoPrepared = true;
        }
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            iPreviewPlayer.start();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        initComponent();
        if (this.previewVideoView == null) {
            throw new IllegalStateException("Failed to find a NVEditorPreviewVideoView instance");
        }
        ImageView imageView = this.playerButton;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.BaseMediaEditorFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BaseMediaEditorFragment baseMediaEditorFragment = BaseMediaEditorFragment.this;
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(baseMediaEditorFragment, baseMediaEditorFragment.getAutoPlaying(), false, 2, null);
                    BaseMediaEditorFragment.this.setAutoPlaying(!r5.getAutoPlaying());
                }
            });
        }
        NVEditorPreviewVideoVIew.Companion companion = NVEditorPreviewVideoVIew.Companion;
        NVEditorPreviewVideoVIew nVEditorPreviewVideoVIew = this.previewVideoView;
        if (nVEditorPreviewVideoVIew != null) {
            this.previewPlayer = companion.initPlayer(nVEditorPreviewVideoVIew, this);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        Object service = getService("videoManager");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<VideoManager>(\"videoManager\")");
        this.videoManager = (VideoManager) service;
        this.initSuccess = init();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        iPreviewPlayer.restoreStates();
        super.onResume();
        if (this.autoPlaying) {
            changeVideoPlaybackStatus(false, false);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
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
        if (iEditorPackFactory == null || (videoRecycler = iEditorPackFactory.getVideoRecycler()) == null) {
            return;
        }
        videoRecycler.clearCacheResources();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        iPreviewPlayer.release();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        setResult(0);
        return false;
    }

    protected void onAVClipsPrepared() {
        initMediaPlayer();
    }

    private final boolean init() {
        this.needRealOutput = getBooleanParam("realOutput", false);
        return initInputClips();
    }

    protected boolean initInputClips() {
        final ArrayList<AVClipInfoPack> videoInputClipList = getVideoInputClipList();
        final ArrayList<AVClipInfoPack> audioInputClipList = getAudioInputClipList();
        final ArrayList<Caption> captionList = getCaptionList();
        final ArrayList<StickerInfoPack> stickerList = getStickerList();
        String stringParam = getStringParam("outputFileDir");
        if (videoInputClipList.isEmpty() || (this.needRealOutput && stringParam == null)) {
            showInvalidDialog$default(this, false, 1, null);
            return false;
        }
        if (this.needRealOutput) {
            this.outputFileDir = new File(stringParam);
            File file = this.outputFileDir;
            if (file == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (!file.exists()) {
                File file2 = this.outputFileDir;
                if (file2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                file2.mkdirs();
            }
        }
        Utils.createThreadPoolExecutor(1, "prepare AV clip list").execute(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment.initInputClips.1
            @Override // java.lang.Runnable
            public final void run() {
                final ArrayList arrayList = new ArrayList();
                Iterator it = videoInputClipList.iterator();
                while (it.hasNext()) {
                    AVClipInfoPack clip = (AVClipInfoPack) it.next();
                    BaseMediaEditorFragment baseMediaEditorFragment = BaseMediaEditorFragment.this;
                    Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
                    if (baseMediaEditorFragment.prepareAVClipSync(clip)) {
                        arrayList.add(clip);
                    }
                }
                final ArrayList arrayList2 = new ArrayList();
                Iterator it2 = audioInputClipList.iterator();
                while (it2.hasNext()) {
                    AVClipInfoPack clip2 = (AVClipInfoPack) it2.next();
                    BaseMediaEditorFragment baseMediaEditorFragment2 = BaseMediaEditorFragment.this;
                    Intrinsics.checkExpressionValueIsNotNull(clip2, "clip");
                    if (baseMediaEditorFragment2.prepareAVClipSync(clip2)) {
                        arrayList2.add(clip2);
                    }
                }
                final ArrayList arrayList3 = new ArrayList();
                Iterator<PipInfoPack> it3 = BaseMediaEditorFragment.this.getPipClipList().iterator();
                while (it3.hasNext()) {
                    PipInfoPack clip3 = it3.next();
                    BaseMediaEditorFragment baseMediaEditorFragment3 = BaseMediaEditorFragment.this;
                    Intrinsics.checkExpressionValueIsNotNull(clip3, "clip");
                    if (baseMediaEditorFragment3.preparePipClipSync(clip3)) {
                        arrayList3.add(clip3);
                    }
                }
                Utils.post(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment.initInputClips.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (BaseMediaEditorFragment.this.getActivity() != null) {
                            FragmentActivity activity = BaseMediaEditorFragment.this.getActivity();
                            if (activity == null) {
                                Intrinsics.throwNpe();
                                throw null;
                            }
                            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
                            if (activity.isFinishing()) {
                                return;
                            }
                            if (arrayList.isEmpty()) {
                                BaseMediaEditorFragment.this.showInvalidDialog(false);
                            }
                            BaseMediaEditorFragment baseMediaEditorFragment4 = BaseMediaEditorFragment.this;
                            baseMediaEditorFragment4.setActiveVideoClip(IPreviewPlayer.DefaultImpls.resetVideoClipList$default(baseMediaEditorFragment4.getPreviewPlayer(), arrayList, 0, 0, 6, null));
                            BaseMediaEditorFragment.this.getPreviewPlayer().resetAudioClipList(arrayList2);
                            BaseMediaEditorFragment.this.getPreviewPlayer().resetCaptionList(captionList);
                            BaseMediaEditorFragment.this.getPreviewPlayer().resetStickerList(stickerList);
                            BaseMediaEditorFragment.this.getPreviewPlayer().resetPipVideoList(arrayList3);
                            BaseMediaEditorFragment.this.onAVClipsPrepared();
                        }
                    }
                });
            }
        });
        return true;
    }

    public static /* synthetic */ void prepareAVClipList$default(BaseMediaEditorFragment baseMediaEditorFragment, ArrayList arrayList, boolean z, Callback callback, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: prepareAVClipList");
        }
        if ((i & 2) != 0) {
            z = true;
        }
        baseMediaEditorFragment.prepareAVClipList(arrayList, z, callback);
    }

    protected final void prepareAVClipList(final ArrayList<AVClipInfoPack> clipList, final boolean z, final Callback<Boolean> callback) {
        Intrinsics.checkParameterIsNotNull(clipList, "clipList");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        Utils.createThreadPoolExecutor(1, "prepare AV clip list").execute(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment.prepareAVClipList.1
            @Override // java.lang.Runnable
            public final void run() {
                final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                ref$BooleanRef.element = false;
                ArrayList arrayList = new ArrayList();
                Iterator it = clipList.iterator();
                while (it.hasNext()) {
                    AVClipInfoPack clip = (AVClipInfoPack) it.next();
                    BaseMediaEditorFragment baseMediaEditorFragment = BaseMediaEditorFragment.this;
                    Intrinsics.checkExpressionValueIsNotNull(clip, "clip");
                    if (!baseMediaEditorFragment.prepareAVClipSync(clip)) {
                        ref$BooleanRef.element = true;
                        arrayList.add(clip);
                    }
                }
                if (ref$BooleanRef.element) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        clipList.remove((AVClipInfoPack) it2.next());
                    }
                }
                Utils.post(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment.prepareAVClipList.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ref$BooleanRef.element) {
                            RunnableC11291 runnableC11291 = RunnableC11291.this;
                            BaseMediaEditorFragment.this.showInvalidDialog(z);
                        }
                        callback.call(Boolean.valueOf(!ref$BooleanRef.element));
                    }
                });
            }
        });
    }

    protected final boolean prepareAVClipSync(AVClipInfoPack clip) {
        String str;
        String str2;
        int i;
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        File inputFile = clip.getInputFile();
        if ((inputFile != null && !inputFile.exists()) || (((str = clip.inputPath) != null && StringsKt__StringsKt.contains$default(str, ";", false, 2, null)) || ((str2 = clip.inputPath) != null && StringsKt__StringsKt.contains$default(str2, ",", false, 2, null)))) {
            return false;
        }
        String str3 = clip.inputPath;
        Intrinsics.checkExpressionValueIsNotNull(str3, "clip.inputPath");
        if (isImageInput(str3)) {
            i = 5000;
            SceneMediaProcessor.INSTANCE.fillVideoMetadata(clip, true, null);
        } else {
            VideoManager videoManager = this.videoManager;
            if (videoManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoManager");
                throw null;
            }
            if (inputFile == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            String absolutePath = inputFile.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "inputFile!!.absolutePath");
            StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(absolutePath);
            clip.streamInfo = streamInfoFetchStreamInfoSync;
            if (streamInfoFetchStreamInfoSync.hasError || !isInputCodecSupported(streamInfoFetchStreamInfoSync)) {
                return false;
            }
            int i2 = streamInfoFetchStreamInfoSync.durationInMs;
            SceneMediaProcessor.INSTANCE.fillVideoMetadata(clip, false, streamInfoFetchStreamInfoSync);
            i = i2;
        }
        updateAVClipDurations(clip, i);
        return true;
    }

    protected final boolean preparePipClipSync(PipInfoPack clip) {
        String str;
        String str2;
        int i;
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        String str3 = clip.inputPath;
        File file = str3 != null ? new File(str3) : null;
        if ((file != null && !file.exists()) || (((str = clip.inputPath) != null && StringsKt__StringsKt.contains$default(str, ";", false, 2, null)) || ((str2 = clip.inputPath) != null && StringsKt__StringsKt.contains$default(str2, ",", false, 2, null)))) {
            return false;
        }
        String str4 = clip.inputPath;
        Intrinsics.checkExpressionValueIsNotNull(str4, "clip.inputPath");
        if (isImageInput(str4)) {
            i = 5000;
        } else {
            VideoManager videoManager = this.videoManager;
            if (videoManager == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoManager");
                throw null;
            }
            if (file == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "inputFile!!.absolutePath");
            StreamInfo streamInfoFetchStreamInfoSync = videoManager.fetchStreamInfoSync(absolutePath);
            clip.streamInfo = streamInfoFetchStreamInfoSync;
            if (streamInfoFetchStreamInfoSync.hasError || !isInputCodecSupported(streamInfoFetchStreamInfoSync)) {
                return false;
            }
            i = streamInfoFetchStreamInfoSync.durationInMs;
        }
        if (!clip.isTrimSectionValid()) {
            clip.trimEndInMs = clip.trimStartInMs + i;
        }
        clip.visibleDurationInMs = clip.isTrimSectionValid() ? clip.trimmedDurationInMs() : i;
        clip.orgDurationInMs = i;
        return true;
    }

    protected void updateAVClipDurations(AVClipInfoPack clip, int i) {
        Intrinsics.checkParameterIsNotNull(clip, "clip");
        clip.visibleDurationInMs = clip.isTrimSectionValid() ? clip.trimmedDurationInMs() : i;
        clip.orgDurationInMs = i;
    }

    protected final boolean isImageInput(String url) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        return Utils.isJPG(url) || Utils.isPNG(url) || Utils.isBMP(url);
    }

    private final void initMediaPlayer() {
        this.hasVideoPrepared = false;
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        this.hasAudioPrepared = iPreviewPlayer.getAudioClipInfoList().isEmpty();
        IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
        if (iPreviewPlayer2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        iPreviewPlayer2.addSeekingPositionChangeListener(new OnSeekingPositionListener() { // from class: com.narvii.video.BaseMediaEditorFragment.initMediaPlayer.1
            @Override // com.narvii.video.interfaces.OnSeekingPositionListener
            public final void onSeekingPositionChanged(long j) {
                BaseMediaEditorFragment.this.onVideoSeekingPositionChanged(j);
            }
        });
        IPreviewPlayer iPreviewPlayer3 = this.previewPlayer;
        if (iPreviewPlayer3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        iPreviewPlayer3.addMediaEventListener(new AnonymousClass2());
        this.autoPlaying = false;
        changeVideoPlaybackStatus$default(this, true, false, 2, null);
        onVideoPlaybackStatusChanged(false);
        ((FrameLayout) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_container)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.BaseMediaEditorFragment.initMediaPlayer.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (BaseMediaEditorFragment.this.isSeeking()) {
                    return;
                }
                BaseMediaEditorFragment baseMediaEditorFragment = BaseMediaEditorFragment.this;
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(baseMediaEditorFragment, baseMediaEditorFragment.getAutoPlaying(), false, 2, null);
                BaseMediaEditorFragment.this.setAutoPlaying(!r5.getAutoPlaying());
            }
        });
    }

    /* compiled from: BaseMediaEditorFragment.kt */
    /* renamed from: com.narvii.video.BaseMediaEditorFragment$initMediaPlayer$2, reason: invalid class name */
    public static final class AnonymousClass2 extends MediaEventListenerImpl {
        AnonymousClass2() {
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
        public void onDoNextVideoSeek() {
            MediaTimeLineComponent mediaTimeLineComponent;
            super.onDoNextVideoSeek();
            if ((BaseMediaEditorFragment.this.controllerActive || BaseMediaEditorFragment.this.isSeeking()) && (!BaseMediaEditorFragment.this.getSeekRequestQueue().isEmpty())) {
                BaseMediaEditorFragment.this.changeSeekStatus(true);
                Utils.post(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!BaseMediaEditorFragment.this.getSeekRequestQueue().isEmpty()) {
                            Integer seekToMillis = BaseMediaEditorFragment.this.getSeekRequestQueue().removeFirst();
                            int currentVideoPositionInTimeline = BaseMediaEditorFragment.this.getPreviewPlayer().getCurrentVideoPositionInTimeline();
                            if (seekToMillis != null && seekToMillis.intValue() == currentVideoPositionInTimeline) {
                                BaseMediaEditorFragment.this.changeSeekStatus(false);
                                if (!BaseMediaEditorFragment.this.getAutoPlaying() || BaseMediaEditorFragment.this.getDragging()) {
                                    return;
                                }
                                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, false, false, 2, null);
                                return;
                            }
                            BaseMediaEditorFragment baseMediaEditorFragment = BaseMediaEditorFragment.this;
                            Intrinsics.checkExpressionValueIsNotNull(seekToMillis, "seekToMillis");
                            BaseMediaEditorFragment.seekTo$default(baseMediaEditorFragment, 0, seekToMillis.intValue(), 1, null);
                        }
                    }
                });
            } else {
                Utils.post(new Runnable() { // from class: com.narvii.video.BaseMediaEditorFragment$initMediaPlayer$2$onDoNextVideoSeek$2
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseMediaEditorFragment.this.changeSeekStatus(false);
                        if (!BaseMediaEditorFragment.this.getAutoPlaying() || BaseMediaEditorFragment.this.getDragging()) {
                            return;
                        }
                        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, false, false, 2, null);
                    }
                });
            }
            if (BaseMediaEditorFragment.this.controllerActive || BaseMediaEditorFragment.this.isSeeking() || !BaseMediaEditorFragment.this.getAutoPlaying() || ((mediaTimeLineComponent = (MediaTimeLineComponent) BaseMediaEditorFragment.this._$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component)) != null && mediaTimeLineComponent.getCurRecyclerViewState() == 1)) {
                if (BaseMediaEditorFragment.this.getPreviewPlayer().pauseWhenNextSeek()) {
                    BaseMediaEditorFragment.this.getPreviewPlayer().pause();
                }
            } else {
                BaseMediaEditorFragment.this.getPreviewPlayer().unMute();
                BaseMediaEditorFragment.this.isMute = false;
            }
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onVideoError(Exception exc) {
            super.onVideoError(exc);
            BaseMediaEditorFragment.showInvalidDialog$default(BaseMediaEditorFragment.this, false, 1, null);
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onAudioTrackAllPrepared() {
            super.onAudioTrackAllPrepared();
            if (BaseMediaEditorFragment.this.isSeeking()) {
                return;
            }
            BaseMediaEditorFragment.this.hasAudioPrepared = true;
            if (BaseMediaEditorFragment.this.getAutoPlaying() && BaseMediaEditorFragment.this.hasVideoPrepared) {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, false, false, 2, null);
            } else {
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(BaseMediaEditorFragment.this, true, false, 2, null);
            }
        }

        @Override // com.narvii.video.widget.videoview.MediaEventListenerImpl, com.narvii.video.interfaces.IMediaEventListener
        public void onVideoWindowIndexChanged(int i, boolean z) {
            super.onVideoWindowIndexChanged(i, z);
            BaseMediaEditorFragment.this.onActiveVideoChanged(i, z);
        }
    }

    static /* synthetic */ void seekTo$default(BaseMediaEditorFragment baseMediaEditorFragment, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: seekTo");
        }
        if ((i3 & 1) != 0) {
            i = -1;
        }
        baseMediaEditorFragment.seekTo(i, i2);
    }

    private final void seekTo(int i, int i2) {
        changeSeekStatus(true);
        if (i == -1) {
            IPreviewPlayer iPreviewPlayer = this.previewPlayer;
            if (iPreviewPlayer != null) {
                iPreviewPlayer.seekTimeLineTo(i2);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
                throw null;
            }
        }
        IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
        if (iPreviewPlayer2 != null) {
            iPreviewPlayer2.seekTimeLineTo(i, i2);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
    }

    public static /* synthetic */ void safeSeekTo$default(BaseMediaEditorFragment baseMediaEditorFragment, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: safeSeekTo");
        }
        if ((i3 & 1) != 0) {
            i = -1;
        }
        baseMediaEditorFragment.safeSeekTo(i, i2);
    }

    protected final void safeSeekTo(int i, int i2) {
        if (!isSeeking()) {
            seekTo(i, i2);
            return;
        }
        if (i > 0) {
            for (int i3 = 0; i3 < i; i3++) {
                IPreviewPlayer iPreviewPlayer = this.previewPlayer;
                if (iPreviewPlayer == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
                    throw null;
                }
                i2 += iPreviewPlayer.getVideoClipInfoList().get(i3).trimmedDurationInMsWithSpeed();
            }
        }
        if (this.seekRequestQueue.size() >= 2) {
            this.seekRequestQueue.removeFirst();
        }
        this.seekRequestQueue.addLast(Integer.valueOf(i2));
    }

    protected final void changeSeekStatus(boolean z) {
        if (z == this.seeking) {
            return;
        }
        this.seeking = z;
        onSeekingStatusChanged(z);
    }

    protected final boolean isSeeking() {
        if (!this.seeking) {
            IPreviewPlayer iPreviewPlayer = this.previewPlayer;
            if (iPreviewPlayer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
                throw null;
            }
            if (!iPreviewPlayer.isSeeking()) {
                return false;
            }
        }
        return true;
    }

    protected final boolean isInputCodecSupported(StreamInfo info) {
        Intrinsics.checkParameterIsNotNull(info, "info");
        if (info.vCodecType == null && info.aCodecType == null) {
            return false;
        }
        List<String> listSplit$default = StringsKt__StringsKt.split$default("h264,hevc,mpeg4,mp3,aac,pcm,flac,yuv4,mjpeg,gif,png,bmp", new String[]{","}, false, 0, 6, null);
        if (listSplit$default.isEmpty()) {
            return false;
        }
        boolean z = info.vCodecType == null;
        boolean z2 = info.aCodecType == null;
        for (String str : listSplit$default) {
            if (StringsKt__StringsJVMKt.equals(str, info.vCodecType, true)) {
                z = true;
            } else if (StringsKt__StringsJVMKt.equals(str, info.aCodecType, true)) {
                z2 = true;
            }
            if (z && z2) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ void changeVideoPlaybackStatus$default(BaseMediaEditorFragment baseMediaEditorFragment, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: changeVideoPlaybackStatus");
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        baseMediaEditorFragment.changeVideoPlaybackStatus(z, z2);
    }

    protected void changeVideoPlaybackStatus(boolean z, boolean z2) {
        if (z) {
            if (showPauseButton()) {
                ImageView imageView = this.playerButton;
                if (imageView instanceof ImageView) {
                    if (imageView == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    imageView.setImageResource(com.narvii.mediaeditor.R.drawable.ic_sr_media_play);
                }
            } else {
                ImageView imageView2 = this.playerButton;
                if (imageView2 != null) {
                    imageView2.setVisibility(z2 ? 0 : 8);
                }
            }
            View view = this.pauseShadow;
            if (view != null) {
                view.setVisibility(z2 ? 0 : 8);
            }
            IPreviewPlayer iPreviewPlayer = this.previewPlayer;
            if (iPreviewPlayer == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
                throw null;
            }
            iPreviewPlayer.mute();
            this.isMute = true;
            this.inPlay = false;
            IPreviewPlayer iPreviewPlayer2 = this.previewPlayer;
            if (iPreviewPlayer2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
                throw null;
            }
            iPreviewPlayer2.pause();
            onVideoPlaybackStatusChanged(false);
            return;
        }
        if (!showPauseButton()) {
            ImageView imageView3 = this.playerButton;
            if (imageView3 != null) {
                imageView3.setVisibility(8);
            }
        } else {
            ImageView imageView4 = this.playerButton;
            if (imageView4 instanceof ImageView) {
                if (imageView4 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                imageView4.setImageResource(com.narvii.mediaeditor.R.drawable.ic_action_pause);
            }
        }
        View view2 = this.pauseShadow;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        this.inPlay = true;
        IPreviewPlayer iPreviewPlayer3 = this.previewPlayer;
        if (iPreviewPlayer3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        iPreviewPlayer3.unMute();
        this.isMute = false;
        if (this.seeking) {
            return;
        }
        IPreviewPlayer iPreviewPlayer4 = this.previewPlayer;
        if (iPreviewPlayer4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        iPreviewPlayer4.start();
        onVideoPlaybackStatusChanged(true);
    }

    public static /* synthetic */ void showInvalidDialog$default(BaseMediaEditorFragment baseMediaEditorFragment, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showInvalidDialog");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        baseMediaEditorFragment.showInvalidDialog(z);
    }

    protected final void showInvalidDialog(final boolean z) {
        if (getActivity() != null) {
            FragmentActivity activity = getActivity();
            if (activity == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity!!");
            if (activity.isFinishing()) {
                return;
            }
            AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setMessage(com.narvii.mediaeditor.R.string.invalid_input);
            alertDialog.addButton(android.R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.video.BaseMediaEditorFragment.showInvalidDialog.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (z) {
                        BaseMediaEditorFragment.this.setResult(0);
                        BaseMediaEditorFragment.this.finish();
                    }
                }
            });
            alertDialog.setCancelable(false);
            alertDialog.show();
        }
    }

    protected final Pair<Integer, ArrayList<Integer>> getTotalVisibleVideoDurationInMs() {
        ArrayList arrayList = new ArrayList();
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
            throw null;
        }
        Iterator<AVClipInfoPack> it = iPreviewPlayer.getVideoClipInfoList().iterator();
        int i = 0;
        while (it.hasNext()) {
            int iClipLength = it.next().clipLength();
            i += iClipLength;
            arrayList.add(Integer.valueOf(iClipLength));
        }
        return new Pair<>(Integer.valueOf(i), arrayList);
    }

    protected final boolean isAudioClipIndexValid(int i) {
        IPreviewPlayer iPreviewPlayer = this.previewPlayer;
        if (iPreviewPlayer != null) {
            return i >= 0 && iPreviewPlayer.getAudioClipInfoList().size() > i;
        }
        Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
        throw null;
    }
}
