package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class EditSceneBGMLayout extends LinearLayout implements BalanceSeekBar.OnSeekListener, View.OnClickListener, MediaTimeLineComponent.TimeLineCallback, AudioOptionPanel.OnOptionClickListener {

    @Nullable
    private AVClipInfoPack activeClip;

    @Nullable
    private AudioOptionPanel audioOptionPanel;

    @Nullable
    private BalanceSeekBar balanceSeekBar;

    @Nullable
    private View fadeInView;

    @Nullable
    private View fadeOutView;

    @Nullable
    private FrameRetrieverManager frameRetrieverManager;
    private boolean isFadeIn;
    private boolean isFadeOut;

    @Nullable
    private MediaTimeLineComponent mediaTimeLineComponent;

    @Nullable
    private OnFadeListener onFadeListener;

    @Nullable
    private AudioOptionPanel.OnOptionClickListener onOptionClickListener;

    @Nullable
    private BalanceSeekBar.OnSeekListener onSeekListener;

    @Nullable
    private MediaTimeLineComponent.TimeLineCallback timeLineCallback;

    public interface OnFadeListener {
        void onFade(boolean z6, boolean z10);
    }

    public EditSceneBGMLayout(@Nullable Context context) {
        super(context);
    }

    public final void init(@NotNull FrameRetrieverManager frameRetrieverManager) {
        t.j(frameRetrieverManager, "frameRetrieverManager");
        this.frameRetrieverManager = frameRetrieverManager;
    }

    public final void setOnFadeListener(@NotNull OnFadeListener onFadeListener) {
        t.j(onFadeListener, "onFadeListener");
        this.onFadeListener = onFadeListener;
    }

    public final void setOnOptionClickListener(@NotNull AudioOptionPanel.OnOptionClickListener onOptionClickListener) {
        t.j(onOptionClickListener, "onOptionClickListener");
        this.onOptionClickListener = onOptionClickListener;
    }

    public final void setOnSeekListener(@NotNull BalanceSeekBar.OnSeekListener onSeekListener) {
        t.j(onSeekListener, "onSeekListener");
        this.onSeekListener = onSeekListener;
    }

    public final void setTimelineCallback(@NotNull MediaTimeLineComponent.TimeLineCallback timeLineCallback) {
        t.j(timeLineCallback, "timeLineCallback");
        this.timeLineCallback = timeLineCallback;
    }

    public final void start() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditSceneBGMLayout(@Nullable Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(attributes, "attributes");
    }

    private final void initTimeLine(List<? extends AVClipInfoPack> list, int i10, float f) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mediaTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.initTimeLine(101, 201, true, list, null, (40704 & 32) != 0 ? null : this.frameRetrieverManager, i10, (40704 & 128) != 0 ? 3000 : Integer.valueOf(i10), (40704 & 256) != 0 ? -1.0f : f, (40704 & 512) != 0 ? false : false, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : false, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : 0, (40704 & 16384) != 0 ? null : this, (40704 & 32768) != 0 ? false : false);
        }
        final AVClipInfoPack aVClipInfoPack = this.activeClip;
        if (aVClipInfoPack == null || aVClipInfoPack.trimStartInMs <= 0) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.view.c
            @Override // java.lang.Runnable
            public final void run() {
                EditSceneBGMLayout.initTimeLine$lambda$1$lambda$0(this.f2706a, aVClipInfoPack);
            }
        }, 100L);
    }

    static /* synthetic */ void initTimeLine$default(EditSceneBGMLayout editSceneBGMLayout, List list, int i10, float f, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            f = -1.0f;
        }
        editSceneBGMLayout.initTimeLine(list, i10, f);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R.id.fade_in_view;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            boolean z6 = !this.isFadeIn;
            this.isFadeIn = z6;
            View view2 = this.fadeInView;
            if (view2 != null) {
                view2.setSelected(z6);
            }
            OnFadeListener onFadeListener = this.onFadeListener;
            if (onFadeListener != null) {
                onFadeListener.onFade(this.isFadeIn, this.isFadeOut);
                return;
            }
            return;
        }
        int i11 = R.id.fade_out_view;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            boolean z10 = !this.isFadeOut;
            this.isFadeOut = z10;
            View view3 = this.fadeOutView;
            if (view3 != null) {
                view3.setSelected(z10);
            }
            OnFadeListener onFadeListener2 = this.onFadeListener;
            if (onFadeListener2 != null) {
                onFadeListener2.onFade(this.isFadeIn, this.isFadeOut);
            }
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onControllerActive() {
        MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            timeLineCallback.onControllerActive();
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onFrameLocatedDuringMove(int i10, int i11) {
        MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            timeLineCallback.onFrameLocatedDuringMove(i10, i11);
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i10, int i11, int i12) {
        MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            timeLineCallback.onReplayTriggered(i10, i11, i12);
        }
    }

    @Override // com.narvii.scene.view.BalanceSeekBar.OnSeekListener
    public void onSeek(float f) {
        BalanceSeekBar.OnSeekListener onSeekListener = this.onSeekListener;
        if (onSeekListener != null) {
            onSeekListener.onSeek(f);
        }
    }

    @Override // com.narvii.scene.view.BalanceSeekBar.OnSeekListener
    public void onSeekFinish(float f) {
        BalanceSeekBar.OnSeekListener onSeekListener = this.onSeekListener;
        if (onSeekListener != null) {
            onSeekListener.onSeekFinish(f);
        }
    }

    public final void pause() {
        MediaTimeLineComponent mediaTimeLineComponent = this.mediaTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.playbackStatusChanged(false);
        }
    }

    public final void release() {
        MediaTimeLineComponent mediaTimeLineComponent = this.mediaTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.playbackStatusChanged(false);
        }
    }

    public final void setBGMusicClip(@NotNull AVClipInfoPack bgMusicClip, long j6) {
        t.j(bgMusicClip, "bgMusicClip");
        this.activeClip = bgMusicClip;
        initTimeLine(u.e(bgMusicClip), (int) j6, j6 / 8);
        AudioOptionPanel audioOptionPanel = this.audioOptionPanel;
        if (audioOptionPanel != null) {
            audioOptionPanel.setData(bgMusicClip.author, bgMusicClip.fileName);
        }
        BalanceSeekBar balanceSeekBar = this.balanceSeekBar;
        if (balanceSeekBar != null) {
            balanceSeekBar.setRange(bgMusicClip.trackVolume);
        }
        boolean z6 = bgMusicClip.fadeIn;
        this.isFadeIn = z6;
        this.isFadeOut = bgMusicClip.fadeOut;
        View view = this.fadeInView;
        if (view != null) {
            view.setSelected(z6);
        }
        View view2 = this.fadeOutView;
        if (view2 == null) {
            return;
        }
        view2.setSelected(this.isFadeOut);
    }

    public final void updatePlaybackTime(long j6) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mediaTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.updatePlaybackTime(j6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initTimeLine$lambda$1$lambda$0(EditSceneBGMLayout this$0, AVClipInfoPack it) {
        t.j(this$0, "this$0");
        t.j(it, "$it");
        MediaTimeLineComponent mediaTimeLineComponent = this$0.mediaTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent, it.trimStartInMs, false, false, true, false, 0, false, 118, null);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.audioOptionPanel = (AudioOptionPanel) findViewById(R.id.options_panel);
        this.mediaTimeLineComponent = (MediaTimeLineComponent) findViewById(R.id.video_time_line_component);
        this.balanceSeekBar = (BalanceSeekBar) findViewById(R.id.balance_seek_bar);
        this.fadeInView = findViewById(R.id.fade_in_view);
        this.fadeOutView = findViewById(R.id.fade_out_view);
        BalanceSeekBar balanceSeekBar = this.balanceSeekBar;
        if (balanceSeekBar != null) {
            balanceSeekBar.setOnSeekListener(this);
        }
        View view = this.fadeInView;
        if (view != null) {
            view.setOnClickListener(this);
        }
        View view2 = this.fadeOutView;
        if (view2 != null) {
            view2.setOnClickListener(this);
        }
        AudioOptionPanel audioOptionPanel = this.audioOptionPanel;
        if (audioOptionPanel != null) {
            audioOptionPanel.setOnOptionClickListener(this);
        }
    }

    @Override // com.narvii.scene.view.AudioOptionPanel.OnOptionClickListener
    public void onOptionDelete(@NotNull View view) {
        t.j(view, "view");
        AudioOptionPanel.OnOptionClickListener onOptionClickListener = this.onOptionClickListener;
        if (onOptionClickListener != null) {
            onOptionClickListener.onOptionDelete(view);
        }
    }

    @Override // com.narvii.scene.view.AudioOptionPanel.OnOptionClickListener
    public void onOptionSubmit(@NotNull View view) {
        t.j(view, "view");
        AudioOptionPanel.OnOptionClickListener onOptionClickListener = this.onOptionClickListener;
        if (onOptionClickListener != null) {
            onOptionClickListener.onOptionSubmit(view);
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onPlayerTick(long j6, long j10) {
        MediaTimeLineComponent.TimeLineCallback.DefaultImpls.onPlayerTick(this, j6, j10);
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
}
