package com.narvii.nvplayerview.controller;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.PictureInPictureParams;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.support.v4.app.Fragment;
import android.support.v4.graphics.ColorUtils;
import android.support.v4.view.ViewCompat;
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
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.EasyButton;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes3.dex */
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
    private Timer t = new Timer();
    private TextView totalTimeText;
    private View view;

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void closeVoice() {
        IVideoController.CC.$default$closeVoice(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onActiveChanged(boolean z) {
        IVideoController.CC.$default$onActiveChanged(this, z);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void onRenderedFirstFrame() {
        IVideoController.CC.$default$onRenderedFirstFrame(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void openVoice() {
        IVideoController.CC.$default$openVoice(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public /* synthetic */ void setUIVisibility(int i) {
        IVideoController.CC.$default$setUIVisibility(this, i);
    }

    public NVFullScreenVideoController(NVVideoView nVVideoView, Context context, INVPlayer iNVPlayer) {
        this.mVideoView = nVVideoView;
        this.mContext = context;
        this.mPlayer = iNVPlayer;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public int getLayoutId() {
        return R.layout.activity_exo_full_screen_controller;
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void init() {
        if (this.inited) {
            return;
        }
        this.view = LayoutInflater.from(this.mContext).inflate(getLayoutId(), (ViewGroup) null, false);
        this.mParentLayout = (FrameLayout) this.view.findViewById(R.id.parent);
        this.mControllerView = (RelativeLayout) this.view.findViewById(R.id.controllers);
        this.backActionBar = (ImageView) this.view.findViewById(R.id.actionbar_back);
        this.optActionBar = (FontAwesomeView) this.view.findViewById(R.id.actionbar_ops);
        this.currentTimeText = (TextView) this.view.findViewById(R.id.time_current);
        this.totalTimeText = (TextView) this.view.findViewById(R.id.time_total);
        this.progressSeekBar = (SeekBar) this.view.findViewById(R.id.seek_bar);
        this.miniImg = (ImageView) this.view.findViewById(R.id.mini);
        this.showPIPEntry = false;
        this.miniImg.setVisibility(this.showPIPEntry ? 0 : 8);
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
        this.t.scheduleAtFixedRate(new TimerTask() { // from class: com.narvii.nvplayerview.controller.NVFullScreenVideoController.1
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
        this.mErrorView = (LinearLayout) this.view.findViewById(R.id.video_error);
        this.mErrorView.setOnClickListener(this);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setProgress(int i) {
        this.progressSeekBar.setProgress(i);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public int getProgress() {
        return this.progressSeekBar.getProgress();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void pause() {
        if (this.mPlayer.isError()) {
            return;
        }
        this.mPlayer.setPlayWhenReady(false);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void start() {
        this.mPlayer.setPlayWhenReady(true);
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
    public void setTotalTime() {
        setTime(this.totalTimeText, this.mPlayer.getDuration());
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void destroy() {
        this.t.cancel();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPlayerStateChanged(boolean z, int i) {
        if (i == 1 || i == 2) {
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
        if (i == 3) {
            this.playing = z;
            this.playBtn.setImageResource(this.playing ? R.drawable.video_pause : R.drawable.video_play);
            if (this.loadingView.getVisibility() != 4) {
                this.loadingView.setVisibility(4);
                this.playBtn.setVisibility(0);
            }
        }
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
            nVActivity.getSupportFragmentManager().beginTransaction().add(R.id.option_menu_container, fragmentInstantiate).commit();
        }
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onOrientationChanged(int i) {
        this.mOrientation = i;
        setupBtnFullscreen();
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void onPressBack() {
        handleClickBack();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        INVPlayer iNVPlayer;
        int id = view.getId();
        if (id == R.id.actionbar_back) {
            handleClickBack();
            return;
        }
        if (id == R.id.actionbar_ops) {
            return;
        }
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
            this.playing = !this.playing;
            if (this.playing) {
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
        } else {
            if (id != R.id.video_error || (iNVPlayer = this.mPlayer) == null || iNVPlayer.isPlaying()) {
                return;
            }
            this.mPlayer.retry();
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.seekBarTouching = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.seekBarTouching = false;
        INVPlayer iNVPlayer = this.mPlayer;
        iNVPlayer.seekTo((iNVPlayer.getDuration() * seekBar.getProgress()) / seekBar.getMax());
    }

    private void setTime(TextView textView, long j) {
        if (j < 0) {
            textView.setText((CharSequence) null);
            return;
        }
        long j2 = j / 1000;
        int i = (int) (j2 / 3600);
        int i2 = (int) ((j2 / 60) % 60);
        int i3 = (int) (j2 % 60);
        if (i > 0) {
            textView.setText(String.format(Locale.US, "%d:%02d:%02d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        } else {
            textView.setText(String.format(Locale.US, "%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    private boolean isPIPEnabled() {
        return Build.VERSION.SDK_INT >= 26 && ((AppOpsManager) this.mContext.getSystemService("appops")).checkOpNoThrow("android:picture_in_picture", Process.myUid(), this.mContext.getPackageName()) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterPIPSetting() {
        this.mContext.startActivity(new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS", Uri.parse("package:" + this.mContext.getPackageName())));
    }

    private void enterPIPMode() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mParentLayout.setVisibility(4);
            ((Activity) this.mContext).enterPictureInPictureMode(new PictureInPictureParams.Builder().build());
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

    private void handleClickBack() {
        if (this.mOrientation == 2) {
            ((Activity) this.mContext).setRequestedOrientation(1);
        } else {
            ((Activity) this.mContext).finish();
        }
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

    private void changeOrientation() {
        if (this.mOrientation == 2) {
            ((Activity) this.mContext).setRequestedOrientation(1);
        } else {
            ((Activity) this.mContext).setRequestedOrientation(6);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && Build.VERSION.SDK_INT >= 23) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mVideoView.getContainer().getLayoutParams();
            float f = layoutParams.leftMargin;
            float f2 = layoutParams.rightMargin;
            float f3 = layoutParams.topMargin;
            float f4 = layoutParams.bottomMargin;
            if (f > 100.0f || f2 > 100.0f || f3 > 100.0f || f4 > 100.0f) {
                handleClickBack();
            } else {
                layoutParams.setMargins(0, 0, 0, 0);
                this.mVideoView.getContainer().setLayoutParams(layoutParams);
                this.mVideoView.setBackgroundColor(Color.parseColor("#ff000000"));
            }
        }
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    @Override // com.narvii.nvplayerview.controller.IVideoController
    public void setAnimating(boolean z) {
        this.animating = z;
    }

    private class SingleTapConfirm extends GestureDetector.SimpleOnGestureListener {
        FrameLayout.LayoutParams params;

        private SingleTapConfirm() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.params = (FrameLayout.LayoutParams) NVFullScreenVideoController.this.mVideoView.getContainer().getLayoutParams();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            NVFullScreenVideoController nVFullScreenVideoController = NVFullScreenVideoController.this;
            nVFullScreenVideoController.onClick(nVFullScreenVideoController.mParentLayout);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            NVFullScreenVideoController nVFullScreenVideoController = NVFullScreenVideoController.this;
            nVFullScreenVideoController.onClick(nVFullScreenVideoController.playBtn);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (NVFullScreenVideoController.this.mOrientation == 2 || !NVFullScreenVideoController.this.animating || Build.VERSION.SDK_INT < 23) {
                return false;
            }
            if (NVFullScreenVideoController.this.mControllerView.getVisibility() != 4) {
                NVFullScreenVideoController.this.mControllerView.setVisibility(4);
            }
            float x = motionEvent2.getX() - motionEvent.getX();
            float y = motionEvent2.getY() - motionEvent.getY();
            if (x > 0.0f) {
                this.params.leftMargin = Math.abs((int) x);
            } else {
                this.params.rightMargin = Math.abs((int) x);
            }
            if (y > 0.0f) {
                this.params.topMargin = Math.abs((int) y);
            } else {
                this.params.bottomMargin = Math.abs((int) y);
            }
            NVFullScreenVideoController.this.mVideoView.getContainer().setLayoutParams(this.params);
            setVideoBackgroundAlpha(x, y);
            return true;
        }

        private void setVideoBackgroundAlpha(float f, float f2) {
            double d = (f * f) + (f2 * f2);
            int measuredWidth = NVFullScreenVideoController.this.mVideoView.getMeasuredWidth();
            int measuredHeight = NVFullScreenVideoController.this.mVideoView.getMeasuredHeight();
            double d2 = (measuredWidth * measuredWidth) + (measuredHeight * measuredHeight);
            Double.isNaN(d);
            Double.isNaN(d2);
            NVFullScreenVideoController.this.mVideoView.setBackgroundColor(ColorUtils.setAlphaComponent(ViewCompat.MEASURED_STATE_MASK, (int) ((1.0f - ((float) Math.sqrt(d / d2))) * 255.0f)));
        }
    }
}
