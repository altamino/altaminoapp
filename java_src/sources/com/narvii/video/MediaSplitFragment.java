package com.narvii.video;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.mediaeditor.databinding.FragmentMediaSplitBinding;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import java.util.ArrayList;
import java.util.Stack;
import java.util.UUID;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class MediaSplitFragment extends ScrollingTimeLineFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(MediaSplitFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSplitBinding;", 0))};
    private int orgClipCount;

    @Nullable
    private String outputFolderPath;
    private boolean pendingSplit;
    private boolean pendingUndoSplit;

    @NotNull
    private final w7.m splitOpStack$delegate = w7.o.a(MediaSplitFragment$splitOpStack$2.INSTANCE);

    @NotNull
    private final w7.m splitTimeStack$delegate = w7.o.a(MediaSplitFragment$splitTimeStack$2.INSTANCE);
    private boolean splitEnabled = true;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, MediaSplitFragment$binding$2.INSTANCE);

    private final FragmentMediaSplitBinding getBinding() {
        return (FragmentMediaSplitBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final Stack<AVClipInfoPack> getSplitOpStack() {
        return (Stack) this.splitOpStack$delegate.getValue();
    }

    private final Stack<Integer> getSplitTimeStack() {
        return (Stack) this.splitTimeStack$delegate.getValue();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment
    public void initFrameRetrieverManager() {
        String stringParam = getStringParam("frameRetrieverOutputFolder");
        this.outputFolderPath = stringParam;
        if (stringParam == null) {
            FrameRetrieverManager.initRetriever$default(getFrameRetrieverManager(), "timeline_tmp", "video", false, false, 12, null);
            return;
        }
        FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
        String str = this.outputFolderPath;
        kotlin.jvm.internal.t.g(str);
        FrameRetrieverManager.initRetriever$default(frameRetrieverManager, str, false, false, 6, null);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(com.narvii.mediaeditor.R.layout.fragment_media_split, viewGroup, false);
    }

    private final void checkSplitAvailability(long j6) {
        if (getPreviewPlayer().getVideoClipInfoList().size() >= 30) {
            if (getBinding().doSplit.getAlpha() == 1.0f) {
                getBinding().doSplit.setAlpha(0.4f);
            }
            this.splitEnabled = false;
            return;
        }
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (activeVideoClip != null) {
            int i10 = activeVideoClip.indexInScene;
            int iClipLength = 0;
            for (int i11 = 0; i11 < i10; i11++) {
                iClipLength += getPreviewPlayer().getVideoClipInfoList().get(i11).clipLength();
            }
            long j10 = 100;
            long j11 = ((j6 - ((long) iClipLength)) / j10) * j10;
            if (j11 >= 1000 && j11 <= activeVideoClip.trimmedDurationInMsWithSpeed() - 1000) {
                if (getBinding().doSplit.getAlpha() != 1.0f) {
                    getBinding().doSplit.setAlpha(1.0f);
                }
                this.splitEnabled = true;
            } else {
                if (getBinding().doSplit.getAlpha() == 1.0f) {
                    getBinding().doSplit.setAlpha(0.4f);
                }
                this.splitEnabled = false;
            }
        }
    }

    private final void checkUndoStatus() {
        int i10;
        ImageView imageView = getBinding().undoSplit;
        if (getSplitOpStack().isEmpty()) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        imageView.setVisibility(i10);
    }

    private final void doSplit() {
        CharSequence text;
        if (getPreviewPlayer().getVideoClipInfoList().size() >= 30) {
            NVToast.makeText(getContext(), getString(com.narvii.mediaeditor.R.string.reach_max_clips), 0).show();
            return;
        }
        AVClipInfoPack activeVideoClip = getActiveVideoClip();
        if (this.splitEnabled && activeVideoClip != null) {
            changeVideoPlaybackStatus(true, true);
            setAutoPlaying(false);
            TextView videoPlaybackTimeText = getVideoPlaybackTimeText();
            if (videoPlaybackTimeText != null) {
                text = videoPlaybackTimeText.getText();
            } else {
                text = null;
            }
            getSplitOpStack().push(activeVideoClip.copy());
            getSplitTimeStack().push(Integer.valueOf(getPreviewPlayer().getCurrentVideoPositionInTimeline()));
            ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
            int i10 = activeVideoClip.indexInScene;
            int currentVideoPositionInClip = ((int) ((((double) getPreviewPlayer().getCurrentVideoPositionInClip()) * activeVideoClip.speed) / ((double) 100))) * 100;
            int iTrimmedDurationInMs = activeVideoClip.trimmedDurationInMs() - currentVideoPositionInClip;
            AVClipInfoPack aVClipInfoPackCopy = activeVideoClip.copy();
            kotlin.jvm.internal.t.i(aVClipInfoPackCopy, "copy(...)");
            int i11 = activeVideoClip.trimStartInMs + currentVideoPositionInClip;
            activeVideoClip.trimEndInMs = i11;
            activeVideoClip.visibleDurationInMs = activeVideoClip.trimmedDurationInMs();
            aVClipInfoPackCopy.clipId = UUID.randomUUID().toString();
            aVClipInfoPackCopy.trimStartInMs = i11;
            aVClipInfoPackCopy.trimEndInMs = i11 + iTrimmedDurationInMs;
            aVClipInfoPackCopy.visibleDurationInMs = aVClipInfoPackCopy.trimmedDurationInMs();
            int i12 = i10 + 1;
            videoClipInfoList.add(i12, aVClipInfoPackCopy);
            IPreviewPlayer.DefaultImpls.resetVideoClipList$default(getPreviewPlayer(), videoClipInfoList, i12, 0, 4, null);
            updateVideoTimeLineInfo(true, i12);
            MediaTimeLineComponent mainTimeLineComponent = getMainTimeLineComponent();
            if (mainTimeLineComponent != null) {
                MediaTimeLineComponent.scrollTimeLineToClip$default(mainTimeLineComponent, i12, 0, false, 6, null);
            }
            TextView videoPlaybackTimeText2 = getVideoPlaybackTimeText();
            if (videoPlaybackTimeText2 != null) {
                videoPlaybackTimeText2.setText(text);
            }
            checkUndoStatus();
            checkSplitAvailability(getPreviewPlayer().getCurrentVideoPositionInTimeline());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$0(MediaSplitFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.isSeeking()) {
            this$0.pendingSplit = true;
        } else {
            this$0.doSplit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityCreated$lambda$1(MediaSplitFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.isSeeking()) {
            this$0.pendingUndoSplit = true;
        } else {
            this$0.undoSplit();
        }
    }

    private final void undoSplit() {
        if (!getSplitOpStack().isEmpty() && !getSplitTimeStack().isEmpty()) {
            Integer numPop = getSplitTimeStack().pop();
            AVClipInfoPack aVClipInfoPackPop = getSplitOpStack().pop();
            ArrayList<AVClipInfoPack> videoClipInfoList = getPreviewPlayer().getVideoClipInfoList();
            int i10 = aVClipInfoPackPop.indexInScene;
            if (i10 >= 0 && i10 < videoClipInfoList.size() - 1) {
                changeVideoPlaybackStatus(true, true);
                setAutoPlaying(false);
                int i11 = aVClipInfoPackPop.indexInScene;
                videoClipInfoList.remove(i11 + 1);
                videoClipInfoList.set(i11, aVClipInfoPackPop);
                Integer numValueOf = numPop;
                for (int i12 = 0; i12 < i11; i12++) {
                    numValueOf = Integer.valueOf(numValueOf.intValue() - getPreviewPlayer().getVideoClipInfoList().get(i12).trimmedDurationInMsWithSpeed());
                }
                IPreviewPlayer previewPlayer = getPreviewPlayer();
                kotlin.jvm.internal.t.g(numValueOf);
                previewPlayer.resetVideoClipList(videoClipInfoList, i11, numValueOf.intValue());
                updateVideoTimeLineInfo(true, i11);
                kotlin.jvm.internal.t.g(numPop);
                moveMainTrackTo(numPop.intValue());
                checkUndoStatus();
                checkSplitAvailability(numPop.intValue());
                return;
            }
            checkUndoStatus();
            return;
        }
        getBinding().undoSplit.setVisibility(8);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        if (Utils.isAndroidVersion8()) {
            return com.narvii.mediaeditor.R.style.AminoTheme_Overlay;
        }
        return com.narvii.mediaeditor.R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setVideoPlaybackTimeText(getBinding().videoPlaybackTime);
        setPreviewVideoView(getBinding().videoViewPlayer);
        setPlayerButton(getBinding().playerButton);
        setPauseShadow(getBinding().pauseShadow);
        setMainTimeLineComponent(getBinding().videoTimeLineComponent);
        MediaOptionPanel mediaOptionPanel = getBinding().optionsPanel;
        String string = getString(com.narvii.mediaeditor.R.string.split);
        kotlin.jvm.internal.t.i(string, "getString(...)");
        mediaOptionPanel.initComponent(4, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.MediaSplitFragment.initComponent.1
            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionCancel(int i10) {
                MediaSplitFragment.this.setResult(0);
                MediaSplitFragment.this.finish();
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionDone(int i10) {
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

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onAddMusicSelected() {
                MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
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
    protected void onActiveVideoChanged(int i10, boolean z6) {
        super.onActiveVideoChanged(i10, z6);
        checkSplitAvailability(getPreviewPlayer().getCurrentVideoPositionInTimeline());
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getBinding().doSplit.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaSplitFragment.onActivityCreated$lambda$0(this.f2877a, view);
            }
        });
        getBinding().undoSplit.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.video.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MediaSplitFragment.onActivityCreated$lambda$1(this.f2879a, view);
            }
        });
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        boolean z6;
        super.onDestroyView();
        if (!getInitSuccess()) {
            return;
        }
        FrameRetrieverManager frameRetrieverManager = getFrameRetrieverManager();
        if (this.outputFolderPath == null) {
            z6 = true;
        } else {
            z6 = false;
        }
        frameRetrieverManager.doClean(z6);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i10, int i11) {
        super.onFrameLocatedDuringMove(i10, i11);
        checkSplitAvailability(i10);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (!getInitSuccess()) {
            return;
        }
        getFrameRetrieverManager().abortFlyingFrameRetrievers();
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j6, long j10) {
        super.onPlayerTick(j6, j10);
        checkSplitAvailability(j6);
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        MediaTimeLineComponent mainTimeLineComponent;
        super.onResume();
        if (getInitSuccess() && (mainTimeLineComponent = getMainTimeLineComponent()) != null) {
            mainTimeLineComponent.refreshTimeLine();
        }
    }

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z6) {
        super.onSeekingStatusChanged(z6);
        if (z6) {
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

    @Override // com.narvii.video.ScrollingTimeLineFragment, com.narvii.video.BaseMediaEditorFragment, com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        super.onTimeLineLayout();
        int intParam = getIntParam("activeClipIndex");
        int intParam2 = getIntParam("inClipPlaybackTime", 0);
        if (intParam > 0 || intParam2 > 0) {
            moveMainTrackTo(intParam, intParam2);
        }
    }
}
