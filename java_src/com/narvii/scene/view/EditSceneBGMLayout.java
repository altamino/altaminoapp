package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.mediaeditor.R;
import com.narvii.scene.view.AudioOptionPanel;
import com.narvii.scene.view.BalanceSeekBar;
import com.narvii.util.Utils;
import com.narvii.video.interfaces.ITimelineClip;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.video.services.FrameRetrieverManager;
import com.narvii.video.widget.MediaTimeLineComponent;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EditSceneBGMLayout.kt */
/* loaded from: classes3.dex */
public final class EditSceneBGMLayout extends LinearLayout implements BalanceSeekBar.OnSeekListener, View.OnClickListener, MediaTimeLineComponent.TimeLineCallback, AudioOptionPanel.OnOptionClickListener {
    private HashMap _$_findViewCache;
    private AVClipInfoPack activeClip;
    private AudioOptionPanel audioOptionPanel;
    private BalanceSeekBar balanceSeekBar;
    private View fadeInView;
    private View fadeOutView;
    private FrameRetrieverManager frameRetrieverManager;
    private boolean isFadeIn;
    private boolean isFadeOut;
    private MediaTimeLineComponent mediaTimeLineComponent;
    private OnFadeListener onFadeListener;
    private AudioOptionPanel.OnOptionClickListener onOptionClickListener;
    private BalanceSeekBar.OnSeekListener onSeekListener;
    private MediaTimeLineComponent.TimeLineCallback timeLineCallback;

    /* compiled from: EditSceneBGMLayout.kt */
    public interface OnFadeListener {
        void onFade(boolean z, boolean z2);
    }

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

