package com.narvii.video;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: MediaSplitFragment.kt */
/* loaded from: classes3.dex */
public final class MediaSplitFragment extends ScrollingTimeLineFragment {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MediaSplitFragment.class), "splitOpStack", "getSplitOpStack()Ljava/util/Stack;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MediaSplitFragment.class), "splitTimeStack", "getSplitTimeStack()Ljava/util/Stack;"))};
    private HashMap _$_findViewCache;
    private int orgClipCount;
    private String outputFolderPath;
    private boolean pendingSplit;
    private boolean pendingUndoSplit;
    private final Lazy splitOpStack$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Stack<AVClipInfoPack>>() { // from class: com.narvii.video.MediaSplitFragment$splitOpStack$2
        @Override // kotlin.jvm.functions.Function0
        public final Stack<AVClipInfoPack> invoke() {
            return new Stack<>();
        }
    });
    private final Lazy splitTimeStack$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Stack<Integer>>() { // from class: com.narvii.video.MediaSplitFragment$splitTimeStack$2
        @Override // kotlin.jvm.functions.Function0
        public final Stack<Integer> invoke() {
            return new Stack<>();
        }
    });
    private boolean splitEnabled = true;

    private final Stack<AVClipInfoPack> getSplitOpStack() {
        Lazy lazy = this.splitOpStack$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Stack) lazy.getValue();
    }

    private final Stack<Integer> getSplitTimeStack() {
        Lazy lazy = this.splitTimeStack$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (Stack) lazy.getValue();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.theme.NVThemeFragment
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

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() throws Resources.NotFoundException {
        this.outputFolderPath = getStringParam("frameRetrieverOutputFolder");
        if (this.outputFolderPath != null) {
            FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
            String str = this.outputFolderPath;
            if (str != null) {
                FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, false, false, 6, null);
                return;
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
        FrameRetrieverManager.initRetriever$default(getFrameRetrieverManager(), "timeline_tmp", "video", false, false, 12, null);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setVideoPlaybackTimeText((TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_playback_time));
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_view_player));
        setPlayerButton((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.player_button));
        setPauseShadow(_$_findCachedViewById(com.narvii.mediaeditor.R.id.pause_shadow));
        setMainTimeLineComponent((MediaTimeLineComponent) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_time_line_component));
        MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.options_panel);
        String string = getString(com.narvii.mediaeditor.R.string.split);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.split)");
        mediaOptionPanel.initComponent(4, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.MediaSplitFragment.initComponent.1
            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onAddMusicSelected() {
                MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionCancel(int i) {
                MediaSplitFragment.this.setResult(0);
                MediaSplitFragment.this.finish();
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionDone(int i) {
                MediaSplitFragment.this.changeVideoPlaybackStatus(true, false);
                if (MediaSplitFragment.this.getPreviewPlayer().getVideoClipInfoList().size() == MediaSplitFragment.this.orgClipCount) {
                    MediaSplitFragment.this.setResult(0);
                    MediaSplitFragment.this.finish();
                    return;
                }
                String strWriteAsString = JacksonUtils.writeAsString(MediaSplitFragment.this.getPreviewPlayer().getVideoClipInfoList());
                if (strWriteAsString == null) {
                    MediaSplitFragment.this.setResult(0);
                } else {
                    Intent intent = new Intent();
                    intent.putExtra("videoClipList", strWriteAsString);
                    AVClipInfoPack activeVideoClip = MediaSplitFragment.this.getActiveVideoClip();
                    intent.putExtra("activeClipIndex", activeVideoClip != null ? activeVideoClip.indexInScene : 0);
                    intent.putExtra("inClipPlaybackTime", MediaSplitFragment.this.getPreviewPlayer().getCurrentVideoPositionInClip());
                    MediaSplitFragment.this.setResult(-1, intent);
                }
                MediaSplitFragment.this.finish();
            }
        });
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return Utils.isAndroidVersion8() ? com.narvii.mediaeditor.R.style.AminoTheme_Overlay : com.narvii.mediaeditor.R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(com.narvii.mediaeditor.R.layout.fragment_media_split, viewGroup, false);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.do_split)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.MediaSplitFragment.onActivityCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaSplitFragment.this.isSeeking()) {
                    MediaSplitFragment.this.pendingSplit = true;
                } else {
                    MediaSplitFragment.this.doSplit();
                }
            }
        });
        ((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.undo_split)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.MediaSplitFragment.onActivityCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MediaSplitFragment.this.isSeeking()) {
                    MediaSplitFragment.this.pendingUndoSplit = true;
                } else {
                    MediaSplitFragment.this.undoSplit();
                }
            }
        });
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        this.orgClipCount = getPreviewPlayer().getVideoClipInfoList().size();
        int intParam = getIntParam("activeClipIndex");
        int intParam2 = getIntParam("inClipPlaybackTime", 0);
        if (intParam > 0 || intParam2 > 0) {
            moveMainTrackTo(intParam, intParam2);
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z) {
        super.onSeekingStatusChanged(z);
        if (z) {
            return;
        }
        if (this.pendingSplit) {
            doSplit();
            this.pendingSplit = false;
        }
        if (this.pendingUndoSplit) {
            undoSplit();
            this.pendingUndoSplit = false;
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        MediaTimeLineComponent mainTimeLineComponent;
        super.onResume();
        if (getInitSuccess() && (mainTimeLineComponent = getMainTimeLineComponent()) != null) {
            mainTimeLineComponent.refreshTimeLine();
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (getInitSuccess()) {
            getFrameRetrieverManager().abortFlyingFrameRetrievers();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (!getInitSuccess()) {
            _$_clearFindViewByIdCache();
        } else {
            getFrameRetrieverManager().doClean(this.outputFolderPath == null);
            _$_clearFindViewByIdCache();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        super.onTimeLineLayout();
        int intParam = getIntParam("activeClipIndex");
        int intParam2 = getIntParam("inClipPlaybackTime", 0);
        if (intParam > 0 || intParam2 > 0) {
            moveMainTrackTo(intParam, intParam2);
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i, int i2) {
        super.onFrameLocatedDuringMove(i, i2);
        checkSplitAvailability(i);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j, long j2) {
        super.onPlayerTick(j, j2);
        checkSplitAvailability(j);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onActiveVideoChanged(int i, boolean z) {
        super.onActiveVideoChanged(i, z);
        checkSplitAvailability(getPreviewPlayer().getCurrentVideoPositionInTimeline());
    }

    private final void checkSplitAvailability(long j) {
        if (getPreviewPlayer().getVideoClipInfoList().size() >= 30) {
            ImageView do_split = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.do_split);
            Intrinsics.checkExpressionValueIsNotNull(do_split, "do_split");
            if (do_split.getAlpha() == 1.0f) {
                ImageView do_split2 = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.do_split);
                Intrinsics.checkExpressionValueIsNotNull(do_split2, "do_split");
                do_split2.setAlpha(0.4f);
            }
            this.splitEnabled = false;
            return;
        }
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            int i = activeVideoClip.indexInScene;
            int iClipLength = 0;
            for (int i2 = 0; i2 < i; i2++) {
                iClipLength += getPreviewPlayer().getVideoClipInfoList().get(i2).clipLength();
            }
            long j2 = 100;
            long j3 = ((j - iClipLength) / j2) * j2;
            if (j3 < 1000 || j3 > activeVideoClip.trimmedDurationInMsWithSpeed() - 1000) {
                ImageView do_split3 = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.do_split);
                Intrinsics.checkExpressionValueIsNotNull(do_split3, "do_split");
                if (do_split3.getAlpha() == 1.0f) {
                    ImageView do_split4 = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.do_split);
                    Intrinsics.checkExpressionValueIsNotNull(do_split4, "do_split");
                    do_split4.setAlpha(0.4f);
                }
                this.splitEnabled = false;
                return;
            }
            ImageView do_split5 = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.do_split);
            Intrinsics.checkExpressionValueIsNotNull(do_split5, "do_split");
            if (do_split5.getAlpha() != 1.0f) {
                ImageView do_split6 = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.do_split);
                Intrinsics.checkExpressionValueIsNotNull(do_split6, "do_split");
                do_split6.setAlpha(1.0f);
            }
            this.splitEnabled = true;
        }
    }

    private final void checkUndoStatus() {
        ImageView undo_split = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.undo_split);
        Intrinsics.checkExpressionValueIsNotNull(undo_split, "undo_split");
        undo_split.setVisibility(getSplitOpStack().isEmpty() ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void doSplit() {
        if (getPreviewPlayer().getVideoClipInfoList().size() >= 30) {
            NVToast.makeText(getContext(), getString(com.narvii.mediaeditor.R.string.reach_max_clips), 0).show();
            return;
        }
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (!this.splitEnabled || activeVideoClip == null) {
            return;
        }
        changeVideoPlaybackStatus(true, true);
        setAutoPlaying(false);
        TextView videoPlaybackTimeText = getVideoPlaybackTimeText();
        CharSequence text = videoPlaybackTimeText != null ? videoPlaybackTimeText.getText() : null;
        getSplitOpStack().push(activeVideoClip.copy());
        getSplitTimeStack().push(Integer.valueOf(getPreviewPlayer().getCurrentVideoPositionInTimeline()));
        ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
        int i = activeVideoClip.indexInScene;
        double currentVideoPositionInClip = getPreviewPlayer().getCurrentVideoPositionInClip();
        double d = activeVideoClip.speed;
        Double.isNaN(currentVideoPositionInClip);
        double d2 = currentVideoPositionInClip * d;
        double d3 = 100;
        Double.isNaN(d3);
        int i2 = ((int) (d2 / d3)) * 100;
        int iTrimmedDurationInMs = activeVideoClip.trimmedDurationInMs() - i2;
        AVClipInfoPack aVClipInfoPackCopy = activeVideoClip.copy();
        Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPackCopy, "currentClip.copy()");
        int i3 = activeVideoClip.trimStartInMs + i2;
        activeVideoClip.trimEndInMs = i3;
        activeVideoClip.visibleDurationInMs = activeVideoClip.trimmedDurationInMs();
        aVClipInfoPackCopy.clipId = UUID.randomUUID().toString();
        aVClipInfoPackCopy.trimStartInMs = i3;
        aVClipInfoPackCopy.trimEndInMs = i3 + iTrimmedDurationInMs;
        aVClipInfoPackCopy.visibleDurationInMs = aVClipInfoPackCopy.trimmedDurationInMs();
        int i4 = i + 1;
        videoClipInfoList.add(i4, aVClipInfoPackCopy);
        IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, i4, 0, 4, null);
        updateVideoTimeLineInfo(true, i4);
        MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
        if (mainTimeLineComponent != null) {
            MediaTimeLineComponent.scrollTimeLineToClip$default(mainTimeLineComponent, i4, 0, false, 6, null);
        }
        TextView videoPlaybackTimeText2 = getVideoPlaybackTimeText();
        if (videoPlaybackTimeText2 != null) {
            videoPlaybackTimeText2.setText(text);
        }
        checkUndoStatus();
        checkSplitAvailability(getPreviewPlayer().getCurrentVideoPositionInTimeline());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void undoSplit() {
        if (getSplitOpStack().isEmpty() || getSplitTimeStack().isEmpty()) {
            ImageView undo_split = (ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.undo_split);
            Intrinsics.checkExpressionValueIsNotNull(undo_split, "undo_split");
            undo_split.setVisibility(8);
            return;
        }
        Integer splitTimelinePosition = getSplitTimeStack().pop();
        AVClipInfoPack aVClipInfoPackPop = getSplitOpStack().pop();
        ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
        int i = aVClipInfoPackPop.indexInScene;
        if (i < 0 || i >= videoClipInfoList.size() - 1) {
            checkUndoStatus();
            return;
        }
        changeVideoPlaybackStatus(true, true);
        setAutoPlaying(false);
        int i2 = aVClipInfoPackPop.indexInScene;
        videoClipInfoList.remove(i2 + 1);
        videoClipInfoList.set(i2, aVClipInfoPackPop);
        Integer inClipOffsetInMs = splitTimelinePosition;
        for (int i3 = 0; i3 < i2; i3++) {
            inClipOffsetInMs = Integer.valueOf(inClipOffsetInMs.intValue() - getPreviewPlayer().getVideoClipInfoList().get(i3).trimmedDurationInMsWithSpeed());
        }
        IPreviewPlayer previewPlayer = getPreviewPlayer();
        Intrinsics.checkExpressionValueIsNotNull(inClipOffsetInMs, "inClipOffsetInMs");
        previewPlayer.resetVideoClipList(videoClipInfoList, i2, inClipOffsetInMs.intValue());
        updateVideoTimeLineInfo(true, i2);
        Intrinsics.checkExpressionValueIsNotNull(splitTimelinePosition, "splitTimelinePosition");
        moveMainTrackTo(splitTimelinePosition.intValue());
        checkUndoStatus();
        checkSplitAvailability(splitTimelinePosition.intValue());
    }
}
