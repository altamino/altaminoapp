package com.narvii.video;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.narvii.pip.PipInfoPack;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.IPlayingEventListener;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.model.Caption;
import com.narvii.video.model.StickerInfoPack;
import com.narvii.video.widget.MediaOptionPanel;
import com.narvii.video.widget.MediaSpeedSelectView;
import com.narvii.video.widget.MediaTimeLineComponentKt;
import com.narvii.video.widget.videoview.NVEditorPreviewVideoVIew;
import com.narvii.widget.ACMAlertDialog;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaSpeedFragment.kt */
/* loaded from: classes3.dex */
public final class MediaSpeedFragment extends BaseMediaEditorFragment {
    private HashMap _$_findViewCache;
    private int activeIndex;
    private AVClipInfoPack activeMedia;
    private boolean hasVideoCompleted;
    private boolean isSeekBarSeeking;
    private long minOutputLengthMs;
    private long videoDurationMs;

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
    protected void innerOnVideoPrepared() {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onSeekingStatusChanged(boolean z) {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onVideoPlaybackStatusChanged(boolean z) {
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    public void initComponent() {
        setPreviewVideoView((NVEditorPreviewVideoVIew) _$_findCachedViewById(com.narvii.mediaeditor.R.id.video_view_player));
        setPlayerButton((ImageView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.player_button));
        setPauseShadow(_$_findCachedViewById(com.narvii.mediaeditor.R.id.pause_shadow));
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getVideoInputClipList() {
        AVClipInfoPack aVClipInfoPack = this.activeMedia;
        if (aVClipInfoPack != null) {
            return CollectionsKt__CollectionsKt.arrayListOf(aVClipInfoPack);
        }
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<AVClipInfoPack> getAudioInputClipList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<Caption> getCaptionList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<StickerInfoPack> getStickerList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected ArrayList<PipInfoPack> getPipClipList() {
        return new ArrayList<>();
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return Utils.isAndroidVersion8() ? com.narvii.mediaeditor.R.style.AminoTheme_Overlay : com.narvii.mediaeditor.R.style.AminoTheme_Translucent_NoActionBar;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(com.narvii.mediaeditor.R.layout.fragment_media_speed, viewGroup, false);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        AVClipInfoPack aVClipInfoPack = (AVClipInfoPack) JacksonUtils.readAs(getStringParam("clipInfoPack"), AVClipInfoPack.class);
        this.activeIndex = getIntParam("currentActiveIndex", 0);
        this.minOutputLengthMs = getIntParam("minOutputLength", 1000);
        if (aVClipInfoPack == null || this.minOutputLengthMs <= 0) {
            showInvalidDialog(true);
            return;
        }
        this.activeMedia = aVClipInfoPack;
        MediaOptionPanel mediaOptionPanel = (MediaOptionPanel) _$_findCachedViewById(com.narvii.mediaeditor.R.id.options_panel);
        String string = getString(com.narvii.mediaeditor.R.string.speed);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.speed)");
        mediaOptionPanel.initComponent(5, string, new MediaOptionPanel.OptionSelectedListener() { // from class: com.narvii.video.MediaSpeedFragment.onViewCreated.1
            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onAddMusicSelected() {
                MediaOptionPanel.OptionSelectedListener.DefaultImpls.onAddMusicSelected(this);
            }

            @Override // com.narvii.video.widget.MediaOptionPanel.OptionSelectedListener
            public void onOptionDone(int i) {
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
            public void onOptionCancel(int i) {
                MediaSpeedFragment.this.setResult(0);
                MediaSpeedFragment.this.finish();
            }
        });
        MediaSpeedSelectView mediaSpeedSelectView = (MediaSpeedSelectView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.speed_select_view);
        AVClipInfoPack aVClipInfoPack2 = this.activeMedia;
        mediaSpeedSelectView.setSpeed(aVClipInfoPack2 != null ? aVClipInfoPack2.speed : 1.0d);
        ((MediaSpeedSelectView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.speed_select_view)).setOnSpeedUpdateListener(new Function1<Double, Unit>() { // from class: com.narvii.video.MediaSpeedFragment.onViewCreated.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Double d) {
                invoke(d.doubleValue());
                return Unit.INSTANCE;
            }

            public final void invoke(double d) {
                AVClipInfoPack aVClipInfoPack3 = MediaSpeedFragment.this.activeMedia;
                if (aVClipInfoPack3 != null) {
                    aVClipInfoPack3.speed = d;
                    MediaSpeedFragment.this.getPreviewPlayer().updateClipSpeed(aVClipInfoPack3);
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(MediaSpeedFragment.this, true, false, 2, null);
                    MediaSpeedFragment.this.setAutoPlaying(false);
                }
            }
        });
        getPreviewPlayer().addPlayingEventListener(new AnonymousClass3());
        ((SeekBar) _$_findCachedViewById(com.narvii.mediaeditor.R.id.seekbar)).setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.video.MediaSpeedFragment.onViewCreated.4
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                long j = MediaSpeedFragment.this.videoDurationMs;
                if (!z || j <= 0) {
                    return;
                }
                SeekBar seekbar = (SeekBar) MediaSpeedFragment.this._$_findCachedViewById(com.narvii.mediaeditor.R.id.seekbar);
                Intrinsics.checkExpressionValueIsNotNull(seekbar, "seekbar");
                long max = (j * i) / seekbar.getMax();
                MediaSpeedFragment mediaSpeedFragment = MediaSpeedFragment.this;
                mediaSpeedFragment.updateTime(max, mediaSpeedFragment.videoDurationMs, false);
                MediaSpeedFragment.this.onFrameLocatedDuringMove((int) max, 0);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                MediaSpeedFragment.this.isSeekBarSeeking = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                MediaSpeedFragment.this.isSeekBarSeeking = false;
                MediaSpeedFragment.this.setDragging(false);
                if (MediaSpeedFragment.this.getAutoPlaying()) {
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(MediaSpeedFragment.this, false, false, 2, null);
                }
            }
        });
    }

    /* compiled from: MediaSpeedFragment.kt */
    /* renamed from: com.narvii.video.MediaSpeedFragment$onViewCreated$3, reason: invalid class name */
    public static final class AnonymousClass3 implements IPlayingEventListener {
        @Override // com.narvii.video.interfaces.IPlayingEventListener
        public void onPlayingStopped() {
        }

        AnonymousClass3() {
        }

        @Override // com.narvii.video.interfaces.IPlayingEventListener
        public void onPlayingProgress(long j, long j2) {
            MediaSpeedFragment.this.videoDurationMs = j2;
            if (MediaSpeedFragment.this.isSeekBarSeeking) {
                return;
            }
            MediaSpeedFragment.updateTime$default(MediaSpeedFragment.this, j, j2, false, 4, null);
        }

        @Override // com.narvii.video.interfaces.IPlayingEventListener
        public void onPlayingEOF() {
            MediaSpeedFragment.this.hasVideoCompleted = true;
            MediaSpeedFragment.this.setAutoPlaying(false);
            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.MediaSpeedFragment$onViewCreated$3$onPlayingEOF$1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseMediaEditorFragment.changeVideoPlaybackStatus$default(MediaSpeedFragment.this, true, false, 2, null);
                    MediaSpeedFragment.this.changeSeekStatus(false);
                }
            }, 50L);
        }
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void onAVClipsPrepared() {
        super.onAVClipsPrepared();
        this.videoDurationMs = this.activeMedia != null ? r0.trimmedDurationInMsWithSpeed() : 0L;
        updateTime$default(this, 0L, this.videoDurationMs, false, 4, null);
    }

    @Override // com.narvii.video.BaseMediaEditorFragment
    protected void changeVideoPlaybackStatus(boolean z, boolean z2) {
        if (!z && this.hasVideoCompleted) {
            this.hasVideoCompleted = false;
            getSeekRequestQueue().clear();
            BaseMediaEditorFragment.safeSeekTo$default(this, 0, 0, 1, null);
        }
        super.changeVideoPlaybackStatus(z, z2);
    }

    static /* synthetic */ void updateTime$default(MediaSpeedFragment mediaSpeedFragment, long j, long j2, boolean z, int i, Object obj) {
        mediaSpeedFragment.updateTime(j, j2, (i & 4) != 0 ? true : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTime(long j, long j2, boolean z) {
        int max;
        TextView time_view = (TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.time_view);
        Intrinsics.checkExpressionValueIsNotNull(time_view, "time_view");
        time_view.setText(MediaTimeLineComponentKt.convertMillisToTime((int) j));
        TextView total_time_view = (TextView) _$_findCachedViewById(com.narvii.mediaeditor.R.id.total_time_view);
        Intrinsics.checkExpressionValueIsNotNull(total_time_view, "total_time_view");
        total_time_view.setText(MediaTimeLineComponentKt.convertMillisToTime((int) j2));
        if (z) {
            SeekBar seekbar = (SeekBar) _$_findCachedViewById(com.narvii.mediaeditor.R.id.seekbar);
            Intrinsics.checkExpressionValueIsNotNull(seekbar, "seekbar");
            if (j2 > 0) {
                SeekBar seekbar2 = (SeekBar) _$_findCachedViewById(com.narvii.mediaeditor.R.id.seekbar);
                Intrinsics.checkExpressionValueIsNotNull(seekbar2, "seekbar");
                max = (int) ((seekbar2.getMax() * j) / j2);
            } else {
                max = 0;
            }
            seekbar.setProgress(max);
        }
    }
}
