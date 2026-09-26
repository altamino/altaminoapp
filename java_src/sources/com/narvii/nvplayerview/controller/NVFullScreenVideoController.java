package com.narvii.nvplayerview.controller;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EasyButton;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;
import com.safedk.android.utils.Logger;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes7.dex */
public class NVFullScreenVideoController implements IVideoController, View.OnClickListener, SeekBar.OnSeekBarChangeListener, View.OnTouchListener {
    private boolean animating;
    private ImageView backActionBar;
    private TextView currentTimeText;
    private FontAwesomeView fullScreenBar;
    private GestureDetector gestureDetector;
    private boolean inited;
    private SpinningView loadingView;
    private Context mContext;
    private RelativeLayout mControllerView;
    private LinearLayout mErrorView;
    private Handler mHandler;
    private int mOrientation;
    private FrameLayout mParentLayout;
    private INVPlayer mPlayer;
    private NVVideoView mVideoView;
    private ImageView miniImg;
    private FontAwesomeView optActionBar;
    private FrameLayout optionMenuContainer;
    private EasyButton playBtn;
    private boolean playing;
    private SeekBar progressSeekBar;
    private boolean seekBarTouching;
    private boolean showPIPEntry;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Timer f2558t = new Timer();
    private TextView totalTimeText;
    private View view;

    private class SingleTapConfirm extends GestureDetector.SimpleOnGestureListener {
        FrameLayout.LayoutParams params;

        private void setVideoBackgroundAlpha(float f, float f6) {
            int measuredWidth = NVFullScreenVideoController.this.mVideoView.getMeasuredWidth();
            int measuredHeight = NVFullScreenVideoController.this.mVideoView.getMeasuredHeight();
            NVFullScreenVideoController.this.mVideoView.setBackgroundColor(ColorUtils.o(ViewCompat.MEASURED_STATE_MASK, (int) ((1.0f - ((float) Math.sqrt(((double) ((f * f) + (f6 * f6))) / ((double) ((measuredWidth * measuredWidth) + (measuredHeight * measuredHeight)))))) * 255.0f)));
        }

