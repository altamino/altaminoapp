package com.narvii.chat.screenroom.widgets;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v4.view.GravityCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import com.narvii.amino.R;
import com.narvii.app.IPermissionResultDispatcher;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.broadcast.DeliveryTimePickerFragment;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.screenroom.MediaPlayerControl;
import com.narvii.chat.screenroom.PlayActionListener;
import com.narvii.chat.screenroom.SRHostStatusListener;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.screenroom.VideoButtonClickListener;
import com.narvii.chat.screenroom.VideoPlayListener;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.model.PlayList;
import com.narvii.model.PlayListItem;
import com.narvii.permisson.NVPermission;
import com.narvii.permisson.PermissionListener;
import com.narvii.permisson.PermissionUtils;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.EventDispatcher;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.VerticalSeekBar;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Locale;

/* loaded from: classes2.dex */
public class SRVideoController extends FrameLayout implements VideoController, VideoPlayListener, NVViewPager.ScrollCheckListener, SRHostStatusListener, PermissionListener {
    private static final int sDefaultTimeout = 3000;
    View bottomGradient;
    private View controllerBottomContainer;
    public boolean isHost;
    public boolean isVolumeDragging;
    boolean landScape;
    private final Context mContext;
    private TextView mCurrentTime;
    private boolean mDragging;
    private TextView mEndTime;
    private final Runnable mFadeOut;
    StringBuilder mFormatBuilder;
    Formatter mFormatter;
    public ImageView mFullscreen;
    private final View.OnLayoutChangeListener mLayoutChangeListener;
    private ImageView mNextButton;
    private ImageView mPauseButton;
    private final View.OnClickListener mPauseListener;
    private MediaPlayerControl mPlayer;
    ImageView mPlaylistButton;
    private ImageView mPrevButton;
    private ProgressBar mProgress;
    private final SeekBar.OnSeekBarChangeListener mSeekListener;
    private final Runnable mShowProgress;
    private boolean mShowing;
    private final View.OnTouchListener mTouchListener;
    OnUserSeekPositionListener onSeekPositionChangedListener;
    OnSizeChangedListener onSizeChangedListener;
    PlayActionListener playActionListener;
    public View playButtonsLayout;
    View progressLayout;
    public View root;
    public ScreenRoomService screenRoomService;
    View statusBarPlaceholder;
    View topGradient;
    public VerticalSeekBar verticalSeekBar;
    VideoButtonClickListener videoButtonClickListener;
    double videoDuration;
    public TextView videoName;
    public ImageView videoPlayingIcon;
    TextView videoTimeProgress;
    LinearLayout videoTimeProgressContainer;
    EventDispatcher<VideoControllerVisibleChangeListener> visibleChangeEventDispatcher;
    public ImageView volume;
    View volumeWrapper;

    public interface OnSizeChangedListener {
        void onSizeChanged(int i, int i2);
    }

    public interface OnUserSeekPositionListener {
        void onUserSeeked();
    }

    public interface VideoControllerVisibleChangeListener {
        void onVideoControllerVisibleChanged(boolean z);
    }

    static float gainToVolume(float f) {
        return f;
    }

