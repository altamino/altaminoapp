package com.narvii.video.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IEditorAudioPlayer;
import com.narvii.video.interfaces.IExtraAudioTrackPlugin;
import com.narvii.video.interfaces.IPreviewPlayer;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaTimeLineComponent;
import com.narvii.video.widget.VolumeProgressView;
import java.util.HashMap;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioEditorPanel.kt */
/* loaded from: classes3.dex */
public final class AudioEditorPanel extends RelativeLayout implements MediaTimeLineComponent.TimeLineCallback, MediaOptionPanel.OptionSelectedListener {
    private HashMap _$_findViewCache;
    private AVClipInfoPack audioClip;
    private IEditorAudioPlayer audioPlayer;
    private FrameRetrieverManager frameRetrieverManager;
    private boolean initialized;
    private final Handler mainHandler;
    private MediaOptionPanel.OptionSelectedListener optionSelectedListener;
    private AVClipInfoPack originalInputAudioClip;
    private Runnable playbackTimer;
    private IPreviewPlayer previewPlayer;
    private int visibleVideoTrackLengthInMs;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

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

    public static final /* synthetic */ FrameRetrieverManager access$getFrameRetrieverManager$p(AudioEditorPanel audioEditorPanel) {
        FrameRetrieverManager frameRetrieverManager = audioEditorPanel.frameRetrieverManager;
        if (frameRetrieverManager != null) {
            return frameRetrieverManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("frameRetrieverManager");
        throw null;
    }

    public static final /* synthetic */ Runnable access$getPlaybackTimer$p(AudioEditorPanel audioEditorPanel) {
        Runnable runnable = audioEditorPanel.playbackTimer;
        if (runnable != null) {
            return runnable;
        }
        Intrinsics.throwUninitializedPropertyAccessException("playbackTimer");
        throw null;
    }

    public static final /* synthetic */ IPreviewPlayer access$getPreviewPlayer$p(AudioEditorPanel audioEditorPanel) {
        IPreviewPlayer iPreviewPlayer = audioEditorPanel.previewPlayer;
        if (iPreviewPlayer != null) {
            return iPreviewPlayer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("previewPlayer");
        throw null;
    }

    @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
    public void onAddMusicSelected() {
        MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j, long j2) {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onPlayerTick(this, j, j2);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineClicked(ITimelineClip clipInfo) {
        Intrinsics.checkParameterIsNotNull(clipInfo, "clipInfo");
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineClicked(this, clipInfo);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineLayout() {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineLayout(this);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onTimeLineScrolledOffsetChanged(int i) {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onTimeLineScrolledOffsetChanged(this, i);
    }

    @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
    public void onOptionDone(int i) {
        AVClipInfoPack aVClipInfoPack = this.originalInputAudioClip;
        if (aVClipInfoPack != null) {
            int[] curCutPosition = ((MediaTimeLineComponent) _$_findCachedViewById(R.id.audio_time_line_component)).getCurCutPosition();
            aVClipInfoPack.trimStartInMs = curCutPosition[0];
            aVClipInfoPack.trimEndInMs = curCutPosition[1];
            AVClipInfoPack aVClipInfoPack2 = this.audioClip;
            aVClipInfoPack.trackVolume = aVClipInfoPack2 != null ? aVClipInfoPack2.trackVolume : 1.0f;
        }
        MediaOptionPanel.OptionSelectedListener optionSelectedListener = this.optionSelectedListener;
        if (optionSelectedListener != null) {
            optionSelectedListener.onOptionDone(i);
        }
    }

    @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
    public void onOptionCancel(int i) {
        MediaOptionPanel.OptionSelectedListener optionSelectedListener = this.optionSelectedListener;
        if (optionSelectedListener != null) {
            optionSelectedListener.onOptionCancel(i);
        }
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
    public void onFrameLocatedDuringMove(int i, int i2) {
        IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.pause();
        }
        onPlaybackStatusChanged(false);
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i, int i2, int i3) {
        IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
        if (iEditorAudioPlayer != null) {
            iEditorAudioPlayer.seekTo(i);
        }
        IEditorAudioPlayer iEditorAudioPlayer2 = this.audioPlayer;
        if (iEditorAudioPlayer2 != null) {
            iEditorAudioPlayer2.start();
        }
        onPlaybackStatusChanged(true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEditorPanel(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.visibleVideoTrackLengthInMs = 15000;
        this.mainHandler = new Handler(Looper.getMainLooper());
        LayoutInflater.from(getContext()).inflate(R.layout.component_audio_editor_panel, (ViewGroup) this, true);
        this.playbackTimer = new Runnable() { // from class: com.narvii.video.widget.AudioEditorPanel.1
            @Override // java.lang.Runnable
            public final void run() {
                IEditorAudioPlayer iEditorAudioPlayer = AudioEditorPanel.this.audioPlayer;
                if (iEditorAudioPlayer != null) {
                    ((MediaTimeLineComponent) AudioEditorPanel.this._$_findCachedViewById(R.id.audio_time_line_component)).updatePlaybackTime(iEditorAudioPlayer.getCurrentPositionInTimeLine());
                }
                AudioEditorPanel.this.mainHandler.postDelayed(AudioEditorPanel.access$getPlaybackTimer$p(AudioEditorPanel.this), 40L);
            }
        };
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioEditorPanel(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.visibleVideoTrackLengthInMs = 15000;
        this.mainHandler = new Handler(Looper.getMainLooper());
        LayoutInflater.from(getContext()).inflate(R.layout.component_audio_editor_panel, (ViewGroup) this, true);
        this.playbackTimer = new Runnable() { // from class: com.narvii.video.widget.AudioEditorPanel.1
            @Override // java.lang.Runnable
            public final void run() {
                IEditorAudioPlayer iEditorAudioPlayer = AudioEditorPanel.this.audioPlayer;
                if (iEditorAudioPlayer != null) {
                    ((MediaTimeLineComponent) AudioEditorPanel.this._$_findCachedViewById(R.id.audio_time_line_component)).updatePlaybackTime(iEditorAudioPlayer.getCurrentPositionInTimeLine());
                }
                AudioEditorPanel.this.mainHandler.postDelayed(AudioEditorPanel.access$getPlaybackTimer$p(AudioEditorPanel.this), 40L);
            }
        };
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) throws Resources.NotFoundException {
        AVClipInfoPack aVClipInfoPack;
        super.onSizeChanged(i, i2, i3, i4);
        if (this.initialized || (aVClipInfoPack = this.audioClip) == null || i <= 0) {
            return;
        }
        if (aVClipInfoPack != null) {
            initComponent(aVClipInfoPack);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.initialized && Intrinsics.areEqual(view, this) && i == 8) {
            IEditorAudioPlayer iEditorAudioPlayer = this.audioPlayer;
            if (iEditorAudioPlayer != null) {
                iEditorAudioPlayer.stop();
            }
            onPlaybackStatusChanged(false);
        }
    }

    public final void bind(AVClipInfoPack audioClip, int i, IPreviewPlayer previewPlayer, FrameRetrieverManager frameRetrieverManager, MediaOptionPanel.OptionSelectedListener listener) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(audioClip, "audioClip");
        Intrinsics.checkParameterIsNotNull(previewPlayer, "previewPlayer");
        Intrinsics.checkParameterIsNotNull(frameRetrieverManager, "frameRetrieverManager");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        this.initialized = false;
        this.originalInputAudioClip = audioClip;
        this.audioClip = audioClip.copy();
        AVClipInfoPack aVClipInfoPack = this.audioClip;
        if (aVClipInfoPack != null) {
            aVClipInfoPack.visibleDurationInMs = audioClip.orgDurationInMs;
        }
        this.optionSelectedListener = listener;
        this.visibleVideoTrackLengthInMs = i;
        this.frameRetrieverManager = frameRetrieverManager;
        this.previewPlayer = previewPlayer;
        if (((MediaOptionPanel) _$_findCachedViewById(R.id.options_panel)) == null || ((MediaTimeLineComponent) _$_findCachedViewById(R.id.audio_time_line_component)) == null || getWidth() <= 0) {
            return;
        }
        AVClipInfoPack aVClipInfoPack2 = this.audioClip;
        if (aVClipInfoPack2 != null) {
            initComponent(aVClipInfoPack2);
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    private final void initComponent(final AVClipInfoPack aVClipInfoPack) throws Resources.NotFoundException {
        VolumeProgressView.init$default((VolumeProgressView) _$_findCachedViewById(R.id.volume_controller_panel), (int) (aVClipInfoPack.trackVolume * 100), new VolumeProgressView.OnVolumeChangedListener() { // from class: com.narvii.video.widget.AudioEditorPanel.initComponent.1
            @Override // com.narvii.video.widget.VolumeProgressView.OnVolumeChangedListener
            public void onVolumeChanged(int i) {
                aVClipInfoPack.trackVolume = i / 100.0f;
                IEditorAudioPlayer iEditorAudioPlayer = AudioEditorPanel.this.audioPlayer;
                if (iEditorAudioPlayer != null) {
                    iEditorAudioPlayer.setVolume(aVClipInfoPack.trackVolume);
                }
            }
        }, false, 4, null);
        final int iMin = Math.min(15000, Math.min(this.visibleVideoTrackLengthInMs, aVClipInfoPack.orgDurationInMs));
        MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) _$_findCachedViewById(R.id.options_panel);
        String trackContent = aVClipInfoPack.getTrackContent();
        Intrinsics.checkExpressionValueIsNotNull(trackContent, "audioClip.trackContent");
        mediaOptionPanel.initComponent(2, trackContent, this);
        final int iMin2 = Math.min(aVClipInfoPack.trimmedDurationInMs(), iMin);
        Utils.post(new Runnable() { // from class: com.narvii.video.widget.AudioEditorPanel.initComponent.2
            @Override // java.lang.Runnable
            public final void run() {
                AVClipInfoPack aVClipInfoPackCopy = aVClipInfoPack.copy();
                Intrinsics.checkExpressionValueIsNotNull(aVClipInfoPackCopy, "audioClip.copy()");
                aVClipInfoPackCopy.setClipLengthComposition(CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(aVClipInfoPackCopy.orgDurationInMs)));
                ((MediaTimeLineComponent) AudioEditorPanel.this._$_findCachedViewById(R.id.audio_time_line_component)).initTimeLine(101, 201, true, CollectionsKt__CollectionsJVMKt.listOf(aVClipInfoPackCopy), null, (40704 & 32) != 0 ? null : AudioEditorPanel.access$getFrameRetrieverManager$p(AudioEditorPanel.this), iMin, (40704 & 128) != 0 ? 3000 : 1000, (40704 & 256) != 0 ? -1.0f : 0.0f, (40704 & 512) != 0 ? false : false, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : false, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : iMin2, (40704 & 16384) != 0 ? null : AudioEditorPanel.this, (40704 & 32768) != 0 ? false : false);
                AudioEditorPanel audioEditorPanel = AudioEditorPanel.this;
                audioEditorPanel.audioPlayer = IExtraAudioTrackPlugin.DefaultImpls.openSingleAudio$default(AudioEditorPanel.access$getPreviewPlayer$p(audioEditorPanel), aVClipInfoPack, false, 2, null);
                IEditorAudioPlayer iEditorAudioPlayer = AudioEditorPanel.this.audioPlayer;
                if (iEditorAudioPlayer != null) {
                    iEditorAudioPlayer.addAudioEventListener(new IEditorAudioPlayer.IAudioEventListener() { // from class: com.narvii.video.widget.AudioEditorPanel.initComponent.2.1
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
                            AudioEditorPanel.this.onPlaybackStatusChanged(true);
                        }
                    });
                }
                AVClipInfoPack aVClipInfoPack2 = aVClipInfoPack;
                aVClipInfoPack2.indexInScene = 0;
                if (aVClipInfoPack2.trimStartInMs > 0) {
                    MediaTimeLineComponent.scrollTimeLine$default((MediaTimeLineComponent) AudioEditorPanel.this._$_findCachedViewById(R.id.audio_time_line_component), aVClipInfoPack.trimStartInMs, false, false, true, false, 0, false, 118, null);
                    IEditorAudioPlayer iEditorAudioPlayer2 = AudioEditorPanel.this.audioPlayer;
                    if (iEditorAudioPlayer2 != null) {
                        iEditorAudioPlayer2.seekTo(aVClipInfoPack.trimStartInMs);
                    }
                }
            }
        });
        this.initialized = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPlaybackStatusChanged(boolean z) {
        Handler handler = this.mainHandler;
        Runnable runnable = this.playbackTimer;
        if (runnable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playbackTimer");
            throw null;
        }
        handler.removeCallbacks(runnable);
        if (z) {
            Handler handler2 = this.mainHandler;
            Runnable runnable2 = this.playbackTimer;
            if (runnable2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playbackTimer");
                throw null;
            }
            handler2.post(runnable2);
        }
        ((MediaTimeLineComponent) _$_findCachedViewById(R.id.audio_time_line_component)).playbackStatusChanged(z);
    }
}
