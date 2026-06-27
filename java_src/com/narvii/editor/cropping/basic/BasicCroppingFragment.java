package com.narvii.editor.cropping.basic;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.meicam.sdk.NvsAVFileInfo;
import com.meicam.sdk.NvsLiveWindow;
import com.meicam.sdk.NvsSize;
import com.meicam.sdk.NvsStreamingContext;
import com.meicam.sdk.NvsTimeline;
import com.meicam.sdk.NvsVideoClip;
import com.meicam.sdk.NvsVideoFx;
import com.meicam.sdk.NvsVideoTrack;
import com.narvii.app.NVFragment;
import com.narvii.cropping.CroppingData;
import com.narvii.editor.cropping.basic.ColorPickerView;
import com.narvii.editor.cropping.dynamic.DynamicCroppingActivity;
import com.narvii.editor.cropping.dynamic.egl.EglCore;
import com.narvii.editor.player.MeiShePreviewPlayer;
import com.narvii.editor.player.MeisheListenerManage;
import com.narvii.editor.utils.EditorConstants;
import com.narvii.editor.utils.TimelineUtils;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.meisheeditor.R;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.video.model.AVClipInfoPack;
import com.narvii.widget.EasyButton;

/* loaded from: classes2.dex */
public class BasicCroppingFragment extends NVFragment implements NvsStreamingContext.PlaybackCallback, View.OnClickListener, IColorSelectedListener, ColorPickerView.IPickerChecked, SeekBar.OnSeekBarChangeListener, NvsStreamingContext.PlaybackCallback2 {
    private static final String[] COLORS = {"#ffffff", "#000000", "#54515d", "#f2ff41", "#ffc102", "#ff6809", "#f20d57", "#1598ff", "#8134ff", "#a10abf", "#fe37ba", "#ff9dff", "#22f39e", "#018c86", "#00477f", "#036100"};
    private static final String DEST_PATH = "dest_path";
    private static final int DYNAMIC_CROPPING_REQUEST = 12345;
    private static final String SOURCE_PATH = "source_path";
    private static final String TAG = "BasicCroppingFragment";
    private static final String TRIM_END = "trim_end";
    private static final String TRIM_START = "trim_tart";
    private AVClipInfoPack activeClipInfo;
    NvsVideoClip bgVideoClip;
    NvsVideoTrack bgVideoTrack;
    private CroppingData croppingData;
    private int frameRate;
    private RelativeLayout mBottomView;
    private ColorPickerItemView mChangeBgBtn;
    private EasyButton mCheckBtn;
    private EasyButton mCloseBtn;
    private ColorPickerView mColorPickerView;
    private EasyButton mDynamicCroppingBtn;
    private GestureDetector mGestureDetector;
    private Handler mHandler;
    private NvsLiveWindow mLiveWindow;
    private EasyButton mPlayBtn;
    private EasyButton mRestoreBtn;
    private EasyButton mRotateBtn;
    private ScaleGestureDetector mScaleGestureDetector;
    private SeekBar mSeekBar;
    private TextView mTimeView;
    private NvsTimeline mTimeline;
    private TextView mTotalView;
    private NvsVideoClip mVideoClip;
    private float maxOffsetX;
    private float maxOffsetY;
    private MeisheListenerManage meisheListenerManage;
    NvsVideoTrack nvsVideoTrack;
    private NvsStreamingContext mStreamingContext = NvsStreamingContext.getInstance();
    private int mRotateAngle = 0;
    private int mColorIndex = 1;
    private float minScale = 0.7f;
    private float maxScale = 5.0f;
    private int mVideoWidth = -1;
    private int mVideoHeight = -1;
    private int mOriginVideoWidth = -1;
    private int mOriginVideoHeight = -1;
    private boolean videoPlayEnd = false;
    private boolean isDynamic = false;
    private boolean dynamic = false;
    private boolean singlePointerEnable = true;
    private float totalScale = 1.0f;
    private float totalHorizScroll = 0.0f;
    private float totalVerticalScroll = 0.0f;
    private float ratio = 1.0f;
    private ScaleGestureDetector.OnScaleGestureListener mScaleGestureListener = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.narvii.editor.cropping.basic.BasicCroppingFragment.1
        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            BasicCroppingFragment.this.onScale(scaleGestureDetector.getScaleFactor());
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            BasicCroppingFragment.this.singlePointerEnable = false;
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.editor.cropping.basic.BasicCroppingFragment.1.1
                @Override // java.lang.Runnable
                public void run() {
                    BasicCroppingFragment.this.singlePointerEnable = true;
                }
            }, 100L);
        }
    };
    private GestureDetector.OnGestureListener mGestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.editor.cropping.basic.BasicCroppingFragment.2
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            BasicCroppingFragment.this.onScroll(-f, f2);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            BasicCroppingFragment.this.clickPlayBtn();
            return true;
        }
    };
    private boolean seekBarSettable = true;
    private String dynamicCroppingPath = "";

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "SceneEdit";
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackPreloadingCompletion(NvsTimeline nvsTimeline) {
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackStopped(NvsTimeline nvsTimeline) {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() != null && getActivity().getActionBar() != null) {
            getActivity().getActionBar().hide();
        }
        this.meisheListenerManage = MeisheListenerManage.Companion.getInstance();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_base_cropping, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mLiveWindow = (NvsLiveWindow) view.findViewById(R.id.liveWindow);
        this.mLiveWindow.setFillMode(1);
        this.mScaleGestureDetector = new ScaleGestureDetector(getActivity(), this.mScaleGestureListener);
        this.mGestureDetector = new GestureDetector(getActivity(), this.mGestureListener);
        this.mTimeline = TimelineUtils.INSTANCE.createTimeline();
        this.activeClipInfo = (AVClipInfoPack) JacksonUtils.readAs(getStringParam("active_video_clip"), AVClipInfoPack.class);
        this.bgVideoTrack = this.mTimeline.appendVideoTrack();
        this.bgVideoClip = this.bgVideoTrack.appendClip("assets:/bg_#000000.png");
        this.nvsVideoTrack = this.mTimeline.appendVideoTrack();
        addVideoClip(getStringParam(SOURCE_PATH));
        if (this.mVideoClip == null) {
            NVToast.makeText(getContext(), R.string.invalid_input, 0).show();
            finish();
        }
        this.mVideoClip.appendBuiltinFx(MeiShePreviewPlayer.TRANSFORM_TAG);
        if (this.mVideoClip.getVideoType() == 1) {
            this.mVideoClip.setImageMotionMode(0);
        }
        this.bgVideoTrack.changeOutPoint(0, this.nvsVideoTrack.getDuration());
        this.mStreamingContext.connectTimelineWithLiveWindow(this.mTimeline, this.mLiveWindow);
        this.meisheListenerManage.registerPlaybackCallback(this);
        this.meisheListenerManage.registerPlaybackCallback2(this);
        this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$YQEKnb8V4b95tooY4TsWCTmlny4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onViewCreated$0$BasicCroppingFragment();
            }
        });
        this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$U_yVmDhXYBBT7g1LcGKrtorWxd8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.applyCroppingData();
            }
        });
        this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$CCOR1WR1gjGHvY1wu5exhoDbYxM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getVideoWidthAndHeight();
            }
        });
        this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$fRZAyep2LBNPljfWjYOd34gsnhU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onViewCreated$1$BasicCroppingFragment();
            }
        });
        this.mCloseBtn = (EasyButton) view.findViewById(R.id.close);
        this.mCloseBtn.setOnClickListener(this);
        this.mCheckBtn = (EasyButton) view.findViewById(R.id.check);
        this.mCheckBtn.setOnClickListener(this);
        this.mDynamicCroppingBtn = (EasyButton) view.findViewById(R.id.dynamic_cropping);
        this.mDynamicCroppingBtn.setOnClickListener(this);
        this.mChangeBgBtn = (ColorPickerItemView) view.findViewById(R.id.change_background_color);
        this.mChangeBgBtn.setSelected(true);
        this.mChangeBgBtn.setColor(COLORS[this.mColorIndex]);
        this.mChangeBgBtn.setOnClickListener(this);
        this.mRotateBtn = (EasyButton) view.findViewById(R.id.rotate);
        this.mRotateBtn.setOnClickListener(this);
        this.mBottomView = (RelativeLayout) view.findViewById(R.id.bottom_view);
        intLiveWindowGestureListener();
        this.mPlayBtn = (EasyButton) view.findViewById(R.id.play);
        this.mPlayBtn.setOnClickListener(this);
        this.mTimeView = (TextView) view.findViewById(R.id.time_view);
        this.mTotalView = (TextView) view.findViewById(R.id.total_time_view);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mSeekBar = (SeekBar) view.findViewById(R.id.seekbar);
        this.mSeekBar.setOnSeekBarChangeListener(this);
        this.mRestoreBtn = (EasyButton) view.findViewById(R.id.restore);
        this.mRestoreBtn.setOnClickListener(this);
    }

    public /* synthetic */ void lambda$onViewCreated$0$BasicCroppingFragment() {
        this.mStreamingContext.seekTimeline(this.mTimeline, 0L, 1, 0);
    }

    public /* synthetic */ void lambda$onViewCreated$1$BasicCroppingFragment() {
        setTime(true);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        this.meisheListenerManage.unRegisterPlaybackCallback(this);
        this.meisheListenerManage.unRegisterPlaybackCallback2(this);
        super.onDestroyView();
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback
    public void onPlaybackEOF(NvsTimeline nvsTimeline) {
        this.mPlayBtn.setVisibility(0);
        this.videoPlayEnd = true;
        this.mTimeView.setText(this.mTotalView.getText());
    }

    @Override // com.meicam.sdk.NvsStreamingContext.PlaybackCallback2
    public void onPlaybackTimelinePosition(NvsTimeline nvsTimeline, long j) {
        setTime(false, j / 1000);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        boolean zIsDynamic;
        String str2;
        int id = view.getId();
        if (id == R.id.close) {
            finish();
            return;
        }
        if (id == R.id.check) {
            compileVideo();
            return;
        }
        if (id == R.id.dynamic_cropping) {
            LogEvent.clickBuilder(this, ActSemantic.edit).area("DynamicCropping").send();
            String stringParam = getStringParam(SOURCE_PATH);
            CroppingData croppingData = this.croppingData;
            if (croppingData == null || (str2 = croppingData.orgVideoPath) == null) {
                str = stringParam;
                zIsDynamic = false;
            } else {
                zIsDynamic = croppingData.isDynamic();
                str = str2;
            }
            boolean z = (Utils.isJPG(str) || Utils.isPNG(str) || Utils.isBMP(str)) ? false : true;
            if (!zIsDynamic && (!z || (this.mOriginVideoWidth * 1.0f) / this.mOriginVideoHeight < 0.5725f)) {
                NVToast.makeText(getContext(), R.string.not_support_dynamic_cropping, 0).show();
                return;
            }
            this.mStreamingContext.clearCachedResources(false);
            startActivityForResult(DynamicCroppingActivity.Companion.intent(getContext(), str, getStringParam(DEST_PATH), this.frameRate, getIntParam(TRIM_START, 0), getIntParam(TRIM_END, 0)), 12345);
            this.mDynamicCroppingBtn.setClickable(false);
            return;
        }
        if (id == R.id.change_background_color) {
            LogEvent.clickBuilder(this, ActSemantic.edit).area("BackgroundColor").send();
            clickBackgroundColorBtn();
        } else if (id == R.id.rotate) {
            LogEvent.clickBuilder(this, ActSemantic.edit).area("Rotate").send();
            clickRotateBtn();
        } else if (id == R.id.play) {
            clickPlayBtn();
        } else if (id == R.id.restore) {
            restoreVideo();
        }
    }

    private void intLiveWindowGestureListener() {
        this.mLiveWindow.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$iEYCUrFoS5XRd85Mk2aXCptBIQQ
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f$0.lambda$intLiveWindowGestureListener$2$BasicCroppingFragment(view, motionEvent);
            }
        });
    }

    public /* synthetic */ boolean lambda$intLiveWindowGestureListener$2$BasicCroppingFragment(View view, MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        if (pointerCount == 1 && this.singlePointerEnable) {
            return this.mGestureDetector.onTouchEvent(motionEvent);
        }
        if (pointerCount == 2) {
            return this.mScaleGestureDetector.onTouchEvent(motionEvent);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScale(float f) {
        this.totalScale *= f;
        float f2 = this.totalScale;
        float f3 = this.maxScale;
        if (f2 > f3) {
            this.totalScale = f3;
        } else {
            float f4 = this.minScale;
            if (f2 < f4) {
                this.totalScale = f4;
            }
        }
        checkScrollOffset();
        updateTransform2DFx(this.nvsVideoTrack, this.totalScale, 0.0d, this.totalHorizScroll, this.totalVerticalScroll);
        seek();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScroll(float f, float f2) {
        this.totalHorizScroll += f;
        this.totalVerticalScroll += f2;
        checkScrollOffset();
        updateTransform2DFx(this.nvsVideoTrack, this.totalScale, 0.0d, this.totalHorizScroll, this.totalVerticalScroll);
        seek();
    }

    private void checkScrollOffset() {
        float height = this.mLiveWindow.getHeight();
        float width = this.mLiveWindow.getWidth();
        float f = (EditorConstants.VIDEO_RESOLUTION_WIDTH * 1.0f) / width;
        if (this.ratio > 0.5625f) {
            this.maxOffsetX = ((Math.abs(1.0f - this.totalScale) * width) / 2.0f) * f;
            this.maxOffsetY = (Math.abs(height - ((this.totalScale * width) / this.ratio)) / 2.0f) * f;
        } else {
            this.maxOffsetY = ((Math.abs(1.0f - this.totalScale) * height) / 2.0f) * f;
            this.maxOffsetX = (Math.abs(width - ((this.totalScale * height) * this.ratio)) / 2.0f) * f;
        }
        float f2 = this.totalHorizScroll;
        float f3 = this.maxOffsetX;
        if (f2 >= f3) {
            this.totalHorizScroll = f3;
        } else if (f2 <= (-f3)) {
            this.totalHorizScroll = -f3;
        }
        float f4 = this.totalVerticalScroll;
        float f5 = this.maxOffsetY;
        if (f4 >= f5) {
            this.totalVerticalScroll = f5;
        } else if (f4 <= (-f5)) {
            this.totalVerticalScroll = -f5;
        }
    }

    @Override // com.narvii.editor.cropping.basic.IColorSelectedListener
    public void onColorSelected(String str, int i) {
        this.mColorIndex = i;
        changeBackgroundColor("assets:/bg_" + COLORS[i] + ".png");
    }

    private void changeBackgroundColor(String str) {
        this.bgVideoTrack.removeAllClips();
        this.bgVideoTrack.appendClip(str);
        this.bgVideoTrack.changeOutPoint(0, this.nvsVideoTrack.getDuration());
        long timelineCurrentPosition = this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline);
        if (this.mPlayBtn.getVisibility() == 0) {
            this.mStreamingContext.seekTimeline(this.mTimeline, timelineCurrentPosition, 1, 0);
        } else {
            this.mStreamingContext.playbackTimeline(this.mTimeline, timelineCurrentPosition, -1L, 1, true, 8);
        }
    }

    @Override // com.narvii.editor.cropping.basic.ColorPickerView.IPickerChecked
    public void onChecked() {
        this.mChangeBgBtn.setClickable(true);
        this.mBottomView.removeView(this.mColorPickerView);
        this.mChangeBgBtn.setColor(COLORS[this.mColorIndex]);
    }

    @Override // com.narvii.app.NVFragment
    public void finish() {
        this.bgVideoTrack.removeAllClips();
        this.nvsVideoTrack.removeAllClips();
        super.finish();
    }

    @Override // com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        if (z) {
            this.mDynamicCroppingBtn.setClickable(true);
            if (this.mPlayBtn.getVisibility() == 0) {
                return;
            }
            final long timelineCurrentPosition = this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline);
            this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$e0Ps2RMHC8dN8K3M_LBIwB-rhUc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onActiveChanged$3$BasicCroppingFragment(timelineCurrentPosition);
                }
            });
            this.mPlayBtn.setVisibility(4);
            return;
        }
        this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$00OkyaYiWqqPSq8crbwcAvOpQjk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onActiveChanged$4$BasicCroppingFragment();
            }
        });
    }

    public /* synthetic */ void lambda$onActiveChanged$3$BasicCroppingFragment(long j) {
        this.mStreamingContext.playbackTimeline(this.mTimeline, j, -1L, 1, true, 8);
    }

    public /* synthetic */ void lambda$onActiveChanged$4$BasicCroppingFragment() {
        this.mStreamingContext.stop();
    }

    private void updateTransform2DFx(NvsVideoTrack nvsVideoTrack, double d, double d2, double d3, double d4) {
        int clipCount = nvsVideoTrack.getClipCount();
        for (int i = 0; i < clipCount; i++) {
            NvsVideoClip clipByIndex = nvsVideoTrack.getClipByIndex(i);
            int fxCount = clipByIndex.getFxCount();
            int i2 = 0;
            while (true) {
                if (i2 < fxCount) {
                    NvsVideoFx fxByIndex = clipByIndex.getFxByIndex(i2);
                    if (fxByIndex.getVideoFxType() == 0 && fxByIndex.getBuiltinVideoFxName().equals(MeiShePreviewPlayer.TRANSFORM_TAG)) {
                        fxByIndex.setFloatVal("Scale X", d);
                        fxByIndex.setFloatVal("Scale Y", d);
                        fxByIndex.setFloatVal("Rotation", d2);
                        fxByIndex.setFloatVal("Trans X", d3);
                        fxByIndex.setFloatVal("Trans Y", d4);
                        break;
                    }
                    i2++;
                }
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(final SeekBar seekBar, int i, boolean z) {
        if (this.seekBarSettable) {
            return;
        }
        setTime(false, ((this.mTimeline.getDuration() / 1000) / 100) * i);
        this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.BasicCroppingFragment.3
            @Override // java.lang.Runnable
            public void run() {
                BasicCroppingFragment.this.mStreamingContext.seekTimeline(BasicCroppingFragment.this.mTimeline, (BasicCroppingFragment.this.mTimeline.getDuration() / 100) * seekBar.getProgress(), 1, 0);
            }
        });
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.seekBarSettable = false;
        if (this.mPlayBtn.getVisibility() == 4) {
            this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$vhY3p7xJFy3nczvkzGkZ2l84Swk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStartTrackingTouch$5$BasicCroppingFragment();
                }
            });
        }
    }

    public /* synthetic */ void lambda$onStartTrackingTouch$5$BasicCroppingFragment() {
        this.mStreamingContext.stop();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.seekBarSettable = true;
        NvsStreamingContext nvsStreamingContext = this.mStreamingContext;
        NvsTimeline nvsTimeline = this.mTimeline;
        nvsStreamingContext.seekTimeline(nvsTimeline, (nvsTimeline.getDuration() / 100) * seekBar.getProgress(), 1, 0);
        if (this.mPlayBtn.getVisibility() == 4) {
            final long timelineCurrentPosition = this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline);
            this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStopTrackingTouch$6$BasicCroppingFragment(timelineCurrentPosition);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onStopTrackingTouch$6$BasicCroppingFragment(long j) {
        this.mStreamingContext.playbackTimeline(this.mTimeline, j, -1L, 1, true, 8);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 12345 && i2 == -1 && intent != null && intent.getBooleanExtra("success", false)) {
            this.isDynamic = true;
            this.nvsVideoTrack.removeAllClips();
            String stringExtra = intent.getStringExtra("result");
            this.dynamicCroppingPath = stringExtra;
            addVideoClip(stringExtra);
            NvsVideoClip nvsVideoClip = this.mVideoClip;
            if (nvsVideoClip == null) {
                NVToast.makeText(getContext(), R.string.not_support_dynamic_cropping_for_this_device, 0).show();
                confirmRestore();
                return;
            }
            nvsVideoClip.appendBuiltinFx(MeiShePreviewPlayer.TRANSFORM_TAG);
            this.mVideoWidth = this.mLiveWindow.getWidth();
            this.mVideoHeight = this.mLiveWindow.getHeight();
            this.ratio = (this.mVideoWidth * 1.0f) / this.mVideoHeight;
            this.totalScale = 1.0f;
            this.totalHorizScroll = 0.0f;
            this.totalVerticalScroll = 0.0f;
            this.mStreamingContext.playbackTimeline(this.mTimeline, 0L, -1L, 1, true, 8);
            this.mPlayBtn.setVisibility(4);
        }
    }

    private void setTime(boolean z) {
        setTime(z, (z ? this.mTimeline.getDuration() : this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline)) / 1000);
    }

    private void setTime(boolean z, long j) {
        if (j > 0) {
            long j2 = j / 1000;
            int i = (int) ((j2 / 60) % 60);
            int i2 = (int) (j2 % 60);
            int i3 = (int) ((j % 1000) / 100);
            StringBuilder sb = new StringBuilder();
            sb.append(i);
            sb.append(":");
            if (i2 < 10) {
                sb.append("0");
            }
            sb.append(i2);
            sb.append(":");
            sb.append(i3);
            if (z) {
                this.mTotalView.setText(sb.toString());
                return;
            }
            this.mTimeView.setText(sb.toString());
            if (this.seekBarSettable) {
                this.mSeekBar.setProgress((int) ((j * 100.0f) / (this.mTimeline.getDuration() / 1000)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getVideoWidthAndHeight() {
        NvsAVFileInfo aVFileInfo = this.mStreamingContext.getAVFileInfo(this.nvsVideoTrack.getClipByIndex(0).getFilePath());
        int videoStreamRotation = aVFileInfo.getVideoStreamRotation(0);
        NvsSize videoStreamDimension = aVFileInfo.getVideoStreamDimension(0);
        if (videoStreamRotation == 0 || videoStreamRotation == 2) {
            this.mVideoWidth = videoStreamDimension.width;
            this.mVideoHeight = videoStreamDimension.height;
        } else {
            this.mVideoWidth = videoStreamDimension.height;
            this.mVideoHeight = videoStreamDimension.width;
        }
        int i = this.mVideoWidth;
        this.mOriginVideoWidth = i;
        int i2 = this.mVideoHeight;
        this.mOriginVideoHeight = i2;
        this.ratio = (i * 1.0f) / i2;
        if (aVFileInfo.getVideoStreamFrameRate(0).den != 0) {
            this.frameRate = (int) Math.ceil((r0.num * 1.0f) / r1);
        }
    }

    private void restoreVideo() {
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(R.string.cropping_restore);
        alertDialog.setCancelable(false);
        alertDialog.addButton(R.string.cancel, 0, new View.OnClickListener() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$8s_5TXYHniV6e6lRYhh-7814MAI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                alertDialog.cancel();
            }
        });
        alertDialog.addButton(R.string.restore, 0, new View.OnClickListener() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$KWbm14CmNgPAbQpdY63JicnbTqM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$restoreVideo$8$BasicCroppingFragment(view);
            }
        });
        alertDialog.show();
    }

    public /* synthetic */ void lambda$restoreVideo$8$BasicCroppingFragment(View view) {
        confirmRestore();
    }

    private void confirmRestore() {
        CroppingData croppingData = this.croppingData;
        boolean z = (croppingData == null || croppingData.orgVideoPath == null) ? false : true;
        if (this.isDynamic || z) {
            this.nvsVideoTrack.removeAllClips();
            addVideoClip(z ? this.croppingData.orgVideoPath : getStringParam(SOURCE_PATH));
            this.mVideoClip.appendBuiltinFx(MeiShePreviewPlayer.TRANSFORM_TAG);
            if (z) {
                getVideoWidthAndHeight();
            }
        }
        this.totalScale = 1.0f;
        this.totalVerticalScroll = 0.0f;
        this.totalHorizScroll = 0.0f;
        this.mVideoWidth = this.mOriginVideoWidth;
        this.mVideoHeight = this.mOriginVideoHeight;
        this.ratio = (this.mVideoWidth * 1.0f) / this.mVideoHeight;
        updateTransform2DFx(this.nvsVideoTrack, this.totalScale, 0.0d, this.totalHorizScroll, this.totalVerticalScroll);
        if (this.mRotateAngle != 0) {
            this.mRotateAngle = 0;
            this.mVideoClip.setExtraVideoRotation(this.mRotateAngle);
        }
        onColorSelected(COLORS[1], 1);
        this.mChangeBgBtn.setColor(COLORS[1]);
        this.mColorIndex = 1;
        this.isDynamic = false;
        this.dynamic = false;
        ColorPickerView colorPickerView = this.mColorPickerView;
        if (colorPickerView != null) {
            colorPickerView.setSelectedIndex(this.mColorIndex);
        }
    }

    private void compileVideo() {
        String stringParam;
        CroppingData croppingData = this.croppingData;
        String stringParam2 = croppingData != null ? croppingData.orgVideoPath : getStringParam(SOURCE_PATH);
        float f = this.totalScale;
        int extraVideoRotation = this.mVideoClip.getExtraVideoRotation();
        float f2 = this.totalHorizScroll;
        float f3 = this.totalVerticalScroll;
        String str = "assets:/bg_" + COLORS[this.mColorIndex] + ".png";
        boolean z = this.isDynamic || this.dynamic;
        if (this.isDynamic) {
            stringParam = getStringParam(DEST_PATH);
        } else {
            stringParam = this.dynamic ? getStringParam(SOURCE_PATH) : null;
        }
        CroppingData croppingData2 = new CroppingData(stringParam2, f, extraVideoRotation, f2, f3, str, z, stringParam, this.totalHorizScroll / this.mLiveWindow.getWidth(), this.totalVerticalScroll / this.mLiveWindow.getHeight());
        Intent intent = new Intent();
        intent.putExtra("success", true);
        intent.putExtra("croppingData", JacksonUtils.writeAsString(croppingData2));
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickPlayBtn() {
        if (this.mPlayBtn.getVisibility() == 0) {
            final long timelineCurrentPosition = this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline);
            if (this.videoPlayEnd) {
                this.videoPlayEnd = false;
                timelineCurrentPosition = 0;
            }
            this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$KcUnKvUvmUUyvNU-rzITp0tfJVs
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$clickPlayBtn$9$BasicCroppingFragment(timelineCurrentPosition);
                }
            });
            this.mPlayBtn.setVisibility(4);
            return;
        }
        this.mLiveWindow.post(new Runnable() { // from class: com.narvii.editor.cropping.basic.-$$Lambda$BasicCroppingFragment$8Adh7-seQI7-YrJDVULO2ezxjLg
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$clickPlayBtn$10$BasicCroppingFragment();
            }
        });
        this.mPlayBtn.setVisibility(0);
    }

    public /* synthetic */ void lambda$clickPlayBtn$9$BasicCroppingFragment(long j) {
        this.mStreamingContext.playbackTimeline(this.mTimeline, j, -1L, 1, true, 8);
    }

    public /* synthetic */ void lambda$clickPlayBtn$10$BasicCroppingFragment() {
        this.mStreamingContext.stop();
    }

    private void clickRotateBtn() {
        int extraVideoRotation = this.mVideoClip.getExtraVideoRotation();
        if (extraVideoRotation == 0) {
            this.mRotateAngle = 1;
            this.ratio = (this.mVideoHeight * 1.0f) / this.mVideoWidth;
        } else if (extraVideoRotation == 1) {
            this.mRotateAngle = 2;
            this.ratio = (this.mVideoWidth * 1.0f) / this.mVideoHeight;
        } else if (extraVideoRotation == 2) {
            this.mRotateAngle = 3;
            this.ratio = (this.mVideoHeight * 1.0f) / this.mVideoWidth;
        } else if (extraVideoRotation == 3) {
            this.mRotateAngle = 0;
            this.ratio = (this.mVideoWidth * 1.0f) / this.mVideoHeight;
        }
        this.mVideoClip.setExtraVideoRotation(this.mRotateAngle);
        seek();
    }

    private void clickBackgroundColorBtn() {
        this.mChangeBgBtn.setClickable(false);
        if (this.mColorPickerView == null) {
            this.mColorPickerView = new ColorPickerView(getContext());
            this.mColorPickerView.init(COLORS);
            this.mColorPickerView.setColorSelectedListener(this);
            this.mColorPickerView.setPickerCheckedListener(this);
        }
        this.mColorPickerView.setSelectedIndex(this.mColorIndex);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.mBottomView.getWidth(), (this.mBottomView.getHeight() - this.mBottomView.getPaddingBottom()) - this.mBottomView.getPaddingTop());
        this.mColorPickerView.setBackgroundColor(Color.parseColor("#2A2A2A"));
        this.mBottomView.addView(this.mColorPickerView, layoutParams);
    }

    private void seek() {
        if (this.mPlayBtn.getVisibility() == 0) {
            long timelineCurrentPosition = this.mStreamingContext.getTimelineCurrentPosition(this.mTimeline);
            if (this.mTimeline.getDuration() - timelineCurrentPosition < 150000) {
                timelineCurrentPosition = this.mTimeline.getDuration() - 150000;
            }
            this.mStreamingContext.seekTimeline(this.mTimeline, timelineCurrentPosition, 1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyCroppingData() {
        String stringParam = getStringParam("croppingData");
        if (stringParam == null) {
            return;
        }
        this.croppingData = (CroppingData) JacksonUtils.readAs(stringParam, CroppingData.class);
        this.totalScale = this.croppingData.getScale();
        this.mRotateAngle = this.croppingData.getRotateAngle();
        int i = this.mRotateAngle;
        if (i == 0 || i == 2) {
            this.ratio = (this.mVideoHeight * 1.0f) / this.mVideoWidth;
        } else {
            this.ratio = (this.mVideoWidth * 1.0f) / this.mVideoHeight;
        }
        this.totalHorizScroll = this.croppingData.getTransformX();
        this.totalVerticalScroll = this.croppingData.getTransformY();
        updateTransform2DFx(this.nvsVideoTrack, this.totalScale, 0.0d, this.totalHorizScroll, this.totalVerticalScroll);
        this.mVideoClip.setExtraVideoRotation(this.mRotateAngle);
        this.dynamic = this.croppingData.isDynamic();
        int i2 = 0;
        while (true) {
            if (i2 >= COLORS.length) {
                break;
            }
            if (TextUtils.equals("assets:/bg_" + COLORS[i2] + ".png", this.croppingData.bgColor)) {
                this.mColorIndex = i2;
                this.mChangeBgBtn.setColor(COLORS[this.mColorIndex]);
                break;
            }
            i2++;
        }
        changeBackgroundColor(this.croppingData.getBgColor());
    }

    private boolean checkSupportOpenGLES3() {
        EglCore eglCore = new EglCore(null, 3);
        int glVersion = eglCore.getGlVersion();
        eglCore.release();
        return glVersion >= 3;
    }

    private void addVideoClip(String str) {
        AVClipInfoPack aVClipInfoPack = this.activeClipInfo;
        if (aVClipInfoPack != null) {
            if (aVClipInfoPack.isTrimSectionValid()) {
                NvsVideoTrack nvsVideoTrack = this.nvsVideoTrack;
                AVClipInfoPack aVClipInfoPack2 = this.activeClipInfo;
                this.mVideoClip = nvsVideoTrack.addClip(str, 0L, aVClipInfoPack2.trimStartInMs * 1000, 1000 * aVClipInfoPack2.trimEndInMs);
            } else if (Utils.isJPG(str) || Utils.isPNG(str) || Utils.isBMP(str)) {
                this.mVideoClip = this.nvsVideoTrack.addClip(str, 0L, 0L, 5000000L);
            } else {
                this.mVideoClip = this.nvsVideoTrack.addClip(str, 0L);
            }
            NvsVideoClip nvsVideoClip = this.mVideoClip;
            if (nvsVideoClip != null) {
                nvsVideoClip.changeSpeed(this.activeClipInfo.speed);
            }
        }
    }
}
