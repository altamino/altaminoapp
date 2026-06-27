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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: ScrollingTimeLineFragment.kt */
/* loaded from: classes3.dex */
public abstract class ScrollingTimeLineFragment extends BaseMediaEditorFragment {
    private HashMap _$_findViewCache;
    protected FrameRetrieverManager frameRetrieverManager;
    private boolean hasVideoCompleted;
    private MediaTimeLineComponent mainTimeLineComponent;
    private boolean skipSeekForTimeLineScrolling;
    private boolean subAudioEditing;
    private boolean subVideoEditing;
    private TextView videoDurationText;
    private View videoPlaybackTimeDivider;
    private TextView videoPlaybackTimeText;
    private final int REQUEST_CODE_SCENE_EDITOR = RtcEngineEvent.EvtType.EVT_UNPUBLISH_URL;
    private final int REQUEST_CODE_EDIT_ATTACHMENT = 2222;
    private ArrayList<AVClipInfoPack> subEditingReturnClipList = new ArrayList<>();

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
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

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected boolean ignoreMainTrackCompletionInBase() {
        return true;
    }

    public abstract void initFrameRetrieverManager();

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void innerOnVideoPrepared() {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    protected final int getREQUEST_CODE_SCENE_EDITOR() {
        return this.REQUEST_CODE_SCENE_EDITOR;
    }

    protected final int getREQUEST_CODE_EDIT_ATTACHMENT() {
        return this.REQUEST_CODE_EDIT_ATTACHMENT;
    }

    protected final TextView getVideoDurationText() {
        return this.videoDurationText;
    }

    protected final void setVideoDurationText(TextView textView) {
        this.videoDurationText = textView;
    }

    protected final TextView getVideoPlaybackTimeText() {
        return this.videoPlaybackTimeText;
    }

    protected final void setVideoPlaybackTimeText(TextView textView) {
        this.videoPlaybackTimeText = textView;
    }

    protected final View getVideoPlaybackTimeDivider() {
        return this.videoPlaybackTimeDivider;
    }

    protected final void setVideoPlaybackTimeDivider(View view) {
        this.videoPlaybackTimeDivider = view;
    }

    protected final MediaTimeLineComponent getMainTimeLineComponent() {
        return this.mainTimeLineComponent;
    }

    protected final void setMainTimeLineComponent(MediaTimeLineComponent mediaTimeLineComponent) {
        this.mainTimeLineComponent = mediaTimeLineComponent;
    }

    protected final FrameRetrieverManager getFrameRetrieverManager() {
        FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
        if (frameRetrieverManager != null) {
            return frameRetrieverManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("frameRetrieverManager");
        throw null;
    }

    protected final void setFrameRetrieverManager(FrameRetrieverManager frameRetrieverManager) {
        Intrinsics.checkParameterIsNotNull(frameRetrieverManager, "<set-?>");
        this.frameRetrieverManager = frameRetrieverManager;
    }

    protected final boolean getHasVideoCompleted() {
        return this.hasVideoCompleted;
    }

    protected final void setHasVideoCompleted(boolean z) {
        this.hasVideoCompleted = z;
    }

    protected final boolean getSkipSeekForTimeLineScrolling() {
        return this.skipSeekForTimeLineScrolling;
    }

    protected final void setSkipSeekForTimeLineScrolling(boolean z) {
        this.skipSeekForTimeLineScrolling = z;
    }

    protected final boolean getSubVideoEditing() {
        return this.subVideoEditing;
    }

    protected final void setSubVideoEditing(boolean z) {
        this.subVideoEditing = z;
    }

    protected final boolean getSubAudioEditing() {
        return this.subAudioEditing;
    }

    protected final void setSubAudioEditing(boolean z) {
        this.subAudioEditing = z;
    }

    protected final ArrayList<AVClipInfoPack> getSubEditingReturnClipList() {
        return this.subEditingReturnClipList;
    }

    protected final void setSubEditingReturnClipList(ArrayList<AVClipInfoPack> arrayList) {
        Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
        this.subEditingReturnClipList = arrayList;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getVideoInputClipList() {
        ArrayList<AVClipInfoPack> listAs;
        String stringParam = getStringParam("inputVideoClipList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, AVClipInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        setAutoPlaying(false);
        super.onCreate(bundle);
        this.frameRetrieverManager = new FrameRetrieverManager(this);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        ArrayList<AVClipInfoPack> listAs;
        String stringParam = getStringParam("inputAudioClipList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, AVClipInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<Caption> getCaptionList() {
        ArrayList<Caption> listAs;
        String stringParam = getStringParam("inputCaptionList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, Caption.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<StickerInfoPack> getStickerList() {
        ArrayList<StickerInfoPack> listAs;
        String stringParam = getStringParam("inputStickerList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, StickerInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<PipInfoPack> getPipClipList() {
        ArrayList<PipInfoPack> listAs;
        String stringParam = getStringParam("inputPipInfoPackList");
        return (stringParam == null || (listAs = JacksonUtils.readListAs(stringParam, PipInfoPack.class)) == null) ? new ArrayList<>() : listAs;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == this.REQUEST_CODE_SCENE_EDITOR && i2 == -1) {
            String stringExtra = intent != null ? intent.getStringExtra("clipInfoList") : null;
            boolean booleanExtra = intent != null ? intent.getBooleanExtra("isVideoTrimming", true) : true;
            List listAs = JacksonUtils.readListAs(intent != null ? intent.getStringExtra("videoVolumeList") : null, Float.TYPE);
            if (listAs == null) {
                listAs = CollectionsKt__CollectionsKt.emptyList();
            }
            if (!booleanExtra && stringExtra == null) {
                getPreviewPlayer().removeAllAudios();
                this.subEditingReturnClipList.clear();
            }
            final Ref$IntRef ref$IntRef = new Ref$IntRef();
            int i3 = 0;
            ref$IntRef.element = 0;
            if (stringExtra != null) {
                ArrayList<AVClipInfoPack> newClipInfoList = JacksonUtils.readListAs(stringExtra, AVClipInfoPack.class);
                if (newClipInfoList != null && (!newClipInfoList.isEmpty())) {
                    if (booleanExtra) {
                        AVClipInfoPack aVClipInfoPack = newClipInfoList.get(0);
                        aVClipInfoPack.visibleDurationInMs = aVClipInfoPack.trimmedDurationInMs();
                        ref$IntRef.element = aVClipInfoPack.indexInScene;
                        ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
                        if (videoClipInfoList.isEmpty()) {
                            videoClipInfoList.add(aVClipInfoPack);
                        } else {
                            AVClipInfoPack aVClipInfoPack2 = videoClipInfoList.get(ref$IntRef.element);
                            Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPack2, "clipList[newActiveClipIndex]");
                            aVClipInfoPack2.merge(aVClipInfoPack);
                            getPreviewPlayer().adjustAllViceTrackRange(getTotalVisibleVideoDurationInMs().getFirst().intValue());
                        }
                        int size = videoClipInfoList.size();
                        for (int i4 = 0; i4 < size; i4++) {
                            videoClipInfoList.get(i4).indexInScene = i4;
                        }
                        IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, 0, 0, 6, null);
                    } else {
                        getPreviewPlayer().resetAudioClipList(newClipInfoList);
                    }
                }
                Intrinsics.checkExpressionValueIsNotNull(newClipInfoList, "newClipInfoList");
                this.subEditingReturnClipList = newClipInfoList;
            }
            if (!listAs.isEmpty()) {
                for (Object obj : getPreviewPlayer().getVideoClipInfoList()) {
                    int i5 = i3 + 1;
                    if (i3 >= 0) {
                        AVClipInfoPack aVClipInfoPack3 = (AVClipInfoPack) obj;
                        if (i3 < listAs.size()) {
                            Float volume = (Float) listAs.get(i3);
                            Intrinsics.checkExpressionValueIsNotNull(volume, "volume");
                            aVClipInfoPack3.trackVolume = volume.floatValue();
                            getPreviewPlayer().setVolume(aVClipInfoPack3, true);
                        }
                        i3 = i5;
                    } else {
                        CollectionsKt.throwIndexOverflow();
                        throw null;
                    }
                }
            }
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.ScrollingTimeLineFragment.onActivityResult.3
                @Override // java.lang.Runnable
                public final void run() {
                    ScrollingTimeLineFragment.this.updateVideoTimeLineInfo(true, ref$IntRef.element);
                    ScrollingTimeLineFragment.this.safeSeekTo(ref$IntRef.element, 1);
                }
            }, 700L);
        }
        if (i == this.REQUEST_CODE_EDIT_ATTACHMENT && intent != null) {
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("captionList"), Caption.class);
            if (listAs2 == null) {
                getPreviewPlayer().resetCaptionList(new ArrayList());
            } else {
                getPreviewPlayer().resetCaptionList(listAs2);
            }
            ArrayList listAs3 = JacksonUtils.readListAs(intent.getStringExtra("stickerList"), StickerInfoPack.class);
            if (listAs3 == null) {
                getPreviewPlayer().resetStickerList(new ArrayList());
            } else {
                getPreviewPlayer().resetStickerList(listAs3);
            }
            getPreviewPlayer().refreshCurrentPosition();
        }
        if (i == 12346 && i2 == -1) {
            ArrayList listAs4 = JacksonUtils.readListAs(intent != null ? intent.getStringExtra("pipList") : null, PipInfoPack.class);
            if (listAs4 == null) {
                getPreviewPlayer().resetPipVideoList(new ArrayList());
            } else {
                getPreviewPlayer().resetPipVideoList(listAs4);
            }
            getPreviewPlayer().refreshCurrentPosition();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        if (getInitSuccess()) {
            initFrameRetrieverManager();
            initVideoTimeLine();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        if (this.subVideoEditing) {
            this.subVideoEditing = false;
        } else if (this.subAudioEditing) {
            this.subAudioEditing = false;
        }
        super.onResume();
        if (getInitSuccess()) {
            FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
            if (frameRetrieverManager != null) {
                frameRetrieverManager.onResume();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("frameRetrieverManager");
                throw null;
            }
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        super.onTimeLineLayout();
        updateVideoTimeLineInfo$default(this, false, 0, 3, null);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.playbackStatusChanged(z);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onActiveVideoChanged(int i, boolean z) {
        TextView textView;
        super.onActiveVideoChanged(i, z);
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.setActiveClipInTrack(i);
        }
        if (z) {
            MediaTimeLineComponent mediaTimeLineComponent2 = this.mainTimeLineComponent;
            int iScrollTimeLineToClip$default = mediaTimeLineComponent2 != null ? MediaTimeLineComponent.scrollTimeLineToClip$default(mediaTimeLineComponent2, i, 0, false, 6, null) : -1;
            if (iScrollTimeLineToClip$default < 0 || (textView = this.videoPlaybackTimeText) == null) {
                return;
            }
            textView.setText(MediaTimeLineComponentKt.convertMillisToTime(iScrollTimeLineToClip$default));
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.setSeeking(z);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i, int i2) {
        if (this.skipSeekForTimeLineScrolling) {
            this.skipSeekForTimeLineScrolling = false;
            return;
        }
        int iIntValue = getTotalVisibleVideoDurationInMs().getFirst().intValue();
        TextView textView = this.videoPlaybackTimeText;
        if (textView != null) {
            textView.setText(MediaTimeLineComponentKt.convertMillisToTime(Math.min(i, iIntValue)));
        }
        super.onFrameLocatedDuringMove(i, i2);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i, int i2, int i3) {
        if (i3 == 1) {
            this.hasVideoCompleted = true;
            setAutoPlaying(false);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.ScrollingTimeLineFragment.onReplayTriggered.1
                @Override // java.lang.Runnable
                public final void run() {
                    TextView videoPlaybackTimeText = ScrollingTimeLineFragment.this.getVideoPlaybackTimeText();
                    if (videoPlaybackTimeText != null) {
                        videoPlaybackTimeText.setText(MediaTimeLineComponentKt.convertMillisToTime(ScrollingTimeLineFragment.this.getTotalVisibleVideoDurationInMs().getFirst().intValue()));
                    }
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(ScrollingTimeLineFragment.this, true, false, 2, null);
                    ScrollingTimeLineFragment.this.changeSeekStatus(false);
                }
            }, 50L);
        } else {
            this.hasVideoCompleted = false;
        }
        super.onReplayTriggered(i, i2, i3);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j, long j2) {
        super.onPlayerTick(j, j2);
        TextView textView = this.videoPlaybackTimeText;
        if (textView != null) {
            textView.setText(MediaTimeLineComponentKt.convertMillisToTime((int) j));
        }
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, (int) j, false, false, false, false, 0, false, 126, null);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z, boolean z2) {
        if (!z && this.hasVideoCompleted) {
            this.hasVideoCompleted = false;
            this.skipSeekForTimeLineScrolling = true;
            MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
            if (mediaTimeLineComponent != null) {
                MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, 0, true, false, false, false, 0, false, 125, null);
            }
            getSeekRequestQueue().clear();
            BaseMediaEditorFragment.safeSeekTo$default(this, 0, 0, 1, null);
        }
        super.changeVideoPlaybackStatus(z, z2);
    }

    private final void initVideoTimeLine() {
        updateVideoTimeLineInfo$default(this, false, 0, 3, null);
    }

    protected final void moveMainTrackTo(int i) {
        BaseMediaEditorFragment.safeSeekTo$default(this, 0, i, 1, null);
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, i, false, false, true, false, 0, false, 118, null);
        }
        TextView textView = this.videoPlaybackTimeText;
        if (textView != null) {
            textView.setText(MediaTimeLineComponentKt.convertMillisToTime(i));
        }
    }

    protected final void moveMainTrackTo(int i, int i2) {
        if (i < 0 || i >= getPreviewPlayer().getVideoClipInfoList().size()) {
            return;
        }
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (i != (activeVideoClip != null ? activeVideoClip.indexInScene : -1)) {
            getPreviewPlayer().setActiveVideoClip(i, i2);
        }
        for (int i3 = 0; i3 < i; i3++) {
            i2 += getPreviewPlayer().getVideoClipInfoList().get(i3).trimmedDurationInMsWithSpeed();
        }
        moveMainTrackTo(i2);
    }

    protected final int getMainTrackPlaybackTime() {
        return getPreviewPlayer().getCurrentVideoPositionInTimeline();
    }

    public static /* synthetic */ void updateVideoTimeLineInfo$default(ScrollingTimeLineFragment scrollingTimeLineFragment, boolean z, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateVideoTimeLineInfo");
        }
        if ((i2 & 1) != 0) {
            z = false;
        }
        if ((i2 & 2) != 0) {
            i = -1;
        }
        scrollingTimeLineFragment.updateVideoTimeLineInfo(z, i);
    }

    protected final void updateVideoTimeLineInfo(boolean z, int i) {
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
        Iterator<AVClipInfoPack> it = getPreviewPlayer().getVideoClipInfoList().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            AVClipInfoPack next = it.next();
            if (next.isTrimSectionValid()) {
                next.visibleDurationInMs = next.trimmedDurationInMs();
            }
            int iClipLength = next.clipLength();
            next.setClipLengthComposition(CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(iClipLength)));
            next.setMainTrackClipComposition(CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(iClipLength)));
            i2 += iClipLength;
        }
        TextView textView5 = this.videoPlaybackTimeText;
        if (textView5 != null) {
            textView5.setText(MediaTimeLineComponentKt.convertMillisToTime(0));
        }
        TextView textView6 = this.videoDurationText;
        if (textView6 != null) {
            textView6.setText(MediaTimeLineComponentKt.convertMillisToTime(i2));
        }
        MediaTimeLineComponent mediaTimeLineComponent3 = this.mainTimeLineComponent;
        if ((mediaTimeLineComponent3 != null ? mediaTimeLineComponent3.getHeight() : 0) > 0) {
            innerInitMainTimeLine(i2, z);
            if (i >= 0) {
                IPreviewPlayer.DefaultImpls.setActiveVideoClip$default(getPreviewPlayer(), i, 0, 2, null);
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

    protected void innerInitMainTimeLine(int i, boolean z) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mainTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
            IPreviewPlayer previewPlayer = getPreviewPlayer();
            FrameRetrieverManager frameRetrieverManager = this.frameRetrieverManager;
            if (frameRetrieverManager != null) {
                mediaTimeLineComponent.initTimeLine(100, 202, false, videoClipInfoList, previewPlayer, (40704 & 32) != 0 ? null : frameRetrieverManager, i, (40704 & 128) != 0 ? 3000 : 3000, (40704 & 256) != 0 ? -1.0f : 1000.0f, (40704 & 512) != 0 ? false : true, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : true, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : 0, (40704 & 16384) != 0 ? null : this, (40704 & 32768) != 0 ? false : z);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("frameRetrieverManager");
                throw null;
            }
        }
    }

    protected final boolean isAllVideoClipMute() {
        Object next;
        Iterator<T> it = getPreviewPlayer().getVideoClipInfoList().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((AVClipInfoPack) next).trackVolume > 0.0f) {
                break;
            }
        }
        return next == null;
    }
}
