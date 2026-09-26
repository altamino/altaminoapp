package com.narvii.video.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.narvii.mediaeditor.databinding.ComponentAudioEditorPanelBinding;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.interfaces.IExtraAudioTrackPlugin;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class AudioEditorPanel extends RelativeLayout implements MediaTimeLineComponent.TimeLineCallback, MediaOptionPanel.OptionSelectedListener {

    @Nullable
    private AVClipInfoPack audioClip;

    @Nullable
    private IEditorAudioPlayer audioPlayer;

    @NotNull
    private final ComponentAudioEditorPanelBinding binding;
    private FrameRetrieverManager frameRetrieverManager;
    private boolean initialized;

    @NotNull
    private final Handler mainHandler;

    @Nullable
    private MediaOptionPanel.OptionSelectedListener optionSelectedListener;

    @Nullable
    private AVClipInfoPack originalInputAudioClip;
    private Runnable playbackTimer;
    private IPreviewPlayer previewPlayer;
    private int visibleVideoTrackLengthInMs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEditorPanel(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.visibleVideoTrackLengthInMs = 15000;
        this.mainHandler = new Handler(Looper.getMainLooper());
        ComponentAudioEditorPanelBinding componentAudioEditorPanelBindingInflate = ComponentAudioEditorPanelBinding.inflate(LayoutInflater.from(getContext()), this);
        t.i(componentAudioEditorPanelBindingInflate, "inflate(...)");
        this.binding = componentAudioEditorPanelBindingInflate;
        this.playbackTimer = new Runnable() { // from class: com.narvii.video.widget.b
            @Override // java.lang.Runnable
            public final void run() {
                AudioEditorPanel._init_$lambda$2(this.f2970a);
            }
        };
    }

    private final void initComponent(final AVClipInfoPack aVClipInfoPack) {
        final ComponentAudioEditorPanelBinding componentAudioEditorPanelBinding = this.binding;
        int i10 = (int) (aVClipInfoPack.trackVolume * 100);
        VolumeProgressView volumeControllerPanel = componentAudioEditorPanelBinding.volumeControllerPanel;
        t.i(volumeControllerPanel, "volumeControllerPanel");
        VolumeProgressView.init$default(volumeControllerPanel, i10, new VolumeProgressView.OnVolumeChangedListener() { // from class: com.narvii.video.widget.AudioEditorPanel$initComponent$1$1
            @Override // com.narvii.video.widget.VolumeProgressView.OnVolumeChangedListener
            public void onVolumeChanged(int i11) {
                aVClipInfoPack.trackVolume = i11 / 100.0f;
                IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
                if (iEditorAudioPlayer != null) {
                    iEditorAudioPlayer.setVolume(aVClipInfoPack.trackVolume);
                }
            }
        }, false, 4, null);
        final int iMin = Math.min(15000, Math.min(this.visibleVideoTrackLengthInMs, aVClipInfoPack.orgDurationInMs));
        MediaOptionPanel mediaOptionPanel = componentAudioEditorPanelBinding.optionsPanel;
        String trackContent = aVClipInfoPack.getTrackContent();
        t.i(trackContent, "getTrackContent(...)");
        mediaOptionPanel.initComponent(2, trackContent, this);
        final int iMin2 = Math.min(aVClipInfoPack.trimmedDurationInMs(), iMin);
        Utils.post(new Runnable() { // from class: com.narvii.video.widget.a
            @Override // java.lang.Runnable
            public final void run() {
                AudioEditorPanel.initComponent$lambda$4$lambda$3(aVClipInfoPack, componentAudioEditorPanelBinding, this, iMin, iMin2);
            }
        });
        this.initialized = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initComponent$lambda$4$lambda$3(AVClipInfoPack audioClip, ComponentAudioEditorPanelBinding this_with, final AudioEditorPanel this$0, int i10, int i11) {
        FrameRetrieverManager frameRetrieverManager;
        t.j(audioClip, "$audioClip");
        t.j(this_with, "$this_with");
        t.j(this$0, "this$0");
        AVClipInfoPack aVClipInfoPackCopy = audioClip.copy();
        t.i(aVClipInfoPackCopy, "copy(...)");
        aVClipInfoPackCopy.setClipLengthComposition(u.e(Integer.valueOf(aVClipInfoPackCopy.orgDurationInMs)));
        MediaTimeLineComponent audioTimeLineComponent = this_with.audioTimeLineComponent;
        t.i(audioTimeLineComponent, "audioTimeLineComponent");
        List listE = u.e(aVClipInfoPackCopy);
        FrameRetrieverManager frameRetrieverManager2 = this$0.frameRetrieverManager;
        if (frameRetrieverManager2 == null) {
            t.B("frameRetrieverManager");
            frameRetrieverManager = null;
        } else {
            frameRetrieverManager = frameRetrieverManager2;
        }
        audioTimeLineComponent.initTimeLine(101, 201, true, listE, null, (40704 & 32) != 0 ? null : frameRetrieverManager, i10, (40704 & 128) != 0 ? 3000 : 1000, (40704 & 256) != 0 ? -1.0f : 0.0f, (40704 & 512) != 0 ? false : false, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : false, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : i11, (40704 & 16384) != 0 ? null : this$0, (40704 & 32768) != 0 ? false : false);
        IPreviewPlayer iPreviewPlayer = this$0.previewPlayer;
        if (iPreviewPlayer == null) {
            t.B("previewPlayer");
            iPreviewPlayer = null;
        }
        IEditorAudioPlayer iEditorAudioPlayerOpenSingleAudio$default = IExtraAudioTrackPlugin.DefaultImpls.openSingleAudio$default(iPreviewPlayer, audioClip, false, 2, null);
        this$0.audioPlayer = iEditorAudioPlayerOpenSingleAudio$default;
        if (iEditorAudioPlayerOpenSingleAudio$default != null) {
            iEditorAudioPlayerOpenSingleAudio$default.addAudioEventListener(new IEditorAudioPlayer.IAudioEventListener() { // from class: com.narvii.video.widget.AudioEditorPanel$initComponent$1$2$1
                @Override // com.narvii.video.interfaces.IEditorAudioPlayer.IAudioEventListener
                public void onAudioCompleted() {
                    IEditorAudioPlayer.IAudioEventListener.DefaultImpls.onAudioCompleted(this);
                }

                @Override // com.narvii.video.interfaces.IEditorAudioPlayer.IAudioEventListener
                public void onAudioError() {
                    IEditorAudioPlayer.IAudioEventListener.DefaultImpls.onAudioError(this);
                }

                @Override // com.narvii.video.interfaces.IEditorAudioPlayer.IAudioEventListener
                public void onAudioPrepared() {
                    IEditorAudioPlayer.IAudioEventListener.DefaultImpls.onAudioPrepared(this);
                    this.this$0.onPlaybackStatusChanged(true);
                }
            });
        }
        audioClip.indexInScene = 0;
        if (audioClip.trimStartInMs > 0) {
            MediaTimeLineComponent audioTimeLineComponent2 = this_with.audioTimeLineComponent;
            t.i(audioTimeLineComponent2, "audioTimeLineComponent");
            MediaTimeLineComponent.scrollTimeLine$default(audioTimeLineComponent2, audioClip.trimStartInMs, false, false, true, false, 0, false, 118, null);
            IEditorAudioPlayer iEditorAudioPlayer = this$0.audioPlayer;
            if (iEditorAudioPlayer != null) {
                iEditorAudioPlayer.seekTo(audioClip.trimStartInMs);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPlaybackStatusChanged(boolean z6) {
        Handler handler = this.mainHandler;
        Runnable runnable = this.playbackTimer;
        Runnable runnable2 = null;
        if (runnable == null) {
            t.B("playbackTimer");
            runnable = null;
        }
        handler.removeCallbacks(runnable);
        if (z6) {
            Handler handler2 = this.mainHandler;
            Runnable runnable3 = this.playbackTimer;
            if (runnable3 == null) {
                t.B("playbackTimer");
            } else {
                runnable2 = runnable3;
            }
            handler2.post(runnable2);
        }
        this.binding.audioTimeLineComponent.playbackStatusChanged(z6);
    }

    public final void bind(@NotNull AVClipInfoPack audioClip, int i10, @NotNull IPreviewPlayer previewPlayer, @NotNull FrameRetrieverManager frameRetrieverManager, @NotNull MediaOptionPanel.OptionSelectedListener listener) {
        t.j(audioClip, "audioClip");
        t.j(previewPlayer, "previewPlayer");
        t.j(frameRetrieverManager, "frameRetrieverManager");
        t.j(listener, "listener");
        this.initialized = false;
        this.originalInputAudioClip = audioClip;
        AVClipInfoPack aVClipInfoPackCopy = audioClip.copy();
        this.audioClip = aVClipInfoPackCopy;
        if (aVClipInfoPackCopy != null) {
            aVClipInfoPackCopy.visibleDurationInMs = audioClip.orgDurationInMs;
        }
        this.optionSelectedListener = listener;
        this.visibleVideoTrackLengthInMs = i10;
        this.frameRetrieverManager = frameRetrieverManager;
        this.previewPlayer = previewPlayer;
        ComponentAudioEditorPanelBinding componentAudioEditorPanelBinding = this.binding;
        if (componentAudioEditorPanelBinding.optionsPanel == null || componentAudioEditorPanelBinding.audioTimeLineComponent == null || getWidth() <= 0) {
            return;
        }
        AVClipInfoPack aVClipInfoPack = this.audioClip;
        t.g(aVClipInfoPack);
        initComponent(aVClipInfoPack);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i10, int i11) {
        IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.pause();
        }
        onPlaybackStatusChanged(false);
    }

    @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
    public void onOptionCancel(int i10) {
        MediaOptionPanel.OptionSelectedListener optionSelectedListener = this.optionSelectedListener;
        if (optionSelectedListener != null) {
            optionSelectedListener.onOptionCancel(i10);
        }
    }

    @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
    public void onOptionDone(int i10) {
        AVClipInfoPack aVClipInfoPack = this.originalInputAudioClip;
        if (aVClipInfoPack != null) {
            int[] curCutPosition = this.binding.audioTimeLineComponent.getCurCutPosition();
            aVClipInfoPack.trimStartInMs = curCutPosition[0];
            aVClipInfoPack.trimEndInMs = curCutPosition[1];
            AVClipInfoPack aVClipInfoPack2 = this.audioClip;
            aVClipInfoPack.trackVolume = aVClipInfoPack2 != null ? aVClipInfoPack2.trackVolume : 1.0f;
        }
        MediaOptionPanel.OptionSelectedListener optionSelectedListener = this.optionSelectedListener;
        if (optionSelectedListener != null) {
            optionSelectedListener.onOptionDone(i10);
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i10, int i11, int i12) {
        IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.seekTo(i10);
        }
        IEditorAudioPlayer iEditorAudioPlayer2 = this.audioPlayer;
        if (iEditorAudioPlayer2 != null) {
            iEditorAudioPlayer2.start();
        }
        onPlaybackStatusChanged(true);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NotNull View changedView, int i10) {
        t.j(changedView, "changedView");
        super.onVisibilityChanged(changedView, i10);
        if (this.initialized && t.e(changedView, this) && i10 == 8) {
            IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
            if (iEditorAudioPlayer != null) {
                iEditorAudioPlayer.stop();
            }
            onPlaybackStatusChanged(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$2(AudioEditorPanel this$0) {
        t.j(this$0, "this$0");
        IEditorAudioPlayer iEditorAudioPlayer = this$0.audioPlayer;
        if (iEditorAudioPlayer != null) {
            this$0.binding.audioTimeLineComponent.updatePlaybackTime(iEditorAudioPlayer.getCurrentPositionInTimeLine());
        }
        Handler handler = this$0.mainHandler;
        Runnable runnable = this$0.playbackTimer;
        if (runnable == null) {
            t.B("playbackTimer");
            runnable = null;
        }
        handler.postDelayed(runnable, 40L);
    }

    @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
    public void onAddMusicSelected() {
        MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onControllerActive() {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onControllerActive(this);
        IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.pause();
        }
        onPlaybackStatusChanged(false);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j6, long j10) {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onPlayerTick(this, j6, j10);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        AVClipInfoPack aVClipInfoPack;
        super.onSizeChanged(i10, i11, i12, i13);
        if (!this.initialized && (aVClipInfoPack = this.audioClip) != null && i10 > 0) {
            t.g(aVClipInfoPack);
            initComponent(aVClipInfoPack);
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineClicked(@NotNull ITimelineClip iTimelineClip) {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineClicked(this, iTimelineClip);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineLayout(this);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineScrolledOffsetChanged(int i10) {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineScrolledOffsetChanged(this, i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEditorPanel(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.visibleVideoTrackLengthInMs = 15000;
        this.mainHandler = new Handler(Looper.getMainLooper());
        ComponentAudioEditorPanelBinding componentAudioEditorPanelBindingInflate = ComponentAudioEditorPanelBinding.inflate(LayoutInflater.from(getContext()), this);
        t.i(componentAudioEditorPanelBindingInflate, "inflate(...)");
        this.binding = componentAudioEditorPanelBindingInflate;
        this.playbackTimer = new Runnable() { // from class: com.narvii.video.widget.b
            @Override // java.lang.Runnable
            public final void run() {
                AudioEditorPanel._init_$lambda$2(this.f2970a);
            }
        };
    }
}