        private SingleTapConfirm() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            NVFullScreenVideoController nVFullScreenVideoController = NVFullScreenVideoController.this;
            nVFullScreenVideoController.onClick(nVFullScreenVideoController.playBtn);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.params = (FrameLayout.LayoutParams) NVFullScreenVideoController.this.mVideoView.getContainer().getLayoutParams();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
            if (NVFullScreenVideoController.this.mOrientation == 2 || !NVFullScreenVideoController.this.animating) {
                return false;
            }
            if (NVFullScreenVideoController.this.mControllerView.getVisibility() != 4) {
                NVFullScreenVideoController.this.mControllerView.setVisibility(4);
            }
            float x6 = motionEvent2.getX() - motionEvent.getX();
            float y6 = motionEvent2.getY() - motionEvent.getY();
            if (x6 > 0.0f) {
                this.params.leftMargin = Math.abs((int) x6);
            } else {
                this.params.rightMargin = Math.abs((int) x6);
            }
            if (y6 > 0.0f) {
                this.params.topMargin = Math.abs((int) y6);
            } else {
                this.params.bottomMargin = Math.abs((int) y6);
            }
            NVFullScreenVideoController.this.mVideoView.getContainer().setLayoutParams(this.params);
            setVideoBackgroundAlpha(x6, y6);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            NVFullScreenVideoController nVFullScreenVideoController = NVFullScreenVideoController.this;
            nVFullScreenVideoController.onClick(nVFullScreenVideoController.mParentLayout);
            return true;
        }
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void closeVoice() {
        a.a(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public int getLayoutId() {
        return R.layout.activity_exo_full_screen_controller;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onActiveChanged(boolean z6) {
        a.d(this, z6);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPlayerStateChanged(boolean z6, int i10) {
        if (i10 == 1 || i10 == 2) {
            if (this.loadingView.getVisibility() != 0) {
                this.loadingView.setVisibility(0);
                this.playBtn.setVisibility(4);
            }
            if (this.mErrorView.getVisibility() == 0) {
                this.mErrorView.setVisibility(4);
                return;
            }
            return;
        }
        if (i10 == 3) {
            this.playing = z6;
            this.playBtn.setImageResource(z6 ? R.drawable.video_pause : R.drawable.video_play);
            if (this.loadingView.getVisibility() != 4) {
                this.loadingView.setVisibility(4);
                this.playBtn.setVisibility(0);
            }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i10, boolean z6) {
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onRenderedFirstFrame() {
        a.i(this);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.seekBarTouching = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.seekBarTouching = false;
        INVPlayer iNVPlayer = this.mPlayer;
        iNVPlayer.seekTo((iNVPlayer.getDuration() * ((long) seekBar.getProgress())) / ((long) seekBar.getMax()));
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void openVoice() {
        a.j(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setAnimating(boolean z6) {
        this.animating = z6;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setUIVisibility(int i10) {
        a.r(this, i10);
    }

    private void changeOrientation() {
        if (this.mOrientation == 2) {
            ((Activity) this.mContext).setRequestedOrientation(1);
        } else {
            ((Activity) this.mContext).setRequestedOrientation(6);
        }
    }

    private void enterPIPMode() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mParentLayout.setVisibility(4);
            ((Activity) this.mContext).enterPictureInPictureMode(d.a().build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterPIPSetting() {
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.mContext, new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS", Uri.parse("package:" + this.mContext.getPackageName())));
    }

    private void handleClickBack() {
        if (this.mOrientation == 2) {
            ((Activity) this.mContext).setRequestedOrientation(1);
        } else {
            ((Activity) this.mContext).finish();
        }
    }

    private boolean isPIPEnabled() {
        return Build.VERSION.SDK_INT >= 26 && ((AppOpsManager) this.mContext.getSystemService("appops")).checkOpNoThrow("android:picture_in_picture", Process.myUid(), this.mContext.getPackageName()) == 0;
    }

    private void setControllerVisibility() {
        if (this.mControllerView.getVisibility() == 0) {
            this.mControllerView.setVisibility(4);
            this.mControllerView.startAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.fade_out));
        } else {
            this.mControllerView.setVisibility(0);
            this.mControllerView.startAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.fade_in));
        }
    }

    private void setTime(TextView textView, long j6) {
        if (j6 < 0) {
            textView.setText((CharSequence) null);
            return;
        }
        long j10 = j6 / 1000;
        int i10 = (int) (j10 / 3600);
        int i11 = (int) ((j10 / 60) % 60);
        int i12 = (int) (j10 % 60);
        if (i10 > 0) {
            textView.setText(String.format(Locale.US, "%d:%02d:%02d", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)));
        } else {
            textView.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(i11), Integer.valueOf(i12)));
        }
    }

    private void setupBtnFullscreen() {
        if (this.mOrientation == 2) {
            this.fullScreenBar.setText(R.string.ion_android_contract);
            this.fullScreenBar.setVisibility(0);
        } else {
            this.fullScreenBar.setText(R.string.ion_android_expand);
            this.fullScreenBar.setVisibility(0);
        }
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void destroy() {
        this.f2558t.cancel();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public int getProgress() {
        return this.progressSeekBar.getProgress();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void init() {
        if (this.inited) {
            return;
        }
        View viewInflate = LayoutInflater.from(this.mContext).inflate(getLayoutId(), (ViewGroup) null, false);
        this.view = viewInflate;
        this.mParentLayout = (FrameLayout) viewInflate.findViewById(R.id.parent);
        this.mControllerView = (RelativeLayout) this.view.findViewById(R.id.controllers);
        this.backActionBar = (ImageView) this.view.findViewById(R.id.actionbar_back);
        this.optActionBar = (FontAwesomeView) this.view.findViewById(R.id.actionbar_ops);
        this.currentTimeText = (TextView) this.view.findViewById(R.id.time_current);
        this.totalTimeText = (TextView) this.view.findViewById(R.id.time_total);
        this.progressSeekBar = (SeekBar) this.view.findViewById(R.id.seek_bar);
        ImageView imageView = (ImageView) this.view.findViewById(R.id.mini);
        this.miniImg = imageView;
        this.showPIPEntry = false;
        imageView.setVisibility(8);
        this.fullScreenBar = (FontAwesomeView) this.view.findViewById(R.id.video_fullscreen);
        this.playBtn = (EasyButton) this.view.findViewById(R.id.play);
        this.loadingView = (SpinningView) this.view.findViewById(R.id.video_loading);
        this.optionMenuContainer = (FrameLayout) this.view.findViewById(R.id.option_menu_container);
        this.mVideoView.addView(this.view);
        this.inited = true;
        this.playing = true;
        this.backActionBar.setOnClickListener(this);
        this.optActionBar.setOnClickListener(this);
        this.miniImg.setOnClickListener(this);
        this.fullScreenBar.setOnClickListener(this);
        this.playBtn.setOnClickListener(this);
        this.progressSeekBar.setOnSeekBarChangeListener(this);
        this.mHandler = new Handler(this.mContext.getMainLooper());
        this.mOrientation = this.mContext.getResources().getConfiguration().orientation;
        this.f2558t.scheduleAtFixedRate(new TimerTask() { // from class: com.narvii.nvplayerview.controller.NVFullScreenVideoController.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (NVFullScreenVideoController.this.playing) {
                    NVFullScreenVideoController.this.mHandler.post(new Runnable() { // from class: com.narvii.nvplayerview.controller.NVFullScreenVideoController.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NVFullScreenVideoController.this.progressSeekBar.setProgress(NVFullScreenVideoController.this.mPlayer.getDuration() != 0 ? (int) ((NVFullScreenVideoController.this.mPlayer.getCurrentPosition() * 100.0f) / NVFullScreenVideoController.this.mPlayer.getDuration()) : 0);
                            NVFullScreenVideoController.this.setCurrentTime();
                            NVFullScreenVideoController.this.setTotalTime();
                        }
                    });
                }
            }
        }, 0L, 1000L);
        this.mPlayer.setVolume(1.0f);
        this.gestureDetector = new GestureDetector(this.mContext, new SingleTapConfirm());
        this.mVideoView.setTouchListener(this);
        LinearLayout linearLayout = (LinearLayout) this.view.findViewById(R.id.video_error);
        this.mErrorView = linearLayout;
        linearLayout.setOnClickListener(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onOrientationChanged(int i10) {
        this.mOrientation = i10;
        setupBtnFullscreen();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPlayerError(NVVideoException nVVideoException) {
        if (this.mPlayer.isPlaying()) {
            return;
        }
        this.mErrorView.setVisibility(0);
        this.loadingView.setVisibility(4);
        if (nVVideoException.getFailType() != 1 || TextUtils.isEmpty(nVVideoException.getFailUrl())) {
            return;
        }
        YoutubeUtils.openYoutubeVideo(Utils.getNVContext(this.mContext), nVVideoException.getFailUrl());
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void pause() {
        if (this.mPlayer.isError()) {
            return;
        }
        this.mPlayer.setPlayWhenReady(false);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void resume() {
        if (this.mPlayer.isError()) {
            return;
        }
        this.mPlayer.setPlayWhenReady(true);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setCurrentTime() {
        setTime(this.currentTimeText, this.mPlayer.getCurrentPosition());
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setOptionMenu() {
        Context context = this.mContext;
        if (context instanceof NVActivity) {
            NVActivity nVActivity = (NVActivity) context;
            String stringParam = nVActivity.getStringParam("clz");
            if (TextUtils.isEmpty(stringParam) || TextUtils.isEmpty(nVActivity.getStringParam("media")) || nVActivity.getIntParam("__communityId") <= 0 || nVActivity.getBooleanParam("preview", false)) {
                return;
            }
            Fragment fragmentInstantiate = Fragment.instantiate(this.mContext, stringParam);
            Bundle bundle = new Bundle();
            bundle.putString("media", nVActivity.getStringParam("media"));
            bundle.putString("parent", nVActivity.getStringParam("parent"));
            bundle.putSerializable("parentClass", nVActivity.getIntent().getSerializableExtra("parentClass"));
            fragmentInstantiate.setArguments(bundle);
            this.optionMenuContainer.setVisibility(0);
            nVActivity.getSupportFragmentManager().q().b(R.id.option_menu_container, fragmentInstantiate).j();
        }
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setProgress(int i10) {
        this.progressSeekBar.setProgress(i10);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setTotalTime() {
        setTime(this.totalTimeText, this.mPlayer.getDuration());
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void start() {
        this.mPlayer.setPlayWhenReady(true);
    }

    public NVFullScreenVideoController(NVVideoView nVVideoView, Context context, INVPlayer iNVPlayer) {
        this.mVideoView = nVVideoView;
        this.mContext = context;
        this.mPlayer = iNVPlayer;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        INVPlayer iNVPlayer;
        int id = view.getId();
        if (id == R.id.actionbar_back) {
            handleClickBack();
            return;
        }
        if (id != R.id.actionbar_ops) {
            if (id == R.id.mini) {
                if (isPIPEnabled()) {
                    enterPIPMode();
                    return;
                }
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.mContext);
                aCMAlertDialog.setMessage(R.string.pip_permission);
                aCMAlertDialog.addButton(android.R.string.cancel, null);
                aCMAlertDialog.addButton(android.R.string.ok, new View.OnClickListener() { // from class: com.narvii.nvplayerview.controller.NVFullScreenVideoController.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        NVFullScreenVideoController.this.enterPIPSetting();
                    }
                });
                aCMAlertDialog.show();
                return;
            }
            if (id == R.id.video_fullscreen) {
                changeOrientation();
                return;
            }
            if (id == R.id.play) {
                boolean z6 = !this.playing;
                this.playing = z6;
                if (z6) {
                    start();
                    return;
                } else {
                    pause();
                    return;
                }
            }
            if (id == R.id.controllers) {
                setControllerVisibility();
                return;
            }
            if (id == R.id.parent) {
                setControllerVisibility();
            } else if (id == R.id.video_error && (iNVPlayer = this.mPlayer) != null && !iNVPlayer.isPlaying()) {
                this.mPlayer.retry();
            }
        }
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPressBack() {
        handleClickBack();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mVideoView.getContainer().getLayoutParams();
            float f = layoutParams.leftMargin;
            float f6 = layoutParams.rightMargin;
            float f7 = layoutParams.topMargin;
            float f10 = layoutParams.bottomMargin;
            if (f <= 100.0f && f6 <= 100.0f && f7 <= 100.0f && f10 <= 100.0f) {
                layoutParams.setMargins(0, 0, 0, 0);
                this.mVideoView.getContainer().setLayoutParams(layoutParams);
                this.mVideoView.setBackgroundColor(Color.parseColor("#ff000000"));
            } else {
                handleClickBack();
            }
        }
        return this.gestureDetector.onTouchEvent(motionEvent);
    }
}