    public final void start() {
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

    public EditSceneBGMLayout(Context context) {
        super(context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditSceneBGMLayout(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
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

    @Override // com.narvii.scene.view.AudioOptionPanel.OnOptionClickListener
    public void onOptionSubmit(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        AudioOptionPanel.OnOptionClickListener onOptionClickListener = this.onOptionClickListener;
        if (onOptionClickListener != null) {
            onOptionClickListener.onOptionSubmit(view);
        }
    }

    @Override // com.narvii.scene.view.AudioOptionPanel.OnOptionClickListener
    public void onOptionDelete(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        AudioOptionPanel.OnOptionClickListener onOptionClickListener = this.onOptionClickListener;
        if (onOptionClickListener != null) {
            onOptionClickListener.onOptionDelete(view);
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
    public void onFrameLocatedDuringMove(int i, int i2) {
        MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            timeLineCallback.onFrameLocatedDuringMove(i, i2);
        }
    }

    @Override // com.narvii.video.widget.MediaTimeLineComponent.TimeLineCallback
    public void onReplayTriggered(int i, int i2, int i3) {
        MediaTimeLineComponent.TimeLineCallback timeLineCallback = this.timeLineCallback;
        if (timeLineCallback != null) {
            timeLineCallback.onReplayTriggered(i, i2, i3);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = R.id.fade_in_view;
        if (numValueOf != null && numValueOf.intValue() == i) {
            this.isFadeIn = !this.isFadeIn;
            View view2 = this.fadeInView;
            if (view2 != null) {
                view2.setSelected(this.isFadeIn);
            }
            OnFadeListener onFadeListener = this.onFadeListener;
            if (onFadeListener != null) {
                onFadeListener.onFade(this.isFadeIn, this.isFadeOut);
                return;
            }
            return;
        }
        int i2 = R.id.fade_out_view;
        if (numValueOf != null && numValueOf.intValue() == i2) {
            this.isFadeOut = !this.isFadeOut;
            View view3 = this.fadeOutView;
            if (view3 != null) {
                view3.setSelected(this.isFadeOut);
            }
            OnFadeListener onFadeListener2 = this.onFadeListener;
            if (onFadeListener2 != null) {
                onFadeListener2.onFade(this.isFadeIn, this.isFadeOut);
            }
        }
    }

    static /* synthetic */ void initTimeLine$default(EditSceneBGMLayout editSceneBGMLayout, List list, int i, float f, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f = -1.0f;
        }
        editSceneBGMLayout.initTimeLine(list, i, f);
    }

    private final void initTimeLine(List<? extends AVClipInfoPack> list, int i, float f) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mediaTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.initTimeLine(101, 201, true, list, null, (40704 & 32) != 0 ? null : this.frameRetrieverManager, i, (40704 & 128) != 0 ? 3000 : Integer.valueOf(i), (40704 & 256) != 0 ? -1.0f : f, (40704 & 512) != 0 ? false : false, (40704 & 1024) != 0 ? -1 : 0, (40704 & 2048) != 0 ? false : false, (40704 & 4096) != 0, (40704 & 8192) != 0 ? 0 : 0, (40704 & 16384) != 0 ? null : this, (40704 & 32768) != 0 ? false : false);
        }
        final AVClipInfoPack aVClipInfoPack = this.activeClip;
        if (aVClipInfoPack == null || aVClipInfoPack.trimStartInMs <= 0) {
            return;
        }
        Utils.postDelayed(new Runnable() { // from class: com.narvii.scene.view.EditSceneBGMLayout$initTimeLine$$inlined$let$lambda$1
            @Override // java.lang.Runnable
            public final void run() {
                MediaTimeLineComponent mediaTimeLineComponent2 = this.mediaTimeLineComponent;
                if (mediaTimeLineComponent2 != null) {
                    MediaTimeLineComponent.scrollTimeLine$default(mediaTimeLineComponent2, aVClipInfoPack.trimStartInMs, false, false, true, false, 0, false, 118, null);
                }
            }
        }, 100L);
    }

    public final void init(FrameRetrieverManager frameRetrieverManager) {
        Intrinsics.checkParameterIsNotNull(frameRetrieverManager, "frameRetrieverManager");
        this.frameRetrieverManager = frameRetrieverManager;
    }

    public final void setBGMusicClip(AVClipInfoPack bgMusicClip, long j) {
        Intrinsics.checkParameterIsNotNull(bgMusicClip, "bgMusicClip");
        this.activeClip = bgMusicClip;
        initTimeLine(CollectionsKt__CollectionsJVMKt.listOf(bgMusicClip), (int) j, j / 8);
        AudioOptionPanel audioOptionPanel = this.audioOptionPanel;
        if (audioOptionPanel != null) {
            audioOptionPanel.setData(bgMusicClip.author, bgMusicClip.fileName);
        }
        BalanceSeekBar balanceSeekBar = this.balanceSeekBar;
        if (balanceSeekBar != null) {
            balanceSeekBar.setRange(bgMusicClip.trackVolume);
        }
        this.isFadeIn = bgMusicClip.fadeIn;
        this.isFadeOut = bgMusicClip.fadeOut;
        View view = this.fadeInView;
        if (view != null) {
            view.setSelected(this.isFadeIn);
        }
        View view2 = this.fadeOutView;
        if (view2 != null) {
            view2.setSelected(this.isFadeOut);
        }
    }

    public final void setOnSeekListener(BalanceSeekBar.OnSeekListener onSeekListener) {
        Intrinsics.checkParameterIsNotNull(onSeekListener, "onSeekListener");
        this.onSeekListener = onSeekListener;
    }

    public final void setOnFadeListener(OnFadeListener onFadeListener) {
        Intrinsics.checkParameterIsNotNull(onFadeListener, "onFadeListener");
        this.onFadeListener = onFadeListener;
    }

    public final void setOnOptionClickListener(AudioOptionPanel.OnOptionClickListener onOptionClickListener) {
        Intrinsics.checkParameterIsNotNull(onOptionClickListener, "onOptionClickListener");
        this.onOptionClickListener = onOptionClickListener;
    }

    public final void setTimelineCallback(MediaTimeLineComponent.TimeLineCallback timeLineCallback) {
        Intrinsics.checkParameterIsNotNull(timeLineCallback, "timeLineCallback");
        this.timeLineCallback = timeLineCallback;
    }

    public final void updatePlaybackTime(long j) {
        MediaTimeLineComponent mediaTimeLineComponent = this.mediaTimeLineComponent;
        if (mediaTimeLineComponent != null) {
            mediaTimeLineComponent.updatePlaybackTime(j);
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
}
