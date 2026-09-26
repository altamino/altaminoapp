package com.narvii.video;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.narvii.pip.PipInfoPack;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.MediaTimeLineComponentKt;
import io.agora.rtc.internal.RtcEngineEvent;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ScrollingTimeLineFragment extends BaseMediaEditorFragment {
    protected FrameRetrieverManager frameRetrieverManager;
    private boolean hasVideoCompleted;

    @Nullable
    private MediaTimeLineComponent mainTimeLineComponent;
    private boolean skipSeekForTimeLineScrolling;
    private boolean subAudioEditing;
    private boolean subVideoEditing;

    @Nullable
    private TextView videoDurationText;

    @Nullable
    private View videoPlaybackTimeDivider;

    @Nullable
    private TextView videoPlaybackTimeText;
    private final int REQUEST_CODE_SCENE_EDITOR = RtcEngineEvent.EvtType.EVT_UNPUBLISH_URL;
    private final int REQUEST_CODE_EDIT_ATTACHMENT = 2222;

    @NotNull
    private ArrayList<AVClipInfoPack> subEditingReturnClipList = new ArrayList<>();

    private final void initVideoTimeLine() {
        updateVideoTimeLineInfo$default(this, false, 0, 3, null);
    }

    protected final boolean getHasVideoCompleted() {
        return this.hasVideoCompleted;
    }

    @Nullable
    protected final MediaTimeLineComponent getMainTimeLineComponent() {
        return this.mainTimeLineComponent;
    }

    protected final int getREQUEST_CODE_EDIT_ATTACHMENT() {
        return this.REQUEST_CODE_EDIT_ATTACHMENT;
    }

    protected final int getREQUEST_CODE_SCENE_EDITOR() {
        return this.REQUEST_CODE_SCENE_EDITOR;
    }

    protected final boolean getSkipSeekForTimeLineScrolling() {
        return this.skipSeekForTimeLineScrolling;
    }

    protected final boolean getSubAudioEditing() {
        return this.subAudioEditing;
    }

    @NotNull
    protected final ArrayList<AVClipInfoPack> getSubEditingReturnClipList() {
        return this.subEditingReturnClipList;
    }

    protected final boolean getSubVideoEditing() {
        return this.subVideoEditing;
    }

    @Nullable
    protected final TextView getVideoDurationText() {
        return this.videoDurationText;
    }

    @Nullable
    protected final View getVideoPlaybackTimeDivider() {
        return this.videoPlaybackTimeDivider;
    }

    @Nullable
    protected final TextView getVideoPlaybackTimeText() {
        return this.videoPlaybackTimeText;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean ignoreMainTrackCompletionInBase() {
        return true;
    }

    public abstract void initFrameRetrieverManager();

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void innerOnVideoPrepared() {
    }

    protected final void moveMainTrackTo(int i10) {
        BaseMediaEditorFragment.safeSeekTo$default(this, 0, i10, 1, null);
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, i10, false, false, true, false, 0, false, 118, null);
        }
        TextView textView = this.videoPlaybackTimeText;
        if (textView == null) {
            return;
        }
        textView.setText(MediaTimeLineComponentKt.convertMillisToTime(i10));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        setAutoPlaying(false);
        super.onCreate(bundle);
        setFrameRetrieverManager(new FrameRetrieverManager(this));
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i10, int i11, int i12) {
        if (i12 == 1) {
            this.hasVideoCompleted = true;
            setAutoPlaying(false);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.w0
                @Override // java.lang.Runnable
                public final void run() {
                    ScrollingTimeLineFragment.onReplayTriggered$lambda$8(this.f2966a);
                }
            }, 50L);
        } else {
            this.hasVideoCompleted = false;
        }
        super.onReplayTriggered(i10, i11, i12);
    }

    protected final void setFrameRetrieverManager(@NotNull FrameRetrieverManager frameRetrieverManager) {
        kotlin.jvm.internal.t.j(frameRetrieverManager, "<set-?>");
        this.frameRetrieverManager = frameRetrieverManager;
    }

    protected final void setHasVideoCompleted(boolean z6) {
        this.hasVideoCompleted = z6;
    }

    protected final void setMainTimeLineComponent(@Nullable MediaTimeLineComponent mediaTimeLineComponent) {
        this.mainTimeLineComponent = mediaTimeLineComponent;
    }

    protected final void setSkipSeekForTimeLineScrolling(boolean z6) {
        this.skipSeekForTimeLineScrolling = z6;
    }

    protected final void setSubAudioEditing(boolean z6) {
        this.subAudioEditing = z6;
    }

    protected final void setSubEditingReturnClipList(@NotNull ArrayList<AVClipInfoPack> arrayList) {
        kotlin.jvm.internal.t.j(arrayList, "<set-?>");
        this.subEditingReturnClipList = arrayList;
    }

    protected final void setSubVideoEditing(boolean z6) {
        this.subVideoEditing = z6;
    }

    protected final void setVideoDurationText(@Nullable TextView textView) {
        this.videoDurationText = textView;
    }

    protected final void setVideoPlaybackTimeDivider(@Nullable View view) {
        this.videoPlaybackTimeDivider = view;
    }

    protected final void setVideoPlaybackTimeText(@Nullable TextView textView) {
        this.videoPlaybackTimeText = textView;
    }

    public static /* synthetic */ void updateVideoTimeLineInfo$default(ScrollingTimeLineFragment scrollingTimeLineFragment, boolean z6, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateVideoTimeLineInfo");
        }
        if ((i11 & 1) != 0) {
            z6 = false;
        }
        if ((i11 & 2) != 0) {
            i10 = -1;
        }
        scrollingTimeLineFragment.updateVideoTimeLineInfo(z6, i10);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z6, boolean z10) {
        if (!z6 && this.hasVideoCompleted) {
            this.hasVideoCompleted = false;
            this.skipSeekForTimeLineScrolling = true;
            MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
            if (mediaTimeLineComponent != null) {
                MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, 0, true, false, false, false, 0, false, 125, null);
            }
            getSeekRequestQueue().clear();
            BaseMediaEditorFragment.safeSeekTo$default(this, 0, 0, 1, null);
        }
        super.changeVideoPlaybackStatus(z6, z10);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        ArrayList<AVClipInfoPack> listAs;
        String stringParam = getStringParam("inputAudioClipList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, AVClipInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<Caption> getCaptionList() {
        ArrayList<Caption> listAs;
        String stringParam = getStringParam("inputCaptionList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, Caption.class)) == null) ? new ArrayList<>() : listAs;
    }

    @NotNull
    protected final FrameRetrieverManager getFrameRetrieverManager() {
        FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
        if (frameRetrieverManager != null) {
            return frameRetrieverManager;
        }
        kotlin.jvm.internal.t.B("frameRetrieverManager");
        return null;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<PipInfoPack> getPipClipList() {
        ArrayList<PipInfoPack> listAs;
        String stringParam = getStringParam("inputPipInfoPackList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, PipInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<StickerInfoPack> getStickerList() {
        ArrayList<StickerInfoPack> listAs;
        String stringParam = getStringParam("inputStickerList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, StickerInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getVideoInputClipList() {
        ArrayList<AVClipInfoPack> listAs;
        String stringParam = getStringParam("inputVideoClipList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, AVClipInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    protected void innerInitMainTimeLine(int i10, boolean z6) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.initTimeLine(100, 202, false, getPreviewPlayer().getVideoClipInfoList(), getPreviewPlayer(), (40704 & 32) != 0 ? null : getFrameRetrieverManager(), i10, (40704 & 128) != 0 ? 3000 : 3000, (40704 & 256) != 0 ? -1.0f : 1000.0f, (40704 & 512) != 0 ? false : true, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : true, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : 0, (40704 & 16384) != 0 ? null : this, (40704 & 32768) != 0 ? false : z6);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == this.REQUEST_CODE_SCENE_EDITOR && i11 == -1) {
            String stringExtra = intent != null ? intent.getStringExtra("clipInfoList") : null;
            boolean booleanExtra = intent != null ? intent.getBooleanExtra("isVideoTrimming", true) : true;
            List listAs = JacksonUtils.readListAs(intent != null ? intent.getStringExtra("videoVolumeList") : null, Float.TYPE);
            if (listAs == null) {
                listAs = kotlin.collections.v.m();
            }
            if (!booleanExtra && stringExtra == null) {
                getPreviewPlayer().removeAllAudios();
                this.subEditingReturnClipList.clear();
            }
            final kotlin.jvm.internal.n0 n0Var = new kotlin.jvm.internal.n0();
            int i12 = 0;
            if (stringExtra != null) {
                ArrayList<AVClipInfoPack> listAs2 = JacksonUtils.readListAs(stringExtra, AVClipInfoPack.class);
                if (listAs2 != null && (!listAs2.isEmpty())) {
                    if (booleanExtra) {
                        AVClipInfoPack aVClipInfoPack = listAs2.get(0);
                        aVClipInfoPack.visibleDurationInMs = aVClipInfoPack.trimmedDurationInMs();
                        n0Var.element = aVClipInfoPack.indexInScene;
                        ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
                        if (videoClipInfoList.isEmpty()) {
                            videoClipInfoList.add(aVClipInfoPack);
                        } else {
                            AVClipInfoPack aVClipInfoPack2 = videoClipInfoList.get(n0Var.element);
                            kotlin.jvm.internal.t.i(aVClipInfoPack2, "get(...)");
                            aVClipInfoPack2.merge(aVClipInfoPack);
                            getPreviewPlayer().adjustAllViceTrackRange(getTotalVisibleVideoDurationInMs().c().intValue());
                        }
                        int size = videoClipInfoList.size();
                        for (int i13 = 0; i13 < size; i13++) {
                            videoClipInfoList.get(i13).indexInScene = i13;
                        }
                        IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, 0, 0, 6, null);
                    } else {
                        getPreviewPlayer().resetAudioClipList(listAs2);
                    }
                }
                kotlin.jvm.internal.t.g(listAs2);
                this.subEditingReturnClipList = listAs2;
            }
            if (!listAs.isEmpty()) {
                for (Object obj : getPreviewPlayer().getVideoClipInfoList()) {
                    int i14 = i12 + 1;
                    if (i12 < 0) {
                        kotlin.collections.v.w();
                    }
                    AVClipInfoPack aVClipInfoPack3 = (AVClipInfoPack) obj;
                    if (i12 < listAs.size()) {
                        Float f = (Float) listAs.get(i12);
                        kotlin.jvm.internal.t.g(f);
                        aVClipInfoPack3.trackVolume = f.floatValue();
                        getPreviewPlayer().setVolume(aVClipInfoPack3, true);
                    }
                    i12 = i14;
                }
            }
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.v0
                @Override // java.lang.Runnable
                public final void run() {
                    ScrollingTimeLineFragment.onActivityResult$lambda$7(this.f2962a, n0Var);
                }
            }, 700L);
        }
        if (i10 == this.REQUEST_CODE_EDIT_ATTACHMENT && intent != null) {
            ArrayList listAs3 = JacksonUtils.readListAs(intent.getStringExtra("captionList"), Caption.class);
            if (listAs3 == null) {
                getPreviewPlayer().resetCaptionList(new ArrayList());
            } else {
                getPreviewPlayer().resetCaptionList(listAs3);
            }
            ArrayList listAs4 = JacksonUtils.readListAs(intent.getStringExtra("stickerList"), StickerInfoPack.class);
            if (listAs4 == null) {
                getPreviewPlayer().resetStickerList(new ArrayList());
            } else {
                getPreviewPlayer().resetStickerList(listAs4);
            }
            getPreviewPlayer().refreshCurrentPosition();
        }
        if (i10 == 12346 && i11 == -1) {
            ArrayList listAs5 = JacksonUtils.readListAs(intent != null ? intent.getStringExtra("pipList") : null, PipInfoPack.class);
            if (listAs5 == null) {
                getPreviewPlayer().resetPipVideoList(new ArrayList());
            } else {
                getPreviewPlayer().resetPipVideoList(listAs5);
            }
            getPreviewPlayer().refreshCurrentPosition();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i10, int i11) {
        if (this.skipSeekForTimeLineScrolling) {
            this.skipSeekForTimeLineScrolling = false;
            return;
        }
        int iIntValue = getTotalVisibleVideoDurationInMs().c().intValue();
        TextView textView = this.videoPlaybackTimeText;
        if (textView != null) {
            textView.setText(MediaTimeLineComponentKt.convertMillisToTime(Math.min(i10, iIntValue)));
        }
        super.onFrameLocatedDuringMove(i10, i11);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        if (this.subVideoEditing) {
            this.subVideoEditing = false;
        } else if (this.subAudioEditing) {
            this.subAudioEditing = false;
        }
        super.onResume();
        if (getInitSuccess()) {
            getFrameRetrieverManager().onResume();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z6) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent == null) {
            return;
        }
        mediaTimeLineComponent.setSeeking(z6);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z6) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.playbackStatusChanged(z6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityResult$lambda$7(ScrollingTimeLineFragment this$0, kotlin.jvm.internal.n0 newActiveClipIndex) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(newActiveClipIndex, "$newActiveClipIndex");
        this$0.updateVideoTimeLineInfo(true, newActiveClipIndex.element);
        this$0.safeSeekTo(newActiveClipIndex.element, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onReplayTriggered$lambda$8(ScrollingTimeLineFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        TextView textView = this$0.videoPlaybackTimeText;
        if (textView != null) {
            textView.setText(MediaTimeLineComponentKt.convertMillisToTime(this$0.getTotalVisibleVideoDurationInMs().c().intValue()));
        }
        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
        this$0.changeSeekStatus(false);
    }

    protected final int getMainTrackPlaybackTime() {
        return getPreviewPlayer().getCurrentVideoPositionInTimeline();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:11:0x0026 A[ORIG_RETURN, RETURN] */
    protected final boolean isAllVideoClipMute() {
        for (Object obj : getPreviewPlayer().getVideoClipInfoList()) {
            if (((AVClipInfoPack) obj).trackVolume > 0.0f) {
                if (obj == null) {
                    return true;
                }
                return false;
            }
        }
        obj = null;
        if (obj == null) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        if (!getInitSuccess()) {
            return;
        }
        initFrameRetrieverManager();
        initVideoTimeLine();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onActiveVideoChanged(int i10, boolean z6) {
        int iScrollTimeLineToClip$default;
        TextView textView;
        super.onActiveVideoChanged(i10, z6);
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.setActiveClipInTrack(i10);
        }
        if (z6) {
            MediaTimeLineComponent mediaTimeLineComponent2 = this.mainTimeLineComponent;
            if (mediaTimeLineComponent2 != null) {
                iScrollTimeLineToClip$default = MediaTimeLineComponent.scrollTimeLineToClip$default(mediaTimeLineComponent2, i10, 0, false, 6, null);
            } else {
                iScrollTimeLineToClip$default = -1;
            }
            if (iScrollTimeLineToClip$default >= 0 && (textView = this.videoPlaybackTimeText) != null) {
                textView.setText(MediaTimeLineComponentKt.convertMillisToTime(iScrollTimeLineToClip$default));
            }
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j6, long j10) {
        super.onPlayerTick(j6, j10);
        TextView textView = this.videoPlaybackTimeText;
        if (textView != null) {
            textView.setText(MediaTimeLineComponentKt.convertMillisToTime((int) j6));
        }
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, (int) j6, false, false, false, false, 0, false, 126, null);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        super.onTimeLineLayout();
        updateVideoTimeLineInfo$default(this, false, 0, 3, null);
    }

    protected final void updateVideoTimeLineInfo(boolean z6, int i10) {
        if (getPreviewPlayer().getVideoClipInfoList().isEmpty()) {
            MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
            if (mediaTimeLineComponent != null) {
                mediaTimeLineComponent.setVisibility(4);
            }
            TextView textView = this.videoDurationText;
            if (textView != null) {
                textView.setVisibility(4);
            }
            TextView textView2 = this.videoPlaybackTimeText;
            if (textView2 != null) {
                textView2.setVisibility(4);
            }
            View view = this.videoPlaybackTimeDivider;
            if (view != null) {
                view.setVisibility(4);
                return;
            }
            return;
        }
        MediaTimeLineComponent mediaTimeLineComponent2 = this.mainTimeLineComponent;
        if (mediaTimeLineComponent2 != null) {
            mediaTimeLineComponent2.setVisibility(0);
        }
        TextView textView3 = this.videoDurationText;
        if (textView3 != null) {
            textView3.setVisibility(0);
        }
        TextView textView4 = this.videoPlaybackTimeText;
        if (textView4 != null) {
            textView4.setVisibility(0);
        }
        View view2 = this.videoPlaybackTimeDivider;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        int i11 = 0;
        for (AVClipInfoPack aVClipInfoPack : getPreviewPlayer().getVideoClipInfoList()) {
            if (aVClipInfoPack.isTrimSectionValid()) {
                aVClipInfoPack.visibleDurationInMs = aVClipInfoPack.trimmedDurationInMs();
            }
            int iClipLength = aVClipInfoPack.clipLength();
            aVClipInfoPack.setClipLengthComposition(kotlin.collections.u.e(Integer.valueOf(iClipLength)));
            aVClipInfoPack.setMainTrackClipComposition(kotlin.collections.u.e(Integer.valueOf(iClipLength)));
            i11 += iClipLength;
        }
        TextView textView5 = this.videoPlaybackTimeText;
        if (textView5 != null) {
            textView5.setText(MediaTimeLineComponentKt.convertMillisToTime(0));
        }
        TextView textView6 = this.videoDurationText;
        if (textView6 != null) {
            textView6.setText(MediaTimeLineComponentKt.convertMillisToTime(i11));
        }
        MediaTimeLineComponent mediaTimeLineComponent3 = this.mainTimeLineComponent;
        if (mediaTimeLineComponent3 != null && mediaTimeLineComponent3.getHeight() > 0) {
            innerInitMainTimeLine(i11, z6);
            if (i10 >= 0) {
                IPreviewPlayer.DefaultImpls.setActiveVideoClip$default(getPreviewPlayer(), i10, 0, 2, null);
                return;
            } else {
                BaseMediaEditorFragment.safeSeekTo$default(this, 0, 0, 1, null);
                return;
            }
        }
        MediaTimeLineComponent mediaTimeLineComponent4 = this.mainTimeLineComponent;
        if (mediaTimeLineComponent4 != null) {
            mediaTimeLineComponent4.setTimeLineCallback(this);
        }
    }

    protected final void moveMainTrackTo(int i10, int i11) {
        if (i10 < 0 || i10 >= getPreviewPlayer().getVideoClipInfoList().size()) {
            return;
        }
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (i10 != (activeVideoClip != null ? activeVideoClip.indexInScene : -1)) {
            getPreviewPlayer().setActiveVideoClip(i10, i11);
        }
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += getPreviewPlayer().getVideoClipInfoList().get(i12).trimmedDurationInMsWithSpeed();
        }
        moveMainTrackTo(i11);
    }
}
