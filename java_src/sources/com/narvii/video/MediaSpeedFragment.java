package com.narvii.video;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import com.narvii.mediaeditor.databinding.FragmentMediaSpeedBinding;
import com.narvii.pip.PipInfoPack;
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IPlayingEventListener;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaSpeedSelectView;
import com.narvii.video.widget.MediaTimeLineComponentKt;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class MediaSpeedFragment extends BaseMediaEditorFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {kotlin.jvm.internal.q0.g(new kotlin.jvm.internal.g0(MediaSpeedFragment.class, "binding", "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;", 0))};
    private int activeIndex;

    @Nullable
    private AVClipInfoPack activeMedia;

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, MediaSpeedFragment$binding$2.INSTANCE);
    private boolean hasVideoCompleted;
    private boolean isSeekBarSeeking;
    private long minOutputLengthMs;
    private long videoDurationMs;

    /* JADX INFO: renamed from: com.narvii.video.MediaSpeedFragment$onViewCreated$2, reason: invalid class name */
    static final class AnonymousClass2 extends kotlin.jvm.internal.v implements e8.l<Double, w7.l0> {
        AnonymousClass2() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(Double d) {
            invoke(d.doubleValue());
            return w7.l0.INSTANCE;
        }

        public final void invoke(double d) {
            AVClipInfoPack aVClipInfoPack = MediaSpeedFragment.this.activeMedia;
            if (aVClipInfoPack != null) {
                MediaSpeedFragment mediaSpeedFragment = MediaSpeedFragment.this;
                aVClipInfoPack.speed = d;
                mediaSpeedFragment.getPreviewPlayer().updateClipSpeed(aVClipInfoPack);
                BaseMediaEditorFragment.changeVideoPlaybackStatus$default(mediaSpeedFragment, true, false, 2, null);
                mediaSpeedFragment.setAutoPlaying(false);
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.video.MediaSpeedFragment$onViewCreated$3, reason: invalid class name */
    public static final class AnonymousClass3 implements IPlayingEventListener {
        @Override // com.narvii.video.interfaces.IPlayingEventListener
        public void onPlayingStopped() {
        }

        AnonymousClass3() {
        }

        @Override // com.narvii.video.interfaces.IPlayingEventListener
        public void onPlayingEOF() {
            MediaSpeedFragment.this.hasVideoCompleted = true;
            MediaSpeedFragment.this.setAutoPlaying(false);
            final MediaSpeedFragment mediaSpeedFragment = MediaSpeedFragment.this;
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.f0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSpeedFragment.AnonymousClass3.onPlayingEOF$lambda$0(mediaSpeedFragment);
                }
            }, 50L);
        }

        @Override // com.narvii.video.interfaces.IPlayingEventListener
        public void onPlayingProgress(long j6, long j10) {
            MediaSpeedFragment.this.videoDurationMs = j10;
            if (MediaSpeedFragment.this.isSeekBarSeeking) {
                return;
            }
            MediaSpeedFragment.updateTime$default(MediaSpeedFragment.this, j6, j10, false, 4, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onPlayingEOF$lambda$0(MediaSpeedFragment this$0) {
            kotlin.jvm.internal.t.j(this$0, "this$0");
            BaseMediaEditorFragment.changeVideoPlaybackStatus$default(this$0, true, false, 2, null);
            this$0.changeSeekStatus(false);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void innerOnVideoPrepared() {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z6) {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z6) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentMediaSpeedBinding getBinding() {
        return (FragmentMediaSpeedBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    static /* synthetic */ void updateTime$default(MediaSpeedFragment mediaSpeedFragment, long j6, long j10, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        mediaSpeedFragment.updateTime(j6, j10, z6);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z6, boolean z10) {
        if (!z6 && this.hasVideoCompleted) {
            this.hasVideoCompleted = false;
            getSeekRequestQueue().clear();
            BaseMediaEditorFragment.safeSeekTo$default(this, 0, 0, 1, null);
        }
        super.changeVideoPlaybackStatus(z6, z10);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<Caption> getCaptionList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<PipInfoPack> getPipClipList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<StickerInfoPack> getStickerList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    @NotNull
    protected ArrayList<AVClipInfoPack> getVideoInputClipList() {
        AVClipInfoPack aVClipInfoPack = this.activeMedia;
        return aVClipInfoPack != null ? kotlin.collections.v.g(aVClipInfoPack) : new ArrayList<>();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTime(long j6, long j10, boolean z6) {
        int max;
        getBinding().timeView.setText(MediaTimeLineComponentKt.convertMillisToTime((int) j6));
        getBinding().totalTimeView.setText(MediaTimeLineComponentKt.convertMillisToTime((int) j10));
        if (z6) {
            SeekBar seekBar = getBinding().seekbar;
            if (j10 > 0) {
                max = (int) ((((long) getBinding().seekbar.getMax()) * j6) / j10);
            } else {
                max = 0;
            }
            seekBar.setProgress(max);
        }
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
        setPreviewVideoView(getBinding().videoViewPlayer);
        setPlayerButton(getBinding().playerButton);
        setPauseShadow(getBinding().pauseShadow);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        long jTrimmedDurationInMsWithSpeed;
        super.onAVClipsPrepared();
        AVClipInfoPack aVClipInfoPack = this.activeMedia;
        if (aVClipInfoPack != null) {
            jTrimmedDurationInMsWithSpeed = aVClipInfoPack.trimmedDurationInMsWithSpeed();
        } else {
            jTrimmedDurationInMsWithSpeed = 0;
        }
        long j6 = jTrimmedDurationInMsWithSpeed;
        this.videoDurationMs = j6;
        updateTime$default(this, 0L, j6, false, 4, null);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        double d;
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) JacksonUtils.readAs(getStringParam("clipInfoPack"), AVClipInfoPack.class);
        this.activeIndex = getIntParam("currentActiveIndex", 0);
        long intParam = getIntParam("minOutputLength", 1000);
        this.minOutputLengthMs = intParam;
        if (aVClipInfoPack != null && intParam > 0) {
            this.activeMedia = aVClipInfoPack;
            MediaOptionPanel mediaOptionPanel = getBinding().optionsPanel;
            String string = getString(com.narvii.mediaeditor.R.string.speed);
            kotlin.jvm.internal.t.i(string, "getString(...)");
            mediaOptionPanel.initComponent(5, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.MediaSpeedFragment.onViewCreated.1
                @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
                public void onOptionCancel(int i10) {
                    MediaSpeedFragment.this.setResult(0);
                    MediaSpeedFragment.this.finish();
                }

                @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
                public void onOptionDone(int i10) {
                    if (MediaSpeedFragment.this.videoDurationMs < MediaSpeedFragment.this.minOutputLengthMs) {
                        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MediaSpeedFragment.this.getContext());
                        aCMAlertDialog.setMessage(com.narvii.mediaeditor.R.string.speed_clip_too_short_hint);
                        aCMAlertDialog.addButton(android.R.string.ok, null);
                        aCMAlertDialog.show();
                        return;
                    }
                    Intent intent = new Intent();
                    intent.putExtra("clipInfoPack", JacksonUtils.writeAsString(MediaSpeedFragment.this.activeMedia));
                    intent.putExtra("currentActiveIndex", MediaSpeedFragment.this.activeIndex);
                    MediaSpeedFragment.this.setResult(-1, intent);
                    MediaSpeedFragment.this.finish();
                }

                @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
                public void onAddMusicSelected() {
                    MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
                }
            });
            MediaSpeedSelectView mediaSpeedSelectView = getBinding().speedSelectView;
            AVClipInfoPack aVClipInfoPack2 = this.activeMedia;
            if (aVClipInfoPack2 != null) {
                d = aVClipInfoPack2.speed;
            } else {
                d = 1.0d;
            }
            mediaSpeedSelectView.setSpeed(d);
            getBinding().speedSelectView.setOnSpeedUpdateListener(new AnonymousClass2());
            getPreviewPlayer().addPlayingEventListener(new AnonymousClass3());
            getBinding().seekbar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.video.MediaSpeedFragment.onViewCreated.4
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onProgressChanged(@Nullable SeekBar seekBar, int i10, boolean z6) {
                    long j6 = MediaSpeedFragment.this.videoDurationMs;
                    if (!z6 || j6 <= 0) {
                        return;
                    }
                    long max = (j6 * ((long) i10)) / ((long) MediaSpeedFragment.this.getBinding().seekbar.getMax());
                    MediaSpeedFragment mediaSpeedFragment = MediaSpeedFragment.this;
                    mediaSpeedFragment.updateTime(max, mediaSpeedFragment.videoDurationMs, false);
                    MediaSpeedFragment.this.onFrameLocatedDuringMove((int) max, 0);
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(@Nullable SeekBar seekBar) {
                    MediaSpeedFragment.this.isSeekBarSeeking = true;
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(@Nullable SeekBar seekBar) {
                    MediaSpeedFragment.this.isSeekBarSeeking = false;
                    MediaSpeedFragment.this.setDragging(false);
                    if (MediaSpeedFragment.this.getAutoPlaying()) {
                        BaseMediaEditorFragment.changeVideoPlaybackStatus$default(MediaSpeedFragment.this, false, false, 2, null);
                    }
                }
            });
            return;
        }
        showInvalidDialog(true);
    }
}