    static float volumeToGain(float f) {
        return f;
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onBuffering(boolean z) {
    }

    @Override // com.narvii.chat.screenroom.SRHostStatusListener
    public void onHostMicIndicatorLevelChanged(float f) {
    }

    @Override // com.narvii.chat.screenroom.SRHostStatusListener
    public void onHostMutedChanged(boolean z) {
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onUserSeeked(boolean z) {
    }

    @Override // com.narvii.widget.NVViewPager.ScrollCheckListener
    public boolean isScrolling() {
        return this.mDragging || this.isVolumeDragging;
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        if (i == 202) {
            doPauseResume();
        }
    }

    @Override // com.narvii.permisson.PermissionListener
    public void onPermissionDenied(int i, boolean z, ArrayList<String> arrayList) {
        if (z) {
            NVPermission.showDeniedDialog(getContext());
        }
    }

    public void addControllerVisibleChangeListener(VideoControllerVisibleChangeListener videoControllerVisibleChangeListener) {
        this.visibleChangeEventDispatcher.addListener(videoControllerVisibleChangeListener);
    }

    public void removeControllerVisibleChangeListener(VideoControllerVisibleChangeListener videoControllerVisibleChangeListener) {
        this.visibleChangeEventDispatcher.removeListener(videoControllerVisibleChangeListener);
    }

    public void onPlayItemChangedForViewer(PlayListItem playListItem) {
        if (playListItem != null) {
            this.videoName.setText(playListItem.title);
        } else {
            this.videoName.setText((CharSequence) null);
        }
        this.videoDuration = playListItem == null ? 0.0d : playListItem.duration;
        this.videoTimeProgress.setText((CharSequence) null);
        this.videoPlayingIcon.setVisibility(8);
    }

    public void setOnSeekPositionChangedListener(OnUserSeekPositionListener onUserSeekPositionListener) {
        this.onSeekPositionChangedListener = onUserSeekPositionListener;
    }

    private class SeekbarTouchArea implements View.OnTouchListener {
        private SeekbarTouchArea() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float f;
            if (SRVideoController.this.mProgress != null && SRVideoController.this.mProgress.getVisibility() == 0) {
                Rect rect = new Rect();
                SRVideoController.this.mProgress.getHitRect(rect);
                if (motionEvent.getY() >= rect.top - Utils.dpToPx(SRVideoController.this.getContext(), 10.0f) && motionEvent.getY() <= rect.bottom + Utils.dpToPx(SRVideoController.this.getContext(), 10.0f)) {
                    float fHeight = rect.top + (rect.height() / 2);
                    float x = motionEvent.getX() - rect.left;
                    if (x < 0.0f) {
                        f = 0.0f;
                    } else {
                        f = x > ((float) rect.width()) ? rect.width() : x;
                    }
                    return SRVideoController.this.mProgress.onTouchEvent(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), motionEvent.getAction(), f, fHeight, motionEvent.getMetaState()));
                }
            }
            return false;
        }
    }

    public void setPlayActionListener(PlayActionListener playActionListener) {
        this.playActionListener = playActionListener;
    }

    public SRVideoController(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(context, attributeSet);
        this.mShowing = true;
        this.visibleChangeEventDispatcher = new EventDispatcher<>();
        this.mLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                boolean unused = SRVideoController.this.mShowing;
            }
        };
        this.mTouchListener = new View.OnTouchListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || !SRVideoController.this.mShowing) {
                    return false;
                }
                SRVideoController.this.hide();
                return false;
            }
        };
        this.mFadeOut = new Runnable() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.11
            @Override // java.lang.Runnable
            public void run() {
                SRVideoController.this.hide();
            }
        };
        this.mShowProgress = new Runnable() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.12
            @Override // java.lang.Runnable
            public void run() {
                int progress = SRVideoController.this.setProgress();
                if (SRVideoController.this.mDragging || !SRVideoController.this.mShowing || SRVideoController.this.mPlayer == null || !SRVideoController.this.mPlayer.isPlaying()) {
                    return;
                }
                SRVideoController sRVideoController = SRVideoController.this;
                sRVideoController.postDelayed(sRVideoController.mShowProgress, 1000 - (progress % 1000));
            }
        };
        this.mPauseListener = new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SRVideoController.this.doPauseResume();
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.14
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                SRVideoController.this.show(DeliveryTimePickerFragment.ONE_HOUR);
                SRVideoController.this.mDragging = true;
                SRVideoController sRVideoController = SRVideoController.this;
                sRVideoController.removeCallbacks(sRVideoController.mShowProgress);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (SRVideoController.this.mPlayer != null && z) {
                    int duration = (int) ((SRVideoController.this.mPlayer.getDuration() * i) / 1000);
                    SRVideoController.this.mPlayer.seekTo(duration);
                    OnUserSeekPositionListener onUserSeekPositionListener = SRVideoController.this.onSeekPositionChangedListener;
                    if (onUserSeekPositionListener != null) {
                        onUserSeekPositionListener.onUserSeeked();
                    }
                    if (SRVideoController.this.mCurrentTime != null) {
                        SRVideoController.this.mCurrentTime.setText(SRVideoController.this.stringForTime(duration));
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                SRVideoController.this.mDragging = false;
                SRVideoController.this.setProgress();
                SRVideoController.this.updatePausePlay();
                SRVideoController.this.show();
                SRVideoController sRVideoController = SRVideoController.this;
                sRVideoController.post(sRVideoController.mShowProgress);
            }
        };
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SRVideoController);
        this.isHost = typedArrayObtainStyledAttributes.getBoolean(0, true);
        typedArrayObtainStyledAttributes.recycle();
        FrameLayout.inflate(getContext(), com.narvii.amino.mastes.R.layout.sr_media_controller, this);
        initControllerView();
        this.screenRoomService = (ScreenRoomService) Utils.getNVContext(getContext()).getService("screenRoom");
    }

    public void setLandScape(boolean z) throws Resources.NotFoundException {
        this.landScape = z;
        updateViews();
    }

    public void setVideoButtonClickListener(VideoButtonClickListener videoButtonClickListener) {
        this.videoButtonClickListener = videoButtonClickListener;
    }

    public SRVideoController(Context context, boolean z) {
        super(context);
        this.mShowing = true;
        this.visibleChangeEventDispatcher = new EventDispatcher<>();
        this.mLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                boolean unused = SRVideoController.this.mShowing;
            }
        };
        this.mTouchListener = new View.OnTouchListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0 || !SRVideoController.this.mShowing) {
                    return false;
                }
                SRVideoController.this.hide();
                return false;
            }
        };
        this.mFadeOut = new Runnable() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.11
            @Override // java.lang.Runnable
            public void run() {
                SRVideoController.this.hide();
            }
        };
        this.mShowProgress = new Runnable() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.12
            @Override // java.lang.Runnable
            public void run() {
                int progress = SRVideoController.this.setProgress();
                if (SRVideoController.this.mDragging || !SRVideoController.this.mShowing || SRVideoController.this.mPlayer == null || !SRVideoController.this.mPlayer.isPlaying()) {
                    return;
                }
                SRVideoController sRVideoController = SRVideoController.this;
                sRVideoController.postDelayed(sRVideoController.mShowProgress, 1000 - (progress % 1000));
            }
        };
        this.mPauseListener = new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SRVideoController.this.doPauseResume();
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.14
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                SRVideoController.this.show(DeliveryTimePickerFragment.ONE_HOUR);
                SRVideoController.this.mDragging = true;
                SRVideoController sRVideoController = SRVideoController.this;
                sRVideoController.removeCallbacks(sRVideoController.mShowProgress);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z2) {
                if (SRVideoController.this.mPlayer != null && z2) {
                    int duration = (int) ((SRVideoController.this.mPlayer.getDuration() * i) / 1000);
                    SRVideoController.this.mPlayer.seekTo(duration);
                    OnUserSeekPositionListener onUserSeekPositionListener = SRVideoController.this.onSeekPositionChangedListener;
                    if (onUserSeekPositionListener != null) {
                        onUserSeekPositionListener.onUserSeeked();
                    }
                    if (SRVideoController.this.mCurrentTime != null) {
                        SRVideoController.this.mCurrentTime.setText(SRVideoController.this.stringForTime(duration));
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                SRVideoController.this.mDragging = false;
                SRVideoController.this.setProgress();
                SRVideoController.this.updatePausePlay();
                SRVideoController.this.show();
                SRVideoController sRVideoController = SRVideoController.this;
                sRVideoController.post(sRVideoController.mShowProgress);
            }
        };
        this.mContext = context;
    }

    public SRVideoController(Context context) {
        this(context, true);
    }

    @Override // com.narvii.chat.screenroom.widgets.VideoController
    public void setMediaPlayer(MediaPlayerControl mediaPlayerControl) {
        this.mPlayer = mediaPlayerControl;
        updatePausePlay();
        if (this.mPlayer == null) {
            show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestOrientation(int i) {
        VideoButtonClickListener videoButtonClickListener = this.videoButtonClickListener;
        if (videoButtonClickListener != null) {
            videoButtonClickListener.requestOrientation(i);
        }
    }

    public void setVolumeWrapper(View view) {
        this.volumeWrapper = view;
    }

    public void setOnSizeChangedListener(OnSizeChangedListener onSizeChangedListener) {
        this.onSizeChangedListener = onSizeChangedListener;
    }

    private void initControllerView() throws Resources.NotFoundException {
        this.root = findViewById(com.narvii.amino.mastes.R.id.video_controller_root);
        this.mContext.getResources();
        this.mPauseButton = (ImageView) findViewById(com.narvii.amino.mastes.R.id.pause);
        ImageView imageView = this.mPauseButton;
        if (imageView != null) {
            imageView.requestFocus();
            this.mPauseButton.setOnClickListener(this.mPauseListener);
        }
        this.progressLayout = findViewById(com.narvii.amino.mastes.R.id.progress_layout);
        this.statusBarPlaceholder = findViewById(com.narvii.amino.mastes.R.id.status_bar_placeholder);
        this.playButtonsLayout = findViewById(com.narvii.amino.mastes.R.id.play_buttons_layout);
        this.mPlaylistButton = (ImageView) findViewById(com.narvii.amino.mastes.R.id.playlist);
        this.mPlaylistButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VideoButtonClickListener videoButtonClickListener = SRVideoController.this.videoButtonClickListener;
                if (videoButtonClickListener != null) {
                    videoButtonClickListener.openPlaylist();
                }
            }
        });
        this.topGradient = findViewById(com.narvii.amino.mastes.R.id.top_gradient);
        this.bottomGradient = findViewById(com.narvii.amino.mastes.R.id.bottom_gradient);
        this.mNextButton = (ImageView) findViewById(com.narvii.amino.mastes.R.id.next);
        this.mNextButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayActionListener playActionListener = SRVideoController.this.playActionListener;
                if (playActionListener != null) {
                    playActionListener.playNext();
                }
            }
        });
        this.mPrevButton = (ImageView) findViewById(com.narvii.amino.mastes.R.id.prev);
        this.mPrevButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PlayActionListener playActionListener = SRVideoController.this.playActionListener;
                if (playActionListener != null) {
                    playActionListener.playPrev();
                }
            }
        });
        this.controllerBottomContainer = findViewById(com.narvii.amino.mastes.R.id.controller_bottom_container);
        this.mProgress = (ProgressBar) findViewById(com.narvii.amino.mastes.R.id.progress_bar);
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            if (progressBar instanceof SeekBar) {
                ((SeekBar) progressBar).setOnSeekBarChangeListener(this.mSeekListener);
            }
            this.mProgress.setMax(1000);
            if (this.mProgress.getParent() instanceof View) {
                ((View) this.mProgress.getParent()).setOnTouchListener(new SeekbarTouchArea());
            }
        }
        this.videoName = (TextView) findViewById(com.narvii.amino.mastes.R.id.video_name);
        this.videoPlayingIcon = (ImageView) findViewById(com.narvii.amino.mastes.R.id.video_playing_icon);
        this.videoPlayingIcon.setImageDrawable(((GifLoader) Utils.getNVContext(getContext()).getService("gifLoader")).getLocalGifDrawable("assets://media_playing.gif"));
        this.videoTimeProgress = (TextView) findViewById(com.narvii.amino.mastes.R.id.video_time_progress);
        this.videoTimeProgressContainer = (LinearLayout) findViewById(com.narvii.amino.mastes.R.id.video_time_progress_container);
        this.mFullscreen = (ImageView) findViewById(com.narvii.amino.mastes.R.id.fullscreen);
        updateViews();
        this.mEndTime = (TextView) findViewById(com.narvii.amino.mastes.R.id.time);
        this.mCurrentTime = (TextView) findViewById(com.narvii.amino.mastes.R.id.time_current);
        this.mFormatBuilder = new StringBuilder();
        this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
        this.volume = (ImageView) findViewById(com.narvii.amino.mastes.R.id.volume);
        ViewUtils.show(this.volume, this.isHost);
        this.volume.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (SRVideoController.this.volumeWrapper.getVisibility() == 0) {
                    SRVideoController.this.volumeWrapper.setVisibility(4);
                    return;
                }
                if (SRVideoController.this.volume.isShown()) {
                    SRVideoController sRVideoController = SRVideoController.this;
                    if (sRVideoController.verticalSeekBar == null) {
                        sRVideoController.verticalSeekBar = (VerticalSeekBar) sRVideoController.volumeWrapper.findViewById(com.narvii.amino.mastes.R.id.volume_controller);
                        int iDpToPx = (int) Utils.dpToPx(SRVideoController.this.getContext(), 12.0f);
                        int i = iDpToPx / 2;
                        SRVideoController.this.verticalSeekBar.setPadding(iDpToPx, i, iDpToPx, i);
                        SRVideoController.this.verticalSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.6.1
                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                                SRVideoController.this.screenRoomService.setMediaVolume(SRVideoController.volumeToGain((i2 * 1.0f) / seekBar.getMax()));
                                SRVideoController.this.updateVolumeIcon();
                            }

                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public void onStartTrackingTouch(SeekBar seekBar) {
                                SRVideoController.this.show(DeliveryTimePickerFragment.ONE_HOUR);
                                SRVideoController.this.isVolumeDragging = true;
                            }

                            @Override // android.widget.SeekBar.OnSeekBarChangeListener
                            public void onStopTrackingTouch(SeekBar seekBar) {
                                SRVideoController.this.show();
                                SRVideoController.this.isVolumeDragging = false;
                            }
                        });
                    }
                    SRVideoController sRVideoController2 = SRVideoController.this;
                    sRVideoController2.verticalSeekBar.setProgress((int) (SRVideoController.gainToVolume(sRVideoController2.screenRoomService.getMediaVolume()) * SRVideoController.this.verticalSeekBar.getMax()));
                    SRVideoController.this.volumeWrapper.setVisibility(0);
                }
            }
        });
        updateVolumeIcon();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVolumeIcon() {
        if (this.volume == null) {
            return;
        }
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        this.volume.setImageResource((mediaPlayerControl == null ? 1.0f : mediaPlayerControl.getVolume()) == 0.0f ? com.narvii.amino.mastes.R.drawable.ic_media_volume_silence : com.narvii.amino.mastes.R.drawable.ic_media_controller_volume);
    }

    protected void updateViews() throws Resources.NotFoundException {
        ImageView imageView = this.mFullscreen;
        if (imageView == null) {
            return;
        }
        imageView.setVisibility(0);
        this.mFullscreen.setImageResource(this.landScape ? com.narvii.amino.mastes.R.drawable.selector_sr_fullscreen_exit : com.narvii.amino.mastes.R.drawable.selector_sr_fullscreen);
        this.mFullscreen.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SRVideoController sRVideoController = SRVideoController.this;
                if (sRVideoController.landScape) {
                    sRVideoController.requestOrientation(1);
                } else {
                    sRVideoController.requestOrientation(0);
                }
            }
        });
        ViewUtils.show(this.statusBarPlaceholder, this.landScape);
        ViewGroup.LayoutParams layoutParams = this.topGradient.getLayoutParams();
        Resources resources = getContext().getResources();
        boolean z = this.landScape;
        int i = com.narvii.amino.mastes.R.dimen.sr_gradient_height;
        layoutParams.height = resources.getDimensionPixelSize(z ? com.narvii.amino.mastes.R.dimen.sr_gradient_height_top_landscape : com.narvii.amino.mastes.R.dimen.sr_gradient_height);
        this.topGradient.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = this.bottomGradient.getLayoutParams();
        Resources resources2 = getContext().getResources();
        if (this.landScape) {
            i = com.narvii.amino.mastes.R.dimen.sr_gradient_height_bottom_landscape;
        }
        layoutParams2.height = resources2.getDimensionPixelSize(i);
        this.bottomGradient.setLayoutParams(layoutParams2);
        if (this.isHost) {
            this.videoTimeProgressContainer.setVisibility(8);
        } else {
            findViewById(com.narvii.amino.mastes.R.id.host_bottom_layout).setVisibility(8);
            this.videoTimeProgressContainer.setGravity((this.landScape ? GravityCompat.END : GravityCompat.START) | 16);
        }
        this.videoName.post(new Runnable() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.8
            @Override // java.lang.Runnable
            public void run() {
                TextView textView = SRVideoController.this.videoName;
                textView.setText(textView.getText());
            }
        });
        if (this.landScape) {
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.controllerBottomContainer.getLayoutParams();
            int dimensionPixelSize = getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.video_progress_landscape_margin_left);
            if (Utils.isRtl()) {
                layoutParams3.rightMargin = dimensionPixelSize;
                layoutParams3.leftMargin = 0;
            } else {
                layoutParams3.leftMargin = dimensionPixelSize;
                layoutParams3.rightMargin = 0;
            }
            this.controllerBottomContainer.setLayoutParams(layoutParams3);
            return;
        }
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.controllerBottomContainer.getLayoutParams();
        layoutParams4.leftMargin = 0;
        layoutParams4.rightMargin = 0;
        this.controllerBottomContainer.setLayoutParams(layoutParams4);
    }

    @Override // com.narvii.chat.screenroom.widgets.VideoController
    public void show() {
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if (mediaPlayerControl != null && mediaPlayerControl.isPlaying()) {
            show(3000);
        } else {
            show(Integer.MAX_VALUE);
        }
    }

    public void showAndAutoHide() {
        show(3000);
    }

    private void disableUnsupportedButtons() {
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if (mediaPlayerControl == null) {
            return;
        }
        try {
            if (this.mProgress == null || mediaPlayerControl.canSeekBackward() || this.mPlayer.canSeekForward()) {
                return;
            }
            this.mProgress.setEnabled(false);
        } catch (IncompatibleClassChangeError unused) {
        }
    }

    @Override // com.narvii.chat.screenroom.widgets.VideoController
    public void show(int i) {
        if (!this.mShowing) {
            setProgress();
            disableUnsupportedButtons();
            this.root.setVisibility(0);
            this.root.startAnimation(AnimationUtils.loadAnimation(getContext(), com.narvii.amino.mastes.R.anim.fade_in));
            if (this.landScape) {
                updateStatusBar(true);
            }
            this.mShowing = true;
        }
        this.visibleChangeEventDispatcher.dispatch(new Callback<VideoControllerVisibleChangeListener>() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.9
            @Override // com.narvii.util.Callback
            public void call(VideoControllerVisibleChangeListener videoControllerVisibleChangeListener) {
                videoControllerVisibleChangeListener.onVideoControllerVisibleChanged(SRVideoController.this.root.getVisibility() == 0);
            }
        });
        if (this.isHost) {
            if (this.mPlayer == null) {
                return;
            }
            updatePausePlay();
            post(this.mShowProgress);
        }
        if (i == Integer.MAX_VALUE) {
            removeCallbacks(this.mFadeOut);
        } else if (i != 0) {
            removeCallbacks(this.mFadeOut);
            postDelayed(this.mFadeOut, i);
        }
    }

    @Override // com.narvii.chat.screenroom.widgets.VideoController
    public boolean isShowing() {
        return this.mShowing;
    }

    @Override // com.narvii.chat.screenroom.widgets.VideoController
    public void hide() {
        if (this.mShowing) {
            try {
                this.root.setVisibility(4);
                this.root.startAnimation(AnimationUtils.loadAnimation(getContext(), com.narvii.amino.mastes.R.anim.fade_out));
                if (this.landScape) {
                    updateStatusBar(false);
                }
                removeCallbacks(this.mShowProgress);
                resetDragFlag();
            } catch (IllegalArgumentException unused) {
                Log.w("VideoController", "already removed");
            }
            View view = this.volumeWrapper;
            if (view != null) {
                view.setVisibility(4);
            }
            this.mShowing = false;
            this.visibleChangeEventDispatcher.dispatch(new Callback<VideoControllerVisibleChangeListener>() { // from class: com.narvii.chat.screenroom.widgets.SRVideoController.10
                @Override // com.narvii.util.Callback
                public void call(VideoControllerVisibleChangeListener videoControllerVisibleChangeListener) {
                    videoControllerVisibleChangeListener.onVideoControllerVisibleChanged(false);
                }
            });
        }
    }

    private void resetDragFlag() {
        this.mDragging = false;
        this.isVolumeDragging = false;
    }

    public void updateStatusBar(boolean z) {
        Window window;
        if (!(getContext() instanceof Activity) || (window = ((Activity) getContext()).getWindow()) == null || window.getDecorView() == null) {
            return;
        }
        if (!z) {
            window.getDecorView().setSystemUiVisibility(1284);
        } else {
            window.getDecorView().setSystemUiVisibility(1280);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String stringForTime(int i) {
        int i2 = i / 1000;
        int i3 = i2 % 60;
        int i4 = (i2 / 60) % 60;
        int i5 = i2 / InviteMembersFragment.SECOND_HOUR;
        this.mFormatBuilder.setLength(0);
        return i5 > 0 ? this.mFormatter.format("%d:%02d:%02d", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i3)).toString() : this.mFormatter.format("%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3)).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setProgress() {
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if (mediaPlayerControl == null || this.mDragging) {
            return 0;
        }
        int currentPosition = mediaPlayerControl.getCurrentPosition();
        int duration = this.mPlayer.getDuration();
        if (duration <= 0) {
            return 0;
        }
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            if (duration > 0) {
                progressBar.setProgress((int) ((currentPosition * 1000) / duration));
            }
            this.mProgress.setSecondaryProgress(this.mPlayer.getBufferPercentage() * 10);
        }
        TextView textView = this.mEndTime;
        if (textView != null) {
            textView.setText(stringForTime(duration));
        }
        TextView textView2 = this.mCurrentTime;
        if (textView2 != null) {
            textView2.setText(stringForTime(currentPosition));
        }
        return currentPosition;
    }

    public void updateProgress() {
        if (isShowing() && this.isHost) {
            removeCallbacks(this.mShowProgress);
            post(this.mShowProgress);
        }
    }

    private void initProgress(PlayListItem playListItem) {
        if (playListItem != null) {
            int i = ((int) playListItem.duration) * 1000;
            ProgressBar progressBar = this.mProgress;
            if (progressBar != null) {
                progressBar.setEnabled(false);
                this.mProgress.setProgress(0);
                this.mProgress.setSecondaryProgress(0);
            }
            TextView textView = this.mEndTime;
            if (textView != null) {
                textView.setText(stringForTime(i));
            }
            TextView textView2 = this.mCurrentTime;
            if (textView2 != null) {
                textView2.setText(stringForTime(0));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        ScreenRoomService screenRoomService;
        super.onAttachedToWindow();
        if (!this.isHost && (screenRoomService = this.screenRoomService) != null) {
            screenRoomService.addSRHostStatusListener(this);
        }
        if (isInScrollingContainer()) {
            Log.e("sr", "in scrolling container will cause video controller progress seek bar scroll conflict with viewpager, are you using flexlayout, try override shouldDelayChildPressedState to false ");
        }
    }

    public boolean isInScrollingContainer() {
        for (ViewParent parent = getParent(); parent != null && (parent instanceof ViewGroup); parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ScreenRoomService screenRoomService;
        super.onDetachedFromWindow();
        if (this.isHost || (screenRoomService = this.screenRoomService) == null) {
            return;
        }
        screenRoomService.removeSRHostStatusListener(this);
    }

    @Override // com.narvii.chat.screenroom.SRHostStatusListener
    public void onHostVideoProgress(float f) {
        double d = this.videoDuration;
        if (d > 0.0d) {
            double d2 = f;
            Double.isNaN(d2);
            int i = (int) (d * d2 * 1000.0d);
            this.videoTimeProgress.setText(stringForTime(i) + " / " + stringForTime(((int) this.videoDuration) * 1000));
            this.videoPlayingIcon.setVisibility(0);
            return;
        }
        this.videoTimeProgress.setText((CharSequence) null);
        this.videoPlayingIcon.setVisibility(8);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        OnSizeChangedListener onSizeChangedListener = this.onSizeChangedListener;
        if (onSizeChangedListener != null) {
            onSizeChangedListener.onSizeChanged(i, i2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && action == 1) {
            if (isShowing()) {
                hide();
            } else {
                show();
            }
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        show(3000);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.mPlayer == null) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if (keyCode == 79 || keyCode == 85 || keyCode == 62) {
            if (z) {
                doPauseResume();
                ImageView imageView = this.mPauseButton;
                if (imageView != null) {
                    imageView.requestFocus();
                }
            }
            return true;
        }
        if (keyCode == 126) {
            if (z && !this.mPlayer.isPlaying()) {
                this.mPlayer.start();
                updatePausePlay();
                show(3000);
            }
            return true;
        }
        if (keyCode == 86 || keyCode == 127) {
            if (z && this.mPlayer.isPlaying()) {
                this.mPlayer.pause();
                updatePausePlay();
                show(3000);
            }
            return true;
        }
        if (keyCode == 25 || keyCode == 24 || keyCode == 164 || keyCode == 27) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyCode != 4 && keyCode != 82) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (z) {
            hide();
        }
        return true;
    }

    public void updatePausePlay() {
        if (this.mPauseButton == null) {
            return;
        }
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if (mediaPlayerControl == null) {
            if (this.screenRoomService.isCurrentPlayStarted()) {
                this.mPauseButton.setImageDrawable(null);
                return;
            } else {
                this.mPauseButton.setImageResource(com.narvii.amino.mastes.R.drawable.ic_sr_media_play);
                return;
            }
        }
        if (mediaPlayerControl.isPlaying()) {
            this.mPauseButton.setImageResource(com.narvii.amino.mastes.R.drawable.ic_sr_media_pause);
        } else if (this.screenRoomService.isCurrentPlayStarted() && !this.mPlayer.isTargetPaused()) {
            this.mPauseButton.setImageDrawable(null);
        } else {
            this.mPauseButton.setImageResource(com.narvii.amino.mastes.R.drawable.ic_sr_media_play);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doPauseResume() {
        resetDragFlag();
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if ((mediaPlayerControl == null || (mediaPlayerControl != null && !mediaPlayerControl.isPlaying())) && this.screenRoomService.getCurrentPlayListItem() != null && this.screenRoomService.getCurrentPlayListItem().isLocalMedia() && !PermissionUtils.hasSelfPermission(getContext(), "android.permission.READ_EXTERNAL_STORAGE")) {
            if (getContext() instanceof ChatActivity) {
                ((ChatActivity) getContext()).setAllowFloatingWindow(false);
            }
            NVPermission.Builder builder = null;
            Object nVContext = Utils.getNVContext(getContext());
            if (nVContext instanceof NVFragment) {
                builder = NVPermission.builder((NVActivity) ((NVFragment) nVContext).getActivity());
            } else if (nVContext instanceof NVActivity) {
                builder = NVPermission.builder((Activity) nVContext);
            }
            if (nVContext instanceof IPermissionResultDispatcher) {
                ((IPermissionResultDispatcher) nVContext).registerPermissionResult(202, this);
            }
            if (builder != null) {
                builder.permissionListener(this).permission("android.permission.READ_EXTERNAL_STORAGE").requestCode(202).request();
                return;
            }
            return;
        }
        MediaPlayerControl mediaPlayerControl2 = this.mPlayer;
        if (mediaPlayerControl2 == null) {
            PlayActionListener playActionListener = this.playActionListener;
            if (playActionListener != null) {
                playActionListener.startPlay();
                show();
                return;
            }
            return;
        }
        if (mediaPlayerControl2.isPlaying()) {
            PlayActionListener playActionListener2 = this.playActionListener;
            if (playActionListener2 != null) {
                playActionListener2.pause();
            }
            removeCallbacks(this.mFadeOut);
            this.mPlayer.pause();
        } else {
            PlayActionListener playActionListener3 = this.playActionListener;
            if (playActionListener3 != null) {
                playActionListener3.start();
            }
            this.mPlayer.start();
            show();
        }
        updatePausePlay();
    }

    @Override // android.view.View, com.narvii.chat.screenroom.widgets.VideoController
    public void setEnabled(boolean z) {
        ProgressBar progressBar = this.mProgress;
        if (progressBar != null) {
            progressBar.setEnabled(z);
        }
        View view = this.progressLayout;
        if (view != null) {
            view.setAlpha(z ? 1.0f : 0.6f);
        }
        disableUnsupportedButtons();
        super.setEnabled(z);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MediaController.class.getName();
    }

    @Override // com.narvii.chat.screenroom.VideoPlayListener
    public void onPlayListChanged(PlayList playList, boolean z, boolean z2) {
        if (playList.currentItemStatus == 1) {
            removeCallbacks(this.mFadeOut);
        }
        if (playList.getCurrentPlayItem() != null) {
            this.videoName.setText(playList.getCurrentPlayItem().title);
        } else {
            this.videoName.setText((CharSequence) null);
        }
        ViewUtils.visible(this.mPrevButton, z);
        ViewUtils.visible(this.mNextButton, z2);
        ViewUtils.visible(this.mPauseButton, !playList.itemList().isEmpty());
        updatePausePlay();
        MediaPlayerControl mediaPlayerControl = this.mPlayer;
        if (mediaPlayerControl == null || mediaPlayerControl.isPreparing()) {
            initProgress(playList.getCurrentPlayItem());
        } else {
            setProgress();
        }
        ViewUtils.show(this.progressLayout, this.isHost && !CollectionUtils.isEmpty(playList.itemList()));
    }
}
